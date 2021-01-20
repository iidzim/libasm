# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: iidzim <iidzim@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/01/20 16:02:49 by iidzim            #+#    #+#              #
#    Updated: 2021/01/20 19:27:01 by iidzim           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libasm

SRC =	ft_strlen.s ft_strcpy.s ft_strcmp.s\
		ft_strdup.s ft_write.s ft_read.s

all : $(NAME)

$(OBJ): $(SRC)
	gcc -c $(SRC)

$(NAME): $(OBJ)
	gcc $(OBJ) -Wall  -o $(NAME)
	
clean:
	rm -rf $(OBJ)
fclean: clean
	rm -rf $(NAME)
re: fclean all