          .text
   
STEV1:    .word 0x1


          .global __start
__start:
          adr r0,STEV1   @Nalozimo naslov STEV1 v regiser R0
          ldr r1,[r0]    @Nalozimo vrednost(kamor kaze r0) v r1
          ldr r2,[r0]
          add r2,r2,r1   @povecamo za enkrat
          add r2,r2,r1
          add r2,r2,r1
          add r2,r2,r1
          add r2,r2,r1

__end:    b __end   
