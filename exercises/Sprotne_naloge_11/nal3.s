          .text
          
TABELA:   .byte 192,155,224,48,0,128,99,147,177,100
          .align   
          .global __start

__start:

          ADR R0, TABELA
          MOV R1, #0   @steve
          MOV R2, #10  @zanka
ZANKA:
          LDRSB R3, [R0]
          CMP R3,#100
          ADDGT R1,R1,#1
          ADD   R0, R0, #1    @naslednji element
          SUBS  R2, R2, #1
          BNE   ZANKA
        

__end:    b __end   




