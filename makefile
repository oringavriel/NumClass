CC= gcc
AR= ar
MAINOBJ= main.o
FLAGS= -Wall -g 
ALL= advancedClassificationLoop.o  basicClassification.o advancedClassificationRecursion.o main.o libclassloops.a libclassrec.a libclassrec.so libclassloops.so mains maindloop maindrec

all: $(ALL)

maindrec: $(MAINOBJ) 
	$(CC) $(FLAGS) -o maindrec $(MAINOBJ) ./libclassrec.so

maindloop: $(MAINOBJ) 
	$(CC) $(FLAGS) -o maindloop $(MAINOBJ) ./libclassloops.so

mains: $(MAINOBJ) libclassrec.a
	$(CC) $(FLAGS) -o mains $(MAINOBJ) libclassrec.a 

libclassloops.so: basicClassification.o advancedClassificationLoop.o
	$(AR) -rcs libclassloops.so basicClassification.o advancedClassificationLoop.o

libclassrec.so: basicClassification.o advancedClassificationRecursion.o
	$(AR) -rcs libclassrec.so basicClassification.o advancedClassificationRecursion.o

libclassrec.a: basicClassification.o advancedClassificationRecursion.o
	$(AR) -rcs libclassrec.a basicClassification.o advancedClassificationRecursion.o

libclassloops.a: basicClassification.o advancedClassificationLoop.o
	$(AR) -rcs libclassloops.a basicClassification.o advancedClassificationLoop.o

main.o: main.c NumClass.h
	$(CC) $(FLAGS) -c main.c -o main.o

advancedClassificationLoop.o : advancedClassificationLoop.c NumClass.h
	$(CC) $(FLAGS) -c advancedClassificationLoop.c -o advancedClassificationLoop.o 

basicClassification.o: basicClassification.c NumClass.h
	$(CC) $(FLAGS) -c basicClassification.c -o basicClassification.o
	
advancedClassificationRecursion.o : advancedClassificationRecursion.c NumClass.h
	$(CC) $(FLAGS) -c advancedClassificationRecursion.c -o advancedClassificationRecursion.o 


.PHONY: clean

clean: 
	rm -f $(ALL)