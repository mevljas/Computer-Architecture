          .text
STEV1:    .space 4
STEV2:    .word 0x7fffffff
STEV3:    .word 0x80000001

          .global __start

__start:
          adr r0, STEV2
          ldr r2, [r0]   @ R2 <-- M[STEV2]
          
          adr r0, STEV3
          ldr r3, [r0]   @ R3 <-- M[STEV3]
          adds r1, r2, r3   @ C=Z=1, n=v=0
          adr r0, STEV1
          str r1, [r0]   @R1 -->[STEV1]

                                
__end:    b __end 

          




