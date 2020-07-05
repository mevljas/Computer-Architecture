          .text
   
TABELA:   .space 16      @rezreviramo 16 bajtov

          .global __start
__start:
          adr r0,TABELA  @nalozimo naslov tabele
          str r0,[r0]    @shranimo naslov tabele na naslov tabele
          add r0,r0,#4   @povecamo naslov za 4
          str r0,[r0]
          add r0,r0,#4
          str r0,[r0]
          add r0,r0,#4
          str r0,[r0]
         


__end:    b __end   
