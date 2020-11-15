CC=gcc
AR=ar
OBJMAIN=main.o
OBJLIBP=power.o
OBJLIBM=basicMath.o
FLAG= -Wall -g


mymaths: $(OBJLIBM) $(OBJLIBP) 
	$(AR) -rcs libmyMath.a $(OBJLIBM) $(OBJLIBP)
	
mymathd: $(OBJLIBM) $(OBJLIBP) 
	$(CC) -shared -o libmyMath.so $(OBJLIBM) $(OBJLIBP) 
	
all: mLib.so mLib.a mains maind

mains: $(OBJMAIN) mLib.a
	$(CC) $(FLAG) -o mains $(OBJMAIN) mLib.a
	
maind: $(OBJMAIN)	
	$(CC) $(FLAG) -o maind $(OBJMAIN) ./mLib.so



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
	rm -f *.a *.so *.o mains maind

