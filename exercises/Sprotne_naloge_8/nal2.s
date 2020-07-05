          .text
STEV2:    .word 0
STEV3:    .word 0xffffffff

          .global __start

__start:
          adr r0, STEV2
          ldr r1, [r0]
          adr r0, STEV3
          ldr r2, [r0]
          adds r1, r2, r3  @ N=1, V=C=Z=0
          adr r0, STEV2
          str r1, [r0]

                                
__end:    b __end 

          




