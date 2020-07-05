          .text
STEV1:    .word   0x12345678
STEV2:    .byte   128
          .align
STEV3:    .hword   0xF123


          .align
          .global __start

__start:
          adr R0,STEV1
          ldr R1,[R0]
          
          adr r0, STEV2
          ldrb r2,[r0]
          ldrsb r3,[r0]    @predznaceno
          
          adr r0, STEV3
          ldrh r4,[r0]
          ldrsh r5,[r0]     @bredznaceno
          
 
    
          
    
          
__end:    b __end   




