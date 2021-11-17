# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vahemere <vahemere@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/10/26 19:41:34 by vahemere          #+#    #+#              #
#    Updated: 2021/11/14 23:07:23 by vahemere         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS =		ft_atoi.c \
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
			ft_substr.c \
			ft_calloc.c \
			ft_strdup.c \
			ft_strjoin.c \
			ft_strtrim.c \
			ft_split.c \
			ft_itoa.c \
			ft_strmapi.c \
			ft_putchar_fd.c \
			ft_putstr_fd.c \
			ft_putendl_fd.c \
			ft_putnbr_fd.c \

SRCSBONUS =	ft_lstnew.c \
			ft_lstadd_front.c \
			ft_lstsize.c \
			ft_lstlast.c \
			ft_lstadd_back.c \
			ft_lstdelone.c \
			ft_lstclear.c \
			ft_lstiter.c \
			ft_lstmap.c \
			ft_striteri.c \

OBJS = ${SRCS:.c=.o}
OBJSBONUS = ${SRCSBONUS:.c=.o}
EXEC = libft.a
COMPIL = gcc -Wall -Wextra -Werror

all :		${EXEC}

.c.o :
			${COMPIL} -c $< -o ${<:.c=.o}

$(EXEC) :	$(OBJS)
			ar -rcs $(EXEC) $(OBJS)

bonus :		$(OBJS) $(OBJSBONUS)
			ar -rcs $(EXEC) $(OBJS) $(OBJSBONUS)

clean :		
			rm -f $(OBJS)

fclean :	clean
			rm -f $(EXEC)

re :		fclean all

.PHONY :	all clean fclean re