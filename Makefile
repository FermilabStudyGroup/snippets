CXXFLAGS=-std=c++11 $(shell root-config --cflags)
LIBS=$(shell root-config --libs)

run : easy_plot
	@echo "Complied..."

easy_plot : easy_plot.o
	g++ -o $@ $^ ${LIBS}

%.o : %.cxx
	g++ ${CXXFLAGS} -o $@ -c $^
