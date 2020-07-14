          .text
          .align
STEV1:	  .word	0xFF112200
STEV2:	  .byte	0xAA
          .align
REZ:      .space	4

          .global __start

__start:
          adr r0,STEV1
          adr r1,STEV2
          ldrb r3,[r1]
          strb r3,[r0]
          strb r3,[r0,#1]
          adr r1,REZ
          ldr r2,[r0]
          str r2,[r1]
          
          
       
    
          
    
          
__end:    b __end   




