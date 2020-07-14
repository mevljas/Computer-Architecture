          .text
STEV1:    .word 128
STEV2:    .byte 128
          .align
          .global __start

__start:  
          adr r0,STEV1
          ldr r1,[r0]
          adr r0,STEV2
          ldrsb r2,[r0]
          add r1,r1,r2
          adr r0,STEV1
          str r1,[r0]
          
          
          
       
    
          
    
          
__end:    b __end   




