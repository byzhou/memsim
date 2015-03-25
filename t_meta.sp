
.GLOBAL vdd!
.PROBE TRAN
*measuring current
+ I2(i0)
*+ I2(m3)
.TRAN 1e-12 500e-9 START=0.0
.NOISE out v0 1
.NOISE in v0 1
.PARAM ipulse=2e-6

.OP
.OPTION
+   POST=1
.INCLUDE "inv1.sp"
.INCLUDE "inv2.sp"
.INCLUDE "/ad/eng/users/b/o/bobzhou/Desktop/571/hw3/PTM45nm/PTM.sp"

i0 out 0 PWL 0 0
+10e-9 ipulse 20e-9 ipulse
+30e-9 0
v0 vdd! 0 DC=1
x1 out in inv1
x2 in out inv2
.END
