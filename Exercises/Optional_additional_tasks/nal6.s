          .text
TABLE:    .space 60        

          .align   
          .global __start

__start:
          MOV R0, #60
          MOV R1, #-2
          MOV R2, #1
          
ZANKA:                
          STR R2, [R0]
          SUB R2, R2, #1
          
          CMP R1, R2
          BNE PRESKOCI
          MOV R2, #1
PRESKOCI:        
          SUBS  R0, R0, #4
          BNE ZANKA
         

         
        

__end:    b __end   




