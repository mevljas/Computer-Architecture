          .text
STEV1:    .word 0x12345678
STEV2:    .space  4          @Rezerviramo 4 bajte
          .align
          .global __start
__start:
          ADR R0, STEV1         @V R0 nalozimo lokacijo STEV1
          ADR R1, STEV2
      
          LDRB R2, [R0]         @V R2 nalozimo prvih 8 bitov (od kjer kaze lokavija v R0)
          STRB R2, [R1, #3]     @Prvih 8 bitov shranimo na lokacijo v R1 + 3         
          
          LDRB R2, [R0, #1]     @ naslednjih 8 bitov
          STRB R2, [R1, #2]        
          
          LDRB R2, [R0, #2]
          STRB R2, [R1, #1]
          
          LDRB R2, [R0, #3]
          STRB R2, [R1]
      
__end:    b __end