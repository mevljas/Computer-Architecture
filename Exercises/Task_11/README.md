# Task 11
1. Reserve the memory space for a table of eight 8-bit elements. Then in the program loop, set all the elements to the value of FF(16).

Tip: Use indirect addressing without offset. Point the base register to the beginning of the table and increase it in the loop. At every repetition of the loop, write FF(16) into the current element.


2. A table is given containing 10 unsigned 8-bit values:
TABLE: .byte 1,100,255,24,88,31,56,192,155,224

Write a program that sums up all of the table elements in a loop and writes the result to the 16-bit variable RESULT.

Solve the task also for the case if the numbers in the table are 16-bit and unsigned and the result is 32-bit.


3. The following table is given:
TABLE: .byte 192,155,224,48,0,128,99,147,177,100

Write a program that counts all numbers in the table that are greater than 100 signed. The result should be at the end of the program execution in the R1 register.


4. A table is given with 14 16-bit values:

TABELA: .hword 1,100,-255,24,-88,31,56,192,155,-224,0,101,-199,47

Write a program with a loop that sets all table elements that are greater than or equal to -100 and less than 100 to the value of 0.
