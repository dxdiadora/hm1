CC=gcc
AR=ar
OBJMAIN=main.o
OBJLIBP=power.o
OBJLIBM=basicMath.o
FLAG= -Wall -g

all: mLib.so mLib.a progs progd

progs: $(OBJMAIN) mLib.a
	$(CC) $(FLAG) -o progs $(OBJMAIN) mLib.a
	
progd: $(OBJMAIN)	
	$(CC) $(FLAG) -o progd $(OBJMAIN) ./mLib.so



mLib.so: $(OBJLIBM) $(OBJLIBP) 
	$(CC) -shared -o mLib.so $(OBJLIBM) $(OBJLIBP) 
	
	
mLib.a : $(OBJLIBM) $(OBJLIBP)
	$(AR) -rcs mLib.a $(OBJLIBM) $(OBJLIBP)




basicMath.o: basicMath.c myMath.h
	$(CC) $(FLAG) -c basicMath.c

power.o: power.c myMath.h
	$(CC) $(FLAG) -c power.c
	
	
main.o: main.c myMath.h
	$(CC) $(FLAG) -c main.c

.PHONY: clean all

clean:
	rm -f *.a *.so *.o progs progd

