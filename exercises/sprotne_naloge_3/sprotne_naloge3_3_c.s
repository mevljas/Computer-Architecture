          .text
   
TABELA:  .SPACE   6

          .align
          .global __start
__start:
          ADR R0,TABELA
          MOV R1,#1
          
          STRB  R1,[R0]
          ADD R1,R1,#1
          STRB  R1,[R0,#1]     @pisi 1. bajt
          ADD R1,R1,#1
          STRB  R1,[R0,#2]     @pisi 2. bajt
          ADD R1,R1,#1
          STRB  R1,[R0,#3]     @pisi 3. bajt
          ADD R1,R1,#1
          STRB  R1,[R0,#4]     @pisi 4. bajt
          ADD R1,R1,#1
          STRB  R1,[R0,#5]     @pisi 5. bajt
          
          
          LDRB  R1,[R0]       @zamenjaj 1. in 6.
          LDRB  R2,[R0,#5]
          STRB  R2,[R0]
          STRB  R1,[R0,#5]
          
          LDRB  R1,[R0,#1]       @zamenjaj 2. in 5.
          LDRB  R2,[R0,#4]
          STRB  R2,[R0,#1]
          STRB  R1,[R0,#4]
          
          LDRB  R1,[R0,#2]       @zamenjaj 3. in 4.
          LDRB  R2,[R0,#3]
          STRB  R2,[R0,#2]
          STRB  R1,[R0,#3]
          

__end:    b __end   
