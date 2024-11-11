# Libft

Libft is a custom implementation of essential C standard library functions. The project is part of Hive Helsinki's curriculum and serves as a fundamental building block for future projects. It aims to familiarize students with standard C functions, memory management, and writing clean, efficient code.

## Table of Contents

- [About](#about)
- [Features](#features)
- [Functions Implemented](#functions-implemented)
- [Project Structure](#project-structure)
- [Installation](#installation)
- [Usage](#usage)
- [Testing](#testing)
- [Contributing](#contributing)
- [License](#license)

## About

This repository contains my take on the **Libft** project, which is an integral part of the Hive Helsinki curriculum. The main objective of this project is to recreate a set of C standard library functions, providing a deep understanding of their internal workings. This experience will be crucial for building more complex C projects later on.

## Features

- Standard C library functions implemented from scratch.
- Focus on memory management, string manipulation, and utility functions.
- All functions follow the **Norminette** coding style rules.
- Well-tested functions to ensure correct behavior.

## Functions Implemented

Here is a list of functions I have implemented so far:

### Part 1 - Standard C Library Functions

- `ft_isalpha` - Checks if the character is alphabetic.
- `ft_isdigit` - Checks if the character is a digit.
- `ft_isalnum` - Checks if the character is alphanumeric.
- `ft_isprint` - Checks if the character is printable.
- `ft_strlen` - Returns the length of a string.
- `ft_memset` - Fills memory with a constant byte.
- `ft_bzero` - Zeros out a memory area.
- `ft_memcpy` - Copies memory area.
- `ft_memmove` - Moves memory area (handles overlap cases).
- `ft_strlcpy` - Copies a string with size limitation.
- `ft_strlcat` - Concatenates strings with size limitation.
- `ft_toupper` - Converts lowercase to uppercase.
- `ft_tolower` - Converts uppercase to lowercase.
- `ft_strchr` - Locates a character in a string.
- `ft_strrchr` - Locates the last occurrence of a character in a string.
- `ft_strncmp` - Compares two strings up to `n` characters.
- `ft_memchr` - Scans memory for a character.
- `ft_memcmp` - Compares memory areas.
- `ft_strnstr` - Locates a substring in a string with size limitation.
- `ft_atoi` - Converts a string to an integer.
- `ft_calloc` - Allocates memory and sets it to zero.
- `ft_strdup` - Duplicates a string.

### Part 2 - Additional Functions

- `ft_itoa` - Converts an integer to a string.
- `ft_substr` - Extracts a substring from a string.
- `ft_strjoin` - Joins two strings into one.
- `ft_strtrim` - Trims leading and trailing whitespace from a string.
- `ft_split` - Splits a string into an array of strings based on a delimiter.
- `ft_strmapi` - Applies a function to each character of a string to create a new string.
- `ft_putchar_fd` - Outputs a character to a file descriptor.
- `ft_putstr_fd` - Outputs a string to a file descriptor.
- `ft_putendl_fd` - Outputs a string to a file descriptor, followed by a newline.
- `ft_putnbr_fd` - Outputs an integer to a file descriptor.

### Bonus Functions

- `ft_lstnew` - Creates a new list element.
- `ft_lstadd_front` - Adds an element at the beginning of a list.
- `ft_lstsize` - Counts the number of elements in a list.
- `ft_lstlast` - Returns the last element of a list.
- `ft_lstadd_back` - Adds an element at the end of a list.
- `ft_lstdelone` - Deletes an element from a list.
- `ft_lstclear` - Deletes and frees all elements of a list.
- `ft_lstiter` - Iterates over a list and applies a function to each element.
- `ft_lstmap` - Applies a function to each element of a list and creates a new list from the results.

## Project Structure

```
.
├── libft.h           # Header files
├── *.c               # Source files
├── Makefile          # Build script
└── README.md         # This file
```

# Installation

Instructions on how to install and set up the project.

```bash
make
```

To clean up object files:

```bash
make clean
```

To remove all compiled files:

```bash
make fclean
```

To recompile everything:

```bash
make re
```

## Usage

You can include `libft.a` in your projects by adding the following to your source files:

```c
#include "libft.h"
```

Then, link the library during compilation:

```bash
cc -Wall -Wextra -Werror main.c -L. -lft -o my_program
```

## Contributing

If you have suggestions or improvements, feel free to open a pull request. For major changes, please open an issue first to discuss the changes you would like to make.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
