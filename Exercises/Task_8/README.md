# Task 8
1. Write the sequence of instructions for the ARM processor, which calculates the expression STEV1 = STEV2 + STEV3, where STEV1, STEV2, and STEV3 are 32-bit unsigned variables with initial values ​​(define them with pseudo-instructions): STEV2 = 7fffffff (hex), STEV3 = 80000001 (hex). Only reserve space for variable STEV1. Explain the state of the flags Z, C, V, and N after the execution of addition instruction. What is the final value of STEV1? Why (explain your result)?

2. Write the sequence of commands for the ARM processor, which calculates the expression STEV2 = STEV2 + STEV3, where STEV2 and STEV3 are 32-bit unsigned variables with initial values ​​(specify them with pseudocouples): STEV2 = 0, STEV3 = 0xffffffff. Explain the state of the flags Z, C, V, and N after the execution of addition instruction. What is the final value of STEV2? Why (explain your result)?

3. Which of the following conditional branches will be performed if the status of the flags is N = 1, C = 0, Z = 0 and V = 0?
  a) bcc
  b) bne
  c) bge
  d) bls
  e) bmi
  f) bcs
  g) blt

4. Which of the following short programs endlessly run in a loop?  
  a)
  ```
loop: movs r1, # 127
bne loop
```
  b)
  ```
loop: movs r1, # 127
beq loop
```
  c)
  ```
loop: movs r1, # 0
beq loop
```
  d)
  ```
loop: mov r1, # 1
cmp r1, # 25
bmi loop
```
