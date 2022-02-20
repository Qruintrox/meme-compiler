# not a really good makefile, but it works

COMPILER 	:= g++
FLAGS 		:=

SRCDIR 		:= src
BUILDDIR 	:= build
OUPUTFILE 	:= main

build: main.o
	$(COMPILER) $(BUILDDIR)/*.o -o $(BUILDDIR)/$(OUPUTFILE) $(FLAGS)

main.o:
	$(COMPILER) $(SRCDIR)/*.cpp -c $(FLAGS)
	mv *.o $(BUILDDIR)

clean:
	rm $(BUILDDIR)/*
	rm *.o

run:
	./$(BUILDDIR)/$(OUPUTFILE)
