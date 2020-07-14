# Optinal additional task
1. The following table is given, containing 14 8-bit long values:

    TABLE: .byte 1,100,255,24,88,31,56,192,155,224, 0, 101, 199, 47  

    a) Write a program in ARM assembly in which, inside a loop, all positive elements of the table are set to -1.  
    b) Write a program in ARM assembly in which, inside a loop, all positive elements of the table are negated (i.e. 10 -> -10).  
    c) Write a program in ARM assembly in which, inside a loop, all elements that are contained in the interval [-48,48[ are set to 0..  


2. Implement the following IF-THEN expression using conditional branches:  
    a)  IF A<10 THEN B=B-1  
    b)  IF A=10 THEN B=B+1  
    c)  IF A>10 THEN B=B+2  

    A and B are 16-bits signed variables.  


3. Using conditional branches, implement the following code in ARM assembly:  
```
  IF A=10 THEN
      B=B+1
  ELSE
      B=B+2
```
  A and B are 16-bits signed variables..

 
4. Solve the 2nd and 3rd problem with the aid of conditional instruction execution.


5. Using conditional instruction execution write a program for finding the great common divisor (GCD) of two unsigned numbers according to the Euclide algorithm:
```
LOOP: @ compare r1 and r2
    IF r1 > r2 THEN
  R1=R1-R2
ELSE
      IF r1 < r2 THEN
          R2=R2-R1

    IF r1 != r2 THEN
      GOTO LOOP
```

6. Reserve the memory space for a table containing 15 32-bits elements. Within a program loop set sequentially the elements to the values 1, 0 and -1 respectively (eg. the first element of the table is set to 1, the second to 0, the third to -1, the fourth to 1, etc.). Write the program in the way so that by writting in a register, before entering the loop, the value 1, at each loop cycle, this value would be decreased by one. When the value -1 is reached, the same register should be reset to the value 1, and so on...
