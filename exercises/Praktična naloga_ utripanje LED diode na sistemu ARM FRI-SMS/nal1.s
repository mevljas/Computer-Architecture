.equ PMC_BASE,  0xFFFFFC00  /* (PMC) Base Address */
.equ CKGR_MOR,	0x20        /* (CKGR) Main Oscillator Register */
.equ CKGR_PLLAR,0x28        /* (CKGR) PLL A Register */
.equ PMC_MCKR,  0x30        /* (PMC) Master Clock Register */
.equ PMC_SR,	  0x68        /* (PMC) Status Register */

.text
.code 32

.global _error
_error:
  b _error

.global	_start
_start:

/* select system mode 
  CPSR[4:0]	Mode
  --------------
   10000	  User
   10001	  FIQ
   10010	  IRQ
   10011	  SVC
   10111	  Abort
   11011	  Undef
   11111	  System   
*/

/* izberi irq na�in */
  mrs r0, cpsr
  bic r0, r0, #0x1F   /* pobri�i zastavice na�ina delovanja */  
  orr r0, r0, #0x12   /* nastavi irq na�in */
  msr cpsr, r0     
  
/* nastavi irq kazalec na sklad */
  ldr sp,_Lirqstack_end


  mrs r0, cpsr
  bic r0, r0, #0x1F   /* clear mode flags */  
  orr r0, r0, #0xDF   /* set supervisor mode + DISABLE IRQ, FIQ*/
  msr cpsr, r0     
  
  /* init stack */
  ldr sp,_Lstack_end
                                   
  /* setup system clocks */
  ldr r1, =PMC_BASE

  ldr r0, = 0x0F01
  str r0, [r1,#CKGR_MOR]

osc_lp:
  ldr r0, [r1,#PMC_SR]
  tst r0, #0x01
  beq osc_lp
  
  mov r0, #0x01
  str r0, [r1,#PMC_MCKR]

  ldr r0, =0x2000bf00 | ( 124 << 16) | 12  /* 18,432 MHz * 125 / 12 = 192 MHz*/
  str r0, [r1,#CKGR_PLLAR]

pll_lp:
  ldr r0, [r1,#PMC_SR]
  tst r0, #0x02
  beq pll_lp

  /* MCK = PCK/4 */
  ldr r0, =0x0202
  str r0, [r1,#PMC_MCKR]

mck_lp:
  ldr r0, [r1,#PMC_SR]
  tst r0, #0x08
  beq mck_lp

  /* Enable caches */
  mrc p15, 0, r0, c1, c0, 0 
  orr r0, r0, #(0x1 <<12) 
  orr r0, r0, #(0x1 <<2)
  mcr p15, 0, r0, c1, c0, 0 

  .equ PMC_BASE, 0xFFFFFC00	/* Power Management Controller Base Address */
  .equ PMC_PCER, 0x10  		/* Peripheral Clock Enable Register */

  .equ PIOC_BASE, 0xFFFFF800
  .equ PIO_PER, 0x00
  .equ PIO_OER, 0x10
  .equ PIO_SODR, 0x30
  .equ PIO_CODR, 0x34
  
  .equ TC0_BASE, 0xFFFA0000	/* TC0 Channel Base Address */
  .equ TC_CCR,   0x00  		  /* TC0 Channel Control Register */
  .equ TC_CMR,   0x04	  	  /* TC0 Channel Mode Register (Capture Mode / Waveform Mode )*/
  .equ TC_CV,    0x10		    /* TC0 Counter Value */
  .equ TC_RA,    0x14		/* TC0 Register A */
  .equ TC_RB,    0x18		/* TC0 Register B */
  .equ TC_RC,    0x1C		/* TC0 Register C */
  .equ TC_SR,    0x20		/* TC0 Status Register */
  .equ TC_IER,   0x24		/* TC0 Interrupt Enable Register*/
  .equ TC_IDR,   0x28		/* TC0 Interrupt Disable Register */
  .equ TC_IMR,  0x2C		/* TC0 Interrupt Mask Register */

  .equ AIC_BASE, 	0xFFFFF000 	/* Za�etni (bazni) naslov AIC */
  .equ AIC_SMR17, 	0x044 		/* odmiki posameznih registrov v AIC */
  .equ AIC_SVR17, 	0x0C4
  .equ AIC_IECR, 	0x120
  .equ AIC_EOICR, 	0x130

  .equ DELAY_MS, 500

.global _main
/* main program */
_main:

       bl INIT_IO
       bl INIT_TC0_PSP
       bl Init_AIC
       bl Enable_IRQ
      
/* user code here */


        adr r4, STEVEC
        mov r1, #0
        mov r0, #500
loop1:  ldr r2,[r4]      
loop: add r1,r1,#1
      subs  r2,r2,#1
      bne loop
      subs  r0,r0,#1
      bne loop1      





/* end user code */

_wait_for_ever:
  b _wait_for_ever


Enable_IRQ :
  stmfd r13!, {r0, r14}
  mrs r0, cpsr
  bic r0, r0, #0x80   /* clear I mask */  
  msr cpsr, r0  
  ldmfd r13!, {r0, pc}   
 
Init_AIC :
  stmfd r13!, {r0-r2, r14}
  ldr r0, =AIC_BASE
  mov r1, #1 << 17
  mov r2, #4         /* high level sensitive, PRIOR=4 */
  str r2, [r0, #AIC_SMR17]
  ldr r2, =IRQ17_Hand
  str r2, [r0, #AIC_SVR17]    /* set interrupt vector for IS17 */
  str r1, [r0, #AIC_IECR]    /* enable interrupt for IS17 */
  str r0, [r0, #AIC_EOICR]
  ldmfd r13!, {r0-r2, pc}
  
INIT_IO:
  stmfd r13!, {r0, r2, r14}
  ldr r2, =PIOC_BASE
  mov r0, #1 << 1
  str r0, [r2, #PIO_PER]
  str r0, [r2, #PIO_OER]
  ldmfd r13!, {r0, r2, pc} 

INIT_TC0_PSP:
  stmfd r13!, {r0, r2, lr}
  ldr r2, =PMC_BASE    /*Enable PMC for TC0 */
  mov r0, #(1 << 17)
  str r0, [r2,#PMC_PCER]
 
  /*Initialize TC0 MCK/128, RC=375 (1ms) */
  ldr r2, =TC0_BASE
  mov r0, #0b110 << 13 /*WAVE=1, WAVSEL= 10*/
  add r0, r0, #0b011            /* MCK/128 */
  str r0, [r2, #TC_CMR]
  ldr r0, =375                  /* 1 ms at 48 Mhz */
  str r0, [r2, #TC_RC]
  mov r0, #0b0101     /*TC_CLKEN,TC_SWTRG*/
  str r0, [r2, #TC_CCR]
  mov r0, #0x10                 /* CPSR triggers interrupt */
  str r0, [r2, #TC_IER]  
  ldmfd r13!, {r0, r2, pc}

IRQ17_Hand:
  sub r14,r14,#4
  stmfd r13!, {r0-r2, r14} /* na sklad shrani povratni naslov.
                            
  /* servisiraj zahtevo ... */
  ldr r1, =TC0_BASE
  ldr r0, [r1, #TC_SR]
  tst r0, #0b10000
  beq IRQ17_Exit

  ldr r1, LED
  cmp r1, #0
  ldr r2, =PIOC_BASE
  mov r0, #1 << 1
  strne r0, [r2, #PIO_CODR]
  streq r0, [r2, #PIO_SODR]

IRQ17_Exit:

  ldr r0, =AIC_BASE
  str r0, [r0, #AIC_EOICR] /* slepo pisi v AIC_EOICR: */

  ldmfd r13!, {r0-r2, pc}^ /* vrni se na prekinjeni program,
                            pred tem obnovi CPSR iz SPSR_irq*/


/* constants */

  .align
_Lstack_end:
  .long __STACK_END__- 2*13*4  @ space for 26 registers on IRQ stack
_Lirqstack_end:
  .long __STACK_END__
 
LED:   .word     1
STEVEC: .word 48000 
.end











