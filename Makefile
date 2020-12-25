all:
	nasm -f elf64 add.asm
	gcc -c prog-add.c
	gcc -no-pie -o ult_output prog-add.o add.o
	./ult_output 60 70
