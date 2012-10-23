CFITSIO = /home/s1/javiert/analisis/external/cfitsio
CPP = g++
CC = gcc
CFLAGS = -Wall -I$(CFITSIO)
LIBS = -L$(CFITSIO) -lcfitsio -lm
GLIBS = 
GLIBS += 
OBJECTS = printHeaderTime.o 
HEADERS = 

ALL : printHeaderTime.exe
	echo "Listo!"

printHeaderTime.exe : $(OBJECTS)
	$(CPP) $(OBJECTS) -o printHeaderTime.exe $(LIBS) $(GLIBS) $(CFLAGS)

printHeaderTime.o : printHeaderTime.cc $(HEADERS)
	$(CPP) -c printHeaderTime.cc -o printHeaderTime.o $(CFLAGS)

clean:
	rm -f *~ *.o *.exe
