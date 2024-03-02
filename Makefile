CC = gcc
CFLAGS = -Wall -Wextra -Werror
TARGET = bsq

SRCS = main.c
       parse.c
       validate.c
       find_square.c
       print_map.c

OBJS = $(SRCS:.c=.o)

.PHONY: all clean fclean re

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $@ $^

%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $<

clean:
	$(RM) $(OBJS)

fclean: clean
	$(RM) $(TARGET)

re: fclean all
