          .text
          
TABELA:   .byte 1,100,255,24,88,31,56,192,155,224
          .align
REZULTAT:  .hword     
          .global __start

__start:

          ADR R0, TABELA
          MOV R1, #10  @stevec
          MOV R2, #0  @vsota
ZANKA:
          LDRB R3, [R0]
          ADD   R2, R2, R3
          ADD   R0, R0, #1    @naslednji element
          SUBS  R1, R1, #1
          BNE   ZANKA
          ADR R0, REZULTAT
          STRB  R2, [R0]             

__end:    b __end   




