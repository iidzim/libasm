# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: iidzim <iidzim@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/01/20 16:02:49 by iidzim            #+#    #+#              #
#    Updated: 2021/01/21 18:24:01 by iidzim           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libasm

SRC =	ft_strlen.s ft_strcpy.s ft_strcmp.s ft_strdup.s ft_write.s ft_read.s

OBJ = $(SRC:.c=.o)

all : $(NAME)

$(NAME):
	nasm -f macho64 $(SRC) -o $(OBJ)
	ar rc $(NAME) $(OBJ)
	ranlib $(NAME)

run: all
	gcc -Wall -Wextra -Werror main.c -o $(NAME) -fsanitize=address
	
clean:
	rm -rf $(OBJ)
fclean: clean
	rm -rf $(NAME)
re: fclean all