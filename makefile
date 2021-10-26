# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vahemere <vahemere@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/10/26 19:41:34 by vahemere          #+#    #+#              #
#    Updated: 2021/10/26 19:41:34 by vahemere         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS =	ft_atoi.c \
				ft_isalnum.c \
				ft_isascii.c \
				ft_isprint.c \
				ft_memcmp.c \
				ft_memmove.c \
				ft_strchr.c \
				ft_strlcpy.c \
				ft_strncmp.c \
				ft_strrchr.c \
				ft_toupper.c \
				ft_bzero.c \
				ft_isalpha.c \
				ft_isdigit.c \
				ft_memchr.c \
				ft_memcpy.c \
				ft_memset.c \
				ft_strlcat.c \
				ft_strlen.c \
				ft_strnstr.c \
				ft_tolower.c \

OBJS = ${SRCS:.c=.o}
EXEC = libft.a
COMPIL = gcc -Wall -Wextra -Werror

all :		${EXEC}

.c.o :
			${COMPIL} -c $< -o ${<:.c=.o}

$(EXEC) :	$(OBJS)
			ar -rcs $(EXEC) $(OBJS)

clean :		
			rm -f $(OBJS)

fclean :	clean
			rm -f $(EXEC)

re :		fclean all

.PHONY :	all clean fclean re