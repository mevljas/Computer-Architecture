          .text

TABLE:    .byte  3, 5, 1, 2

BUF:      .word  0x01020304

 A:       .byte  0x15

          .align
          .global __start
__start:
          mov  r0,#128        

__end:    b __end   




