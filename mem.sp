********************
.SUBCKT memristor PLUS MINUS w
.PARAM Ron=100 Roff=16000 Rinit=11k D=10e-9 uv=3e-8 p=2
Csv w 0 1
.IC V(w) 0.3
Emem PLUS AUX VOL='-I(Emem)*V(w)*(Roff-Ron)'
Rtest AUX MINUS Roff


**This is BIOLEK's model
**Gsv 0 w CUR='I(Emem)*uv*Ron/POW(D,2)'
Gsv 0 w CUR='(1-POW(V(w)-sgn(sgn(-I(Emem))+1),2*p)) * I(Emem)*uv*Ron/POW(D,2)'

**	(1-POW((2*V(w)-1),2*p))*uv*Ron/POW(D,2)	(1-POW((2*V(w)-1),2*p))
**	(1-POW(V(w),2*p))





****you want to define a VCCS? this is the sample line:
**Gtest PLUS MINUS w 0 0 1
**************************








**G1 PLUS MINUS PLUS MINUS 0 hrt(w,t)

**.IC V(w) 0.05
**Csv w 0 1
**Gsv w 0 CUR='(((sgn(V(w)-lmin)+1)/2+(sgn(V(PLUS,MINUS))+1)/2)*((sgn(lmax-V(w))+1)/2 + sgn(-V(PLUS,MINUS)+1)/2)/2)*(1-POW((2*V(PLUS,MINUS)-1),2))*(a*SINH(b*V(PLUS,MINUS)))'




**Gmem PLUS MINUS CUR='s*(POW(V(w),n)*c1*SINH(d1*V(PLUS,MINUS))+c2*(EXP(d2*V(PLUS,MINUS))-1))'

**(((sgn(V(w)-lmin)+1)/2+(sgn(V(PLUS,MINUS))+1)/2) * ((sgn(lmax-V(w))+1)/2 + sgn(-V(PLUS,MINUS)+1)/2)/2)





.ENDS memristor
