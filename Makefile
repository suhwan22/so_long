# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: suhkim <suhkim@student.42seoul.kr>         +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/10/07 01:11:54 by suhkim            #+#    #+#              #
#    Updated: 2022/10/07 02:19:41 by suhkim           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME 	= so_long

CC 		= cc

CFLAGS 	= -Wall -Wextra -Werror

SRCS 	= ./main.c \
		  ./get_next_line.c \
		  ./get_next_line_utils.c \
		  ./ft_strnstr.c \
		  ./ft_memcmp.c \
		  ./ft_putnbr_base.c \
		  ./printf.c \
		  ./draw.c \
		  ./valid.c \
		  ./key_hook.c \
		  ./move.c

all: $(NAME)

OBJS	= $(SRCS:.c=.o)

$(NAME) : $(OBJS)
	$(CC) -lmlx -framework OpenGL -framework AppKit $^ -o $@

%.o:%.c
	$(CC) $(CFLAGS) -c $^ -o $@

clean:
	rm -f $(OBJS)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all bonus clean fclean re
