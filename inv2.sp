.SUBCKT inv2 output input
.PARAM wn=45n wp=90n l=45n 
.TEMP 100

m0 output input vdd! vdd! pmos L=l W=wp
m1 output input 0 0 nmos L=l W=wn

.ENDS inv2
