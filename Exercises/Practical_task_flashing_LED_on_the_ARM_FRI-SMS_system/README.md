1. Write a program with an external loop that includes another inner (nested) loop. The internal nested loop should be executed 48 000 times and every time the 32-bit value in r1 should be incremented by 1. The external loop should be repeated so many times that the value at r1 at the end of the program (both loops) is equal to 24 000 000, if initial value was set to 0.  

2. Flashing LEDs on the ARM FRI-SMS system  

Write a program that will turn on and off the built-in orange LED on the FRI-SMS system every half a second. The main program that you insert from the place marked by "/ * user code here * /" can be described with a pseudo code as follows:
```
ENDLESS: Turn on the LED  

                Wait 0.5 second  

                Turn off the LED  

                Wait 0.5 second  

                Goto ENDLESS
```
"Turning on" and "turning off" the LED is achieved by writing the values 1 or 0 in the predefined LED variable. "Wait 0.5 second" can be implemented by the nested loops from assignment 1 - you can omit the increase of the r1 register, because it is not needed.

Add the described code to a fresh workspace that you restore from the published project for FRI-SMS (not the one for the simulator used so far!) on the e-classroom. Once you have done this, then the FRI-SMS system is connected to the computer, the program is compiled and will be run instead in the simulator on the FRI-SMS system - if everything is ok, the LED will flash. If it does not work, try to trace the error or contact the assistant.
