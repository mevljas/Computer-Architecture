          .text
          
TABELA: .byte 1,100,255,24,88,31,56,192,155,224, 0, 101, 199, 47
          .align   
          .global __start

__start:

          ADR R0, TABELA  
          MOV R2, #14  @zanka
ZANKA:
          LDRSB R3, [R0]
          CMP R3,#0
          BLE DALJE
          MOV R1, R3
          SUB R3, R3, R1
          SUB R3, R3, R1
          STRB R3, [R0]
DALJE:    ADD   R0, R0, #1    @naslednji element
          SUBS  R2, R2, #1
          BNE   ZANKA
        

__end:    b __end   




