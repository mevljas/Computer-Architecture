          .text
STEV1:    .byte   10
STEV2:    .byte   5
          .align
REZ:      .space   4
          .global __start

__start:
          adr R0,STEV1
          ldrb R1,[R0]
          ldrb R2,[R0,#1]
          add R3,R2,R1
          adr R0,REZ
          strb R3,[R0]  
    
          
    
          
__end:    b __end   




