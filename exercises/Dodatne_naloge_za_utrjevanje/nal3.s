          .text
TABLE:    .hword  1,2,3,4,5
          .align
SUM:      .word
          .global __start
__start:
          adr r0,TABLE    @v r0 prenesemo lokacijo tabele
          ldrh r1,[r0]    @v r1 prenesemo vrednost 1. indexa
          add r2,r2,r1    @r2 pristejemo vrednost r1
          ldrh r1,[r0,#2]     
          add r2,r2,r1
          ldrh r1,[r0,#4]     
          add r2,r2,r1
          ldrh r1,[r0,#6]     
          add r2,r2,r1
          ldrh r1,[r0,#8]     
          add r2,r2,r1
          
          str r2, SUM
         


__end:    b __end   
