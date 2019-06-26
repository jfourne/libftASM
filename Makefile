# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jfourne <jfourne@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/04/04 09:40:57 by jfourne           #+#    #+#              #
#    Updated: 2019/05/09 14:34:49 by jfourne          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		=	libfts.a

SRC_PATH	=	src

SRC_NAME	=	ft_bzero.s \
				ft_isalnum.s \
				ft_isalpha.s \
				ft_isascii.s \
				ft_isdigit.s \
				ft_islower.s \
				ft_isneg.s \
				ft_ispos.s \
				ft_isprint.s \
				ft_isupper.s \
				ft_memcpy.s \
				ft_memset.s \
				ft_puts.s \
				ft_strcat.s \
				ft_strchr.s \
				ft_strcmp.s \
				ft_strncmp.s \
				ft_strdup.s \
				ft_strlen.s \
				ft_tolower.s \
				ft_toupper.s \
				ft_cat.s

OBJ_PATH	=	obj

OBJ			=	$(SRC:.s=.o)

ASM			=	nasm

FORMAT		=	macho64

CPPFLAGS	=	-Iinclude

CFLAGS		=	-Wall -Wextra -Werror

OBJ_NAME	=	$(SRC_NAME:.s=.o)

SRC			=	$(addprefix $(SRC_PATH)/,$(SRC_NAME))

OBJ			=	$(addprefix $(OBJ_PATH)/,$(OBJ_NAME))

all		:	$(NAME)

$(NAME)	:	$(OBJ)
			@ar rc $(NAME) $(OBJ)
			@ranlib $(NAME)
			@echo "compilation libfts completed"

$(OBJ_PATH)/%.o: $(SRC_PATH)/%.s
				@mkdir -p $(OBJ_PATH)
				@$(ASM) -f $(FORMAT) -o $@ $<

clean:
				@rm -rf $(OBJ)
				@rm -rf $(OBJ_PATH)
				@echo "rm OBJ lifts"

fclean:			clean
				@rm -rf $(NAME)
				@echo "rm NAME libfts"

re:				fclean all

.PHONY	: all clean fclean re