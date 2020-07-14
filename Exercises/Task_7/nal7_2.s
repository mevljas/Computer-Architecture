          .text

          .global __start
__start:
@         ukazi              zastavice                 register R0    (nepredzn     predzn)
          movs r0, #1        @N=0, Z=0, C,V= ni vpliva     1          (  1            +1   )
          subs r0,r0,#1      @N=0, Z=1, C=1, V=0           0          (  0           -1  )
          subs r0,r0,#1      @N=1, Z=0, C=0, V=0           0xffffffff ( max           -1  )
          
          
          
          
         

__end:    b __end   

          
