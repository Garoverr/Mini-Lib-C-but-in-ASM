##
## EPITECH PROJECT, 2024
## asmminilibc-jacques.sapin
## File description:
## Makefile asm
##

NAME = libasm.so

NAMETEST = unit_tests

SRC = ./src/strlen.asm 			\
	  ./src/strcmp.asm 			\
	  ./src/strncmp.asm 		\
	  ./src/strchr.asm			\
	  ./src/strrchr.asm			\
	  ./src/rindex.asm			\
	  ./src/strcspn.asm			\
	  ./src/strstr.asm			\
	  ./src/strpbrk.asm			\
	  ./src/strcasecmp.asm		\
	  ./src/memcpy.asm			\
	  ./src/memset.asm			\

OBJ = $(SRC:.asm=.o)

NFLAG = -f elf64

LINKFLAGS = -shared -fPIC -nostdlib

%.o: %.asm
	nasm $(NFLAG) -o $@ $<

$(NAME): $(OBJ)
	gcc -o $(NAME) $(OBJ) $(LINKFLAGS)

all: $(NAME)

bin: re
	gcc -c main.c
	gcc main.o -o test -g3

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)
	rm -f $(NAMETEST)
	rm -f unit_tests*
	rm -f test
	rm -f main.o

re: fclean all

debug: CFLAGS += -g3
debug: $(OBJ)
	@g++ -o $(NAME) $(OBJ) -g3

.PHONY : all bin clean debug fclean re