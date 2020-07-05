          .text
STEV1:    .word   10
STEV2:    .word   5
REZ:      .space   4
          .global __start

__start:
          adr R0,STEV1
          ldr R1,[R0]
          ldr R2,[R0,#4]
          @add R3,R2,R1
          sub R3,R2,R1
          adr R0,REZ
          str R3,[R0]  
    
          
    
          
__end:    b __end   




