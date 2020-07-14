1. Write the sequence of instructions for the ARM processor, which calculates the expression STEV1 = MAX (STEV2, STEV3). All variables are 32-bit and unsigned. Test your program with different values of STEV2 and STEV3. Use a conditional branch. The algorithm is determined by the following pseudo-code:
```
STEV1 = STEV2
IF STEV2> STEV3 THEN GOTO DALJE
STEV1 = STEV3
DALJE: ...
```

2. Modify the solution from the previous assignment to calculate the expression STEV1 = MIN (STEV2, STEV3).

3. Modify the solutions from the both previous assignments to work with signed operands. Test the program with values 1 and -1.

4. Write a program to find the largest common divisor of two values i nregisters using the Euclidean algorithm. Use conditional branches. The algorithm is determined by the following pseudo-code:
```
ZANKA: IF r1 <r2 THEN GOTO L1
            IF r1 = r2 THEN GOTO L2
            r1 = r1-r2
            GOTO ZANKA
L1:        r2 = r2-r1
            GOTO ZANKA
L2:        ... @ the largest common divisor is in r1 and r2
```
