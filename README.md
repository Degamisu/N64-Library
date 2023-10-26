# N64 Library
**PLEASE SEE [details.md](documentation/details.md) FOR MORE INFORMATION**

This repository contains a library for the Nintendo 64 (N64) compiler. It's designed to assist developers working on N64 projects.

## Table of Contents

![logo](https://github.com/Degamisu/N64-Library/assets/149022474/2f5f5a98-5190-46ca-82ff-692349cb7b6a)


1. [Introduction](#introduction)
2. [File Structure](#file-structure)
3. [Installation](#installation)
4. [Usage](#usage)
5. [Documentation](#documentation)
6. [Examples](#examples)
7. [Contributing](#contributing)
8. [License](#license)

## Introduction

The N64 Library is a comprehensive toolset for N64 developers. It simplifies the development process by providing pre-built functions and utilities to work with the N64 architecture.

## File Structure

The file structure is organized as follows:

- `src/`: Contains the source code for the library.
- `include/`: Includes header files for the library.
- `examples/`: Demonstrates how to use the library with practical examples.
- `docs/`: Contains documentation for the library.

## Installation
### Tested
1. **Compile C Source Code (For n64library.c)**:
   - For a basic compilation, you can use the following command:
   ```
   gcc -c src/n64library.c -o build/n64library.o -Iinclude
   ```
   This command compiles `n64library.c` and produces an object file `n64library.o` in the `build` directory. (Tested)
### Untested
2. **Create a Static Library**:
   - To create a static library from the object file, you can use the following command:
   ```
   ar rcs lib/libn64library.a build/n64library.o
   ```
   This command creates a static library file `libn64library.a` in the `lib` directory.

3. **Create a Shared Library (Optional)**:
   - If you want to create a shared library (dynamic link library), you can use a command like this:
   ```
   gcc -shared -o lib/libn64library.so build/n64library.o
   ```
   This command creates a shared library file `libn64library.so` in the `lib` directory.

4. **Compile Example Programs**:
   - To compile your example programs, you can use commands like this:
   ```
   gcc examples/example1.c -o build/example1 -I include -L lib -ln64library
   ```
   This command compiles `example1.c` and links it with your library.

5. **Run Example Programs**:
   - After compilation, you can run your example programs:
   ```
   ./build/example1
   ```

## Usage

To use the N64 Library in your projects:

1. Include the necessary header files from the `include/` directory.
2. Link your project with the compiled library from the `build/` directory.
3. Refer to the documentation for function details and usage examples.

## Documentation

For detailed information, refer to the documentation in the `docs/` directory. It provides a comprehensive guide to using the library's functions and features.

## Examples

The `examples/` directory contains practical examples that demonstrate how to use the library in real projects. These examples cover various use cases and help you get started quickly.

## Contributing

Contributions are welcome! If you'd like to contribute to the N64 Library, please follow these guidelines:

1. Fork this repository.
2. Make your changes.
3. Create a pull request.

## License

This project is licensed under the [MIT License](LICENSE).

---
