CC = cc

CFLAGS = -Wall -Wextra -Werror

SRC = 	ft_atoi.c ft_isalnum.c ft_isalpha.c ft_isascii.c ft_isdigit.c ft_isprint.c ft_strlen.c \
	ft_memset.c ft_bzero.c ft_memcpy.c ft_memmove.c ft_strlcpy.c \
	ft_strlcat.c ft_toupper.c ft_tolower.c ft_strchr.c ft_strrchr.c \
	ft_strncmp.c ft_memchr.c ft_memcmp.c ft_strnstr.c ft_calloc.c ft_strdup.c \
	ft_substr.c ft_strjoin.c ft_strtrim.c ft_split.c ft_itoa.c ft_putchar_fd.c  \
	ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c ft_striteri.c ft_strmapi.c

SRC_BONUS = ft_lstnew_bonus.c ft_lstsize_bonus.c ft_lstadd_front_bonus.c ft_lstlast_bonus.c \
	ft_lstadd_back_bonus.c ft_lstdelone_bonus.c ft_lstclear_bonus.c ft_lstmap_bonus.c \
	ft_lstiter_bonus.c
		
OBJS = $(SRC:.c=.o)

OBJS_BONUS = $(SRC_BONUS:.c=.o)

NAME = libft.a

all: $(NAME)

$(NAME): $(OBJS)
	@$(CC) $(CFLAGS) -c $(SRC)
	@ar rc $(NAME) $(OBJS)
	@ranlib $(NAME)
	@echo "$(NAME) created and indxed"

bonus: $(OBJS) $(OBJS_BONUS)
	@$(CC) $(CFLAGS) -c $(SRC_BONUS)
	@ar rc $(NAME) $(OBJS_BONUS)
	@ranlib $(NAME)
	@echo "Bonus added to $(NAME)"

clean:
	@rm -f $(OBJS) $(OBJS_BONUS)
	@echo "Object deleted"

fclean: clean
	@rm -f $(NAME)
	@echo "$(NAME) deleted"

re: fclean all

.PHONY: all clean fclean re bonus
