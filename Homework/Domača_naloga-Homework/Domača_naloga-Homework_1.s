          .text
NIZ1:     .asciz "Danes je Lep Dan"
NIZ2:     .space 17
STEVEC:   .byte 0     @index
          .align 
          .global __start
__start:
          adr   r0, [NIZ1]        @naslov niza1
          adr   r1, [NIZ2]        @naslov niza2
          ldrb  r2, STEVEC        @nalozi stevec v register
ZANKA:                            @zanka, ki gre skozi niz
          ldrb  r3,[r0, r2]       @nalozi crko v register s mesta NIZ1 + odmik
          cmp   r3, #65           @primerja s crko A  (ali je znak sploh crka)
          blo   NI_CRKA           @ce znak ni crka, ga samo shranimo  
          cmp   r3, #97           @primerja crko s a 
          addlo r3, r3, #32       @ce je crka manjsa od a, pristeje 32 (velika crka v majhno crko)
          subhs r3, r3, #32       @ce je crka vecja ali enaka a, odsteje 32 (majhna crka v veliko crko)
NI_CRKA:                          @ce znak ni crka, skoci sm
          strb  r3,[r1, r2]       @spremenjeno crko shrani na mestno NIZ2 + odmik
          add   r2, r2, #1        @increment
          cmp   r3, #00           @preveri, ce je niza konec  
          bne     ZANKA           @ce niza ni konec, gre v zanko
__end:    b __end                 @konec