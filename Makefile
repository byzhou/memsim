
default:all

all:scope
hspice:
	hspice t_mem.sp

scope:hspice
	scope -pfiles t_mem.tr0 &

edit:
	vim t_mem.sp

clean:
	rm -rf *.log *.bak *.ic0 *.st0 *.su0 *.tr0 *0 *1 *.out logFile
