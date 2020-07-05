          .text
stev1:    .space 4
stev2:    .word 0x15
stev3:    .word 0x10

          .global __start

__start:
          adr r0, stev2
          ldr r2, [r0]
          
          adr r0, stev3
          ldr r3, [r0]
          
          mov r1, r2
          cmp r2, r3
          bhi dalje
          mov r1, r3
dalje:    
          adr r0, stev1 
          str r1, [r0]
