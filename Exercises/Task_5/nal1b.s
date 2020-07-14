          .text
STEV1:    .hword   10
STEV2:    .hword   5
REZ:      .space   4
          .global __start

__start:
          adr R0,STEV1
          ldrh R1,[R0]
          ldrh R2,[R0,#2]
          add R3,R2,R1
          adr R0,REZ
          strh R3,[R0]  
    
          
    
          
__end:    b __end   




