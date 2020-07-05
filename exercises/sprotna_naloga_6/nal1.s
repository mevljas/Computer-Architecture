          .text
STEV1:    .byte 15
STEV2:    .byte 130
          .align
          .global __start

__start:  
          adr r0,STEV1
          ldrb r1,[r0]
          adr r0,STEV2
          ldrb r2,[r0]
          add r1,r1,r2
          adr r0,STEV1
          strb r1,[r0]
          
          
          
       
    
          
    
          
__end:    b __end   




