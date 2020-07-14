          .text
          .align
STEV1:	  .word	0x66774455
STEV2:	  .word	0x22330011
          .global __start

__start:  
          @a
          adr r0,STEV1
          adr r1,STEV2
          ldrh r2,[r1,#2]
          strh r2,[r0]
          
          @b
          adr r0,STEV1
          adr r1,STEV2
          ldrh r2,[r1]
          strh r2,[r0,#2]
          
          
          
       
    
          
    
          
__end:    b __end   




