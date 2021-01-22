# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: iidzim <iidzim@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/01/20 16:02:49 by iidzim            #+#    #+#              #
#    Updated: 2021/01/22 17:53:07 by iidzim           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libasm.a

SRC =	ft_strlen.s ft_strcpy.s ft_strcmp.s ft_strdup.s ft_write.s ft_read.s

OBJ =	ft_strlen.o ft_strcpy.o ft_strcmp.o ft_strdup.o ft_write.o ft_read.o

all : $(NAME)

$(NAME):
	nasm -f macho64 ft_strlen.s -o ft_strlen.o
	nasm -f macho64 ft_strcpy.s -o ft_strcpy.o
	nasm -f macho64 ft_strcmp.s -o ft_strcmp.o
	nasm -f macho64 ft_strdup.s -o ft_strdup.o
	nasm -f macho64 ft_write.s -o ft_write.o
	nasm -f macho64 ft_read.s -o ft_read.o
	ar rc $(NAME) $(OBJ)
	ranlib $(NAME)

run: all
	gcc -Wall -Wextra -Werror -I./libasm.h libasm.a main.c -fsanitize=address -o libasm
	./libasm
	
clean:
	rm -rf $(OBJ)
fclean: clean
	rm -rf $(NAME)
re: fclean all