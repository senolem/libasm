NAME			= libasm
NAME_LIB		= libasm.a
ASM_ASSEMBLER	= nasm
ASM_FLAGS		= -f elf64
ASM_EXTENSION	= .s
SRC_PATH		= srcs/
OBJ_PATH		= bin/

#		눈_눈			SOURCES			눈_눈

MAIN_PATH		=
MAIN_FILES		= ft_strlen ft_strcpy ft_strcmp ft_write ft_read ft_strdup
SRCS_FILES		+= $(addprefix $(MAIN_PATH), $(MAIN_FILES))

SRCS_FILES_EXT	+= $(addsuffix $(ASM_EXTENSION), $(SRCS_FILES))
SRCS			+= $(addprefix $(SRC_PATH), $(SRCS_FILES_EXT))
OBJS			= $(addprefix $(OBJ_PATH), $(SRCS_FILES_EXT:.s=.o))

#		(҂◡_◡)			UTILS			(҂◡_◡)

RM = rm -rf

#		( ಠ ʖ̯ ಠ)		RULES			( ಠ ʖ̯ ಠ)

all: $(NAME)

$(NAME): $(OBJS)
	ar rc $(NAME) $(OBJS)

$(OBJ_PATH)%.o: $(SRC_PATH)%.s
	$(ASM_ASSEMBLER) $(ASM_FLAGS) -o $@ $<

clean:
	rm -rf $(OBJS)

fclean: clean
	rm -rf $(NAME)

re: fclean $(NAME)

.PHONY: all clean fclean re