
.GLOBAL vdd!
.PROBE TRAN
+ I2(m2)
+ I2(m3)
.TRAN 1e-10 5e-7 START=0.0

.OP
.TEMP 100
.OPTION
+   POST=1
.INCLUDE "mem.sp"
.INCLUDE "/ad/eng/users/b/o/bobzhou/Desktop/571/hw3/PTM45nm/PTM.sp"

*input signal
v0 input 0 PWL 0 0
*a long positive write
+ 10e-9 2e-1 400e-9 2e-1
*a nop
+ 410e-9 0 420e-9 0
*a short read
+ 430e-9 0.7 440e-9 0.7
*a nop
+ 450e-9 0 460e-9 0
*a long negative write
+ 470e-9 -0.2 570e-9 -0.2
*a nop
*+ 280e-9 0 290e-9 0
*a short read
*+ 300e-9 0.7 300e-9 0.7
*power supply
v1 vdd! 0 DC=1.5
*memristor
Xmem input 0 drive memristor
*mem driven inverter
m0 output drive vdd! vdd! pmos L=45e-9 W=180e-9
m1 output drive 0 0 nmos L=45e-9 W=90e-9
m2 drive output2 vdd! vdd! pmos L=45e-9 W=180e-9
m3 drive output2 0 0 nmos L=45e-9 W=90e-9
*inv driven outpu
r0 outputr2 0 1e3

.END

