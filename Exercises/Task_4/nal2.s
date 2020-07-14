          .text
   
TABELA:   .SPACE   5  @rezeviranih 5 bajtov

          .align
          .global __start
__start:
          ADR R0,TABELA   @nalozimo lokacijo TABELA v r0
          MOV R1,#0xFF    @Nalozimo stevilo FF v r1
          
          STRB  R1,[R0]        @shranimo kar vsebuje r1 v lokacijo ki je napisna v r0
          STRB  R1,[R0,#1]     @shranimo kar vsebuje r1 v lokacijo ki je napisna v r0 + 1 odmik
          STRB  R1,[R0,#2]     @shranimo kar vsebuje r1 v lokacijo ki je napisna v r0 + 2 odmik
          STRB  R1,[R0,#3]     @shranimo kar vsebuje r1 v lokacijo ki je napisna v r0 + 3 odmik
          STRB  R1,[R0,#4]     @shranimo kar vsebuje r1 v lokacijo ki je napisna v r0 + 4 odmik

__end:    b __end   