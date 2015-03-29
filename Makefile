
default:all

all:scope
hspice:
	hspice t_meta.sp;\
	echo -e "\n";\
	figlet -c -f basic sim success
	#hspice t_mem.sp

scope:hspice
	scope -pfiles t_meta.tr0 &

edit:
	vim t_meta.sp

clean:
	rm -rf *.log *.bak *.ic0 *.st0 *.su0 *.tr0 *0 *1 *.out logFile
