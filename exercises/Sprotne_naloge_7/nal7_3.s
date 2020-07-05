           .text
STEV1:    .hword  -10
STEV2:    .byte   0x64
STEV3:    .byte   -2
          .align
          .global __start

__start:
          adr R0,STEV1
          ldrsh R1,[R0]
          adr R0,STEV2
          ldrsb R2,[R0]
          adr r0, STEV3
          ldrsb r3,[r0]
          
          adds r4,r2,r3
          subs r1,r4,r1
          
          adr r0,STEV1
          str r1,[r0]
          
          
       
    
          
    
          
__end:    b __end   