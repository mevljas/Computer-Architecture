          .text
   
STEV1:    .word 0x12345678
STEV2:    .word 0x11111111

          .global __start
__start:
          adr r0,STEV1   @Nalozimo naslov STEV1 v regiser R0
          ldr r1,[r0]    @Nalozimo vrednost(kamor kaze r0) v r1
          adr r0,STEV2   @Nalozimo naslov STEV2 v regiser R0
          ldr r2,[r0]    @Nalozimo vrednost(kamor kaze r0) v r2
          str r1,[r0]    @shranimo vsebino r1 kamor kaze r0
          adr r0,STEV1   @Nalozimo naslov STEV1 v regiser R0
          str r2,[r0]    @shranimo vsebino r1 kamor kaze r0

__end:    b __end   
