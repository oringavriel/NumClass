CC= gcc
AR= ar
MAINOBJ= main.o
FLAGS= -Wall -g 
ALL= advancedClassificationLoop.o  basicClassification.o advancedClassificationRecursion.o main.o loops recursives recursived loopd  mains maindloop maindrec
CLEANALL= advancedClassificationLoop.o  basicClassification.o advancedClassificationRecursion.o main.o libclassloops.a libclassrec.a libclassrec.so libclassloops.so  mains maindloop maindrec


all: $(ALL)

.PHONY: maindrec

maindrec: $(MAINOBJ) 
	$(CC) $(FLAGS) -o maindrec $(MAINOBJ) ./libclassrec.so

.PHONY: mainloop

maindloop: $(MAINOBJ) 
	$(CC) $(FLAGS) -o maindloop $(MAINOBJ) ./libclassloops.so

.PHONY: mains

mains: $(MAINOBJ) libclassrec.a
	$(CC) $(FLAGS) -o mains $(MAINOBJ) libclassrec.a 

.PHONY: loopd

loopd: basicClassification.o advancedClassificationLoop.o
	$(AR) -rcs libclassloops.so basicClassification.o advancedClassificationLoop.o

.PHONY: recursived

recursived: basicClassification.o advancedClassificationRecursion.o
	$(AR) -rcs libclassrec.so basicClassification.o advancedClassificationRecursion.o

.PHONY: recursives

recursives: basicClassification.o advancedClassificationRecursion.o
	$(AR) -rcs libclassrec.a basicClassification.o advancedClassificationRecursion.o

.PHONY: loops

loops: basicClassification.o advancedClassificationLoop.o
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
	rm -f $(CLEANALL)