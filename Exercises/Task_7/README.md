# Task 7
1. Write a sequence of commands in the compiler for the ARM processor that first loads the value 0 into the registry - use instant addressing. What is the state of the Z and N flags after this command? Why?
Then the program should subtract the value 1 from the register. What is the value of the register if it represents an unpredicted / predicted number? What is the state of the Z, C, V and N flags after this command? Why?
Then the program should add the value 2 to the register. What is the state of the Z, C, V and N flags according to this command? Why?
What is the final value of the register if it represents an unsigned / unsigned number?

2. Write a sequence of commands in the compiler for the ARM processor, which first loads the value 1 into the register using the ALE command. What values ​​do the Z and N flags have after this command? Why?
Then have the program subtract the value 1 from the register. What values ​​do the Z, C, V, and N flags have after this command? Why?
The program should then subtract value 1 from the registry again. What values ​​do the Z, C, V, and N flags have after this command? Why?
What is the final value of the register if it represents an unsigned / unsigned number?

3. Write a sequence of commands in the ARM processor compiler that computes the expression STEV1 = STEV2 + STEV3 - STEV1, where STEV1 is a 16-bit pre-determined variable and STEV2 and STEV3 are 8-bit pre-specified variables with initial values ​​(specify them with pseudo-commands) : STEV1 = -10 (10), STEV2 = 64 (16), STEV3 = -2 (10). Check the correctness of the results!
