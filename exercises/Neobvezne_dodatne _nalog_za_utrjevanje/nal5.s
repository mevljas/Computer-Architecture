          .text
A:        .byte 10
B:        .byte 5          

          .align   
          .global __start

__start:
          ADR R0, A
          LDRB R1, [R0]
          ADR R0, B
          LDRB R2, [R0]
ZANKA:    CMP R1, R2
          SUBHI R1, R1, R2
          SUBLO R2, R2, R1
          BNE ZANKA           

         
        

__end:    b __end   




