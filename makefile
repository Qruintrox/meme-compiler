# not a really good makefile, but it works

COMPILER 	:= g++
FLAGS 		:=

SRCDIR 		:= src
BUILDDIR 	:= build
OUPUTFILE 	:= compiler

build: compiler.o
	$(COMPILER) $(BUILDDIR)/*.o -o $(BUILDDIR)/$(OUPUTFILE) $(FLAGS)

compiler.o:
	$(COMPILER) $(SRCDIR)/*.cpp -c $(FLAGS)
	mv *.o $(BUILDDIR)

clean:
	rm $(BUILDDIR)/*
	rm *.o

run:
	./$(BUILDDIR)/$(OUPUTFILE)
