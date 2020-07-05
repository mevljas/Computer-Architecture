          .text
          
TABELA:   .hword 1,100,255,24,88,31,56,192,155,224
          .align
REZULTAT: .word     
          .global __start

__start:

          ADR R0, TABELA
          MOV R1, #10  @stevec
          MOV R2, #0  @vsota
ZANKA:
          LDRH R3, [R0]
          ADD   R2, R2, R3
          ADD   R0, R0, #2    @naslednji element
          SUBS  R1, R1, #1
          BNE   ZANKA
          ADR R0, REZULTAT
          STR  R2, [R0]             

__end:    b __end   




