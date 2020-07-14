# Homework
- Write a program in assembler for the ARM processor, that will copy the content of string NIZ1 from the letter 'n' (inclusive) to string NIZ2. While copying, it should change lowercase to uppercase and vice versa. Write general program – therefore letter 'n' should be contained in 8-bit variable that is read by a program and its first occurence found. After that, copy operation should be carried out in a loop until the end of the given string.


## Ogrodje programa ("Program Framework"):
```
.text

NIZ1: .asciz "Danes je Lep Dan"
NIZ2: .space 17

.align
.global __start

__start:

@Tu napisi program (Your code here)

__end:    b __end
```


- Write a program in assembler for the ARM processor, that will find the greatest number in the table with signed numbers (TABELA) and put it into variable MAX. At the same time, put the index (the position in table) of this number into variable MAX_INDEKS (for example, number 1 in the table below has index of 0). The whole operation should be carried out in a loop.


## Ogrodje programa ("Program Framework"):
```

.text

TABELA:   .hword              1, 5, -1, 8, -130, 1024, 10, 64, -80, 256
VELIKOST_TABELE:         .byte 10

 

.align
.global __start

__start:

@Tu napisi program (Your code here)

__end:    b __end
```
