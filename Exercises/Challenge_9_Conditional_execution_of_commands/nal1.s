          .text
stev1:    .space 4
stev2:    .word 0x15
stev3:    .word 0x10

          .global __start

__start:
          adr r0, stev2
          ldr r2, [r0]
          
          adr r0, stev3
          ldr r3, [r0]
          
          
          cmp r2, r3
          movhi r1, r2
          movls r1, r3   
          adr r0, stev1 
          str r1, [r0]
