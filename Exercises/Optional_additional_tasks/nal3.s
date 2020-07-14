          .text
A:        .hword 10
B:        .hword 5          

          .align   
          .global __start

__start:
          ADR R0, A
          LDRSH R1, [R0]
          MOV R2, #10
          ADR R0, B
          LDRSH R3, [R0]
          CMP R1, R2
          BNE PRESKOCI
          ADD R3, R3, #1
          B PRESKOCI2
PRESKOCI:
          ADD R3, R3, #2
PRESKOCI2:
          STRH R3, [R0]
         
        

__end:    b __end   




