          .text
stev1:    .space 4
stev2:    .word 105
stev3:    .word 45

          .global __start

__start:
          adr r0, stev2
          ldr r1, [r0]
                
          adr r0, stev3
          ldr r2, [r0]
          
zanka:    cmp r1, r2
          blo l1
          beq l2
          sub r1, r1, r2
          b   zanka
l1:       sub r2,r2,r1
          b   zanka
l2:       @najvecji skupni delitelj je v r1 in v r2  