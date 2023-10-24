# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sbelomet <marvin@42lausanne.ch>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/10/19 13:12:12 by sbelomet          #+#    #+#              #
#    Updated: 2023/10/24 10:13:43 by sbelomet         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#Variables

NAME		=	libftprintf.a
HEADERS		=	include
SRC_DIR		=	src/
OBJ_DIR		=	obj/
LIBFT		=	libft
CC			=	gcc
CFLAGS		=	-Wall -Wextra -Werror -I

# Colors

DEF_COLOR	=	\033[0;39m
GRAY		=	\033[0;90m
RED 		=	\033[0;91m
GREEN		=	\033[0;92m
YELLOW		=	\033[0;93m
BLUE		=	\033[0;94m
MAGENTA		=	\033[0;95m
CYAN		=	\033[0;96m
WHITE		=	\033[0;97m

#Emojis

CLOWN		=	\xf0\x9f\xa4\xa1
DROOLING	=	\xf0\x9f\xa4\xa4
STEAMY		=	\xf0\x9f\xa5\xb5
UMACCTULY	=	\xf0\x9f\xa4\x93
POINT_UP	=	\xe2\x98\x9d\xef\xb8\x8f
MOONBOY		=	\xf0\x9f\x8c\x9d
CHILLY		=	\xf0\x9f\xa5\xb6

#Sources

SRC_RAW		=	ft_printf ft_printformat ft_printstr ft_printptr ft_printhex ft_converthex ft_uitoa

SRCS		=	$(addprefix $(SRC_DIR), $(addsuffix .c, $(SRC_RAW)))
OBJS		=	$(addprefix $(OBJ_DIR), $(addsuffix .o, $(SRC_RAW)))

###

OBJF		=	.cache_exists

all:			$(NAME)

				@make -C $(LIBFT) all
				@cp $(LIBFT)/libft.a $(NAME)
				@ar rc $(NAME) $(OBJS)
				@echo "$(GREEN)c'est tout tip-top$(DEF_COLOR)$(CLOWN)$(CLOWN)$(CLOWN)"

$(OBJ_DIR)%.o:	$(SRC_DIR)%.c | $(OBJF)
				@echo "$(YELLOW)$< est dans le four...$(DEF_COLOR)$(STEAMY)$(STEAMY)$(STEAMY)"
				@$(CC) $(CFLAGS) $(HEADERS) -o $@ -c $<

$(OBJF):
				@mkdir -p $(OBJ_DIR)

clean:
				@rm -rf $(OBJ_DIR)
				@make -C $(LIBFT) clean
				@echo "$(BLUE)a la poubelle les .o$(DEF_COLOR)$(MOONBOY)$(MOONBOY)$(MOONBOY)"

fclean:			clean
				@make -C $(LIBFT) fclean
				@rm -f $(NAME)
				@echo "$(CYAN)HOURAH!!! tout a ete suppr$(DEF_COLOR)$(DROOLING)$(DROOLING)$(DROOLING)"

re:				fclean all
				@echo "$(GREEN)c'est reparti pour un tour$(DEF_COLOR)$(POINT_UP) $(UMACCTULY)"

.PHONY:			all clean fclean re libft
