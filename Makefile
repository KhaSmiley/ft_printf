# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: kboulkri <kboulkri@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/05/29 17:34:22 by kboulkri          #+#    #+#              #
#    Updated: 2023/08/28 16:51:52 by kboulkri         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS =	ft_convert_base.c ft_printf.c ft_putchar.c ft_putnbr.c ft_putstr.c ft_strchr.c

OBJS		= ${SRCS:.c=.o}
NAME		= libftprintf.a
CC			= cc -Wall -Wextra -Werror

all: ${NAME}

$(NAME): $(OBJS)
	ar rcs $(NAME) $(OBJS)

%.o: %.c ft_printf.h
	$(CC) -I. -c $< -o $@

clean:
	rm -f ${OBJS}

fclean:		clean
	rm -f ${NAME} ${OBJS_BONUS} a.out

re:			fclean all

.PHONY:		all clean fclean re