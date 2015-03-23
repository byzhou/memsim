
.GLOBAL vdd!
.PROBE TRAN
*measuring current
+ I2(i0)
*+ I2(m3)
.TRAN 1e-10 5e-7 START=0.0

.OP
.OPTION
+   POST=1
.INCLUDE "inv1.sp"
.INCLUDE "inv2.sp"
.INCLUDE "/ad/eng/users/b/o/bobzhou/Desktop/571/hw3/PTM45nm/PTM.sp"

i0 out out_bar PWL 0 0
+10e-9 2e-3 2e-7 0
v0 vdd! 0 DC=1.5
x1 out in inv1
x2 in out inv2
.END
