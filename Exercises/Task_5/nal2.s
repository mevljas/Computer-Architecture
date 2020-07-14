          .text
STEV1:    .word   50
STEV2:    .word   100
STEV3:    .word   0x2f
          .global __start

__start:
          adr R0,STEV1
          ldr R1,[R0]
          adr R0,STEV2
          ldr R2,[R0]
          adr r0, STEV3
          ldr r3,[r0]
          
          add r4,r2,r3
          sub r1,r4,r1
          
          adr r0,STEV1
          str r1,[r0]
          
          
       
    
          
    
          
__end:    b __end   




