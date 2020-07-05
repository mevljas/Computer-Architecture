          .text
          
TABELA:   .space  8
          .align
          .global __start
__start:

          ADR R0, TABELA
          MOV R1, #8  @stevec
          MOV R2, #0xFF @vrednost
ZANKA:
          STRB  R2,[R0] @Vpis 0xFF
          ADD   R0, R0, #1    @naslednji element
          SUBS  R1, R1, #1
          BNE   ZANKA
                       

__end:    b __end   




