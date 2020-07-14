# Additional task 5
## 1) Exercise

In the main memory there are two 32-bits variables defined as :
```
            .align
STEV1: .word 0xFF112200
STEV2: .byte 0xAA
            .align
REZ:     .space 4
```
Copy the byte stored in the variable STEV2 the two lower bytes of the 32-bit variable STEV1, with the use of indirect addressing mode only. Finally, copy the value of the 32bit variable STEV1 into the location of the variable REZ.



## 2) Exercise

In the main memory there are two 32-bit variables defined as :
```
            .align
STEV1: .word 0x66774455
STEV2: .word 0x22330011
```
a) swap the lower 16 bits of the variable STEV1 with the higher 16 bits of the variable STEV2.  
b) swap the higher 16 bits of the variable STEV1 with the lower 16 bits of the variable STEV2.

You have to use the indirect addressing mode only.
