CC= gcc
AR= ar
FLAGS= -Wall


all: mains maindloop maindrec loops recursives

loops: libclassloops.a

recursives: libclassrec.a

recursived: libclassrec.so

loopd: libclassloops.so

mains: main.o recursives
	$(CC) $(FLAGS) -o mains main.o libclassrec.a

maindloop: main.o libclassloops.so
	$(CC) $(FLAGS) main.o ./libclassloops.so -o maindloop

maindrec: main.o libclassrec.so
	$(CC) $(FLAGS) main.o ./libclassrec.so -o maindrec

libclassloops.a:basicClassification.o advancedClassificationLoop.o
	$(AR) rcs libclassloops.a basicClassification.o advancedClassificationLoop.o
	ranlib libclassloops.a

libclassrec.a: basicClassification.o advancedClassificationRecursion.o
	$(AR) rcs libclassrec.a basicClassification.o advancedClassificationRecursion.o
	ranlib libclassrec.a

libclassloops.so: basicClassification.c advancedClassificationLoop.c basicClassification.o advancedClassificationLoop.o
	$(CC) $(FLAGS) basicClassification.o advancedClassificationLoop.o -sh$(AR)ed -o libclassloops.so

libclassrec.so: basicClassification.c advancedClassificationRecursion.c basicClassification.o advancedClassificationRecursion.o
	$(CC) $(FLAGS)  basicClassification.o advancedClassificationRecursion.o -sh$(AR)ed -o libclassrec.so

main.o: main.c
	$(CC) $(FLAGS) -fPIC -c main.c

basicClassification.o: basicClassification.c
	$(CC) $(FLAGS) -fPIC -c basicClassification.c

advancedClassificationLoop.o: advancedClassificationLoop.c
	$(CC) $(FLAGS) -fPIC -c basicClassification.c advancedClassificationLoop.c

advancedClassificationRecursion.o: advancedClassificationRecursion.c 
	$(CC) $(FLAGS) -fPIC -c basicClassification.c advancedClassificationRecursion.c

clean:
	rm *.so *.a *.o mains maindloop maindrec