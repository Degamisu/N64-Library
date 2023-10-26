# Makefile for Your N64 Project

# Compiler and linker settings
CC = n64-gcc
LD = n64-ld

# Source and header files
SRC_FILES = $(wildcard src/*.c)
HDR_FILES = $(wildcard include/*.h)

# Output directory
OUT_DIR = build

# Output binary name
TARGET = your_n64_project

# Compiler flags
CFLAGS = -std=gnu99 -Wall -I include

# Linker flags
LDFLAGS = -T n64.ld

# Object files
OBJ_FILES = $(patsubst src/%.c, $(OUT_DIR)/%.o, $(SRC_FILES))

# Default target
all: $(OUT_DIR)/$(TARGET).z64

$(OUT_DIR)/$(TARGET).z64: $(OBJ_FILES)
	$(LD) $(LDFLAGS) -o $@ $^

$(OUT_DIR)/%.o: src/%.c $(HDR_FILES)
	$(CC) $(CFLAGS) -c $< -o $@

# Clean build artifacts
clean:
	rm -rf $(OUT_DIR)

# Ensure the output directory exists
$(shell mkdir -p $(OUT_DIR))

.PHONY: all clean
