          .text
          
stev1:    .word 64
stev2:    .word 0x10
rez:      .space 4

          .align
          .global __start
__start:

          ldr r1, stev1
          ldr r2, stev2
          add r3, r2, r1
          str r3, rez             

__end:    b __end   




