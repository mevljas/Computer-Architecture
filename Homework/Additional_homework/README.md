# optional Homework (for extra points)

Additional task (+10 points on points from lab tests, but only above collected 150 points)
Write a program in assembler for the ARM processor, that will sort numbers in the table TABELA by value, from smallest to largest. Use one of the simple sorting algorithms (bubble sort, selection sort, ...).

## Ogrodje programa ("Program Framework"):
```
.text

TABELA: .hword 1, 5, -1, 8, -130, 1024, 10, 64, -80, 256
VELIKOST_TABELE: .byte 10

.align
.global __start
__start:

@Tu napisi program

__end: b __end
```
