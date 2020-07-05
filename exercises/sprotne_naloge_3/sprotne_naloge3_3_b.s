          .text
   
STEV1:    .byte 0x12
STEV2:    .byte  

          .align
          .global __start
__start:
          adr r0,STEV1  @nalozimo naslov od STEV1 v register
          ldrb r1,[r0]  @nalozimo vsebino STEV1 v register (r0 kaze na STEV1)
          adr r0,STEV2  @nalozimo naslov od STEV2 v register
          strb r1,[r0]  @shranimo vsebino r1 kamor kaze r0(STEV2)
          adr r0,STEV2  @nalozimo naslov od STEV2 v register          (TEST èe dela)
          ldrb r2,[r0]  @nalozimo STEV2 v register (r0 kaze na STEV2) (TEST èe dela)
            

__end:    b __end   




