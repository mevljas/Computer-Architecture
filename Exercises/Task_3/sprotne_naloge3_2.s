          .text
   
STEV1:    .word 0x12345678 
STEV2:    .byte 128
          .align     @poravnava
STEV3:    .hword 0xF123 

          .align      @poravnava
          .global __start
__start:

          adr r0,STEV1  @naslov v r0
          ldr r1,[r0]   @vrednost 
          
          adr r0,STEV2  @naslov v r0
          ldrb r1,[r0]  @vrednost      
          
          adr r0,STEV3  @naslov v r0
          ldrh r1,[r0]  @vrednost           

__end:    b __end   




