          .text
TABELA:  .SPACE   6           @rezervacija 6 bajtov

          .align
          .global __start
__start:
          ADR R0,TABELA        @v register r0 nalozi lokacijo tabele
          MOV R1,#1            @v register r1 nalozi 1
          
          STRB  R1,[R0]        @na lokacijo [r0](TABELA) shrani vrednost r1
          ADD R1,R1,#1         @stevcu r1 doda 1
          STRB  R1,[R0,#1]     @na lokacijo [r0] + 1 shrani vrednost r1
          ADD R1,R1,#1         @stevcu r1 doda 1
          STRB  R1,[R0,#2]     @na lokacijo [r0] + 2 shrani vrednost r1
          ADD R1,R1,#1         @stevcu r1 doda 1
          STRB  R1,[R0,#3]     @na lokacijo [r0] + 3 shrani vrednost r1
          ADD R1,R1,#1         @stevcu r1 doda 1
          STRB  R1,[R0,#4]     @na lokacijo [r0] + 4 shrani vrednost r1
          ADD R1,R1,#1         @stevcu r1 doda 1
          STRB  R1,[R0,#5]     @na lokacijo [r0] + 5 shrani vrednost r1
          
                               @zamenjaj 1. in 6.
          LDRB  R1,[R0]        @v register r1 nalozi vredost lokacije [r0]
          LDRB  R2,[R0,#5]     @v register r2 nalozi vredost lokacije [r0] + 5
          STRB  R2,[R0]        @na lokacijo r0 shrani vsebino r2
          STRB  R1,[R0,#5]     @na lokacijo r0 + 5 shrani vsebino r1
          
                               @zamenjaj 2. in 5.
          LDRB  R1,[R0,#1]     @v register r1 nalozi vredost lokacije [r0] + 1  
          LDRB  R2,[R0,#4]     @v register r2 nalozi vredost lokacije [r0] + 4
          STRB  R2,[R0,#1]     @na lokacijo r0 + 1 shrani vsebino r2
          STRB  R1,[R0,#4]     @na lokacijo r0 + 4 shrani vsebino r1
          
                               @zamenjaj 3. in 4.
          LDRB  R1,[R0,#2]     @v register r1 nalozi vredost lokacije [r0] + 2  
          LDRB  R2,[R0,#3]     @v register r2 nalozi vredost lokacije [r0] + 3
          STRB  R2,[R0,#2]     @na lokacijo r0 + 2 shrani vsebino r2
          STRB  R1,[R0,#3]     @na lokacijo r0 + 3 shrani vsebino r1
__end:    b __end