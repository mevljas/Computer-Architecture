          .text
   
STEV1:    .word 0x12345678
STEV2:    .word  

          .global __start
__start:
          adr r0,STEV1  @nalozimo naslov od STEV1 v register
          ldr r1,[r0]   @nalozimo vsebino STEV1 v register (r0 kaze na STEV1)
          adr r0,STEV2  @nalozimo naslov od STEV2 v register
          str r1,[r0]   @shranimo vsebino r1 na lokacijo, ki jo kaze r0(STEV2)
          adr r0,STEV2  @nalozimo naslov od STEV2 v register    (TEST ce dela)
          ldr r2,[r0]   @nalozimo STEV2 v register (r0 kaze na STEV2) (TEST ce dela)

__end:    b __end   




