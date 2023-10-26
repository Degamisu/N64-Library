# N64 Library

![N64 Logo](https://github.com/Degamisu/N64-Library/assets/149022474/2f5f5a98-5190-46ca-82ff-692349cb7b6a)

Welcome to the N64 Library, a comprehensive toolset designed to assist developers working on Nintendo 64 (N64) projects. Whether you're a seasoned N64 developer or just starting, this library simplifies the development process by providing pre-built functions and utilities to work with the N64 architecture.

## Table of Contents

1. [Introduction](#introduction)
2. [File Structure](#file-structure)
3. [Installation](#installation)
4. [Usage](#usage)
5. [Documentation](#documentation)
6. [Examples](#examples)
7. [Contributing](#contributing)
8. [License](#license)

## Introduction

The N64 Library serves as a vital resource for N64 developers. It streamlines the development process by offering a collection of pre-built functions and utilities. This repository provides a solid foundation for developing N64 projects efficiently.

## File Structure

Understanding the repository's file structure is essential for productive development:

- `src/`: Contains the source code for the library. This is where you'll find the core functionality.
- `include/`: Includes header files for the library. These headers are essential for including N64 Library functionality in your projects.
- `examples/`: This directory features practical examples that showcase how to use the library effectively.
- `docs/`: The documentation section holds detailed information about the library's functions and features. This is your go-to resource for understanding how to use the library.

## Installation

Getting the N64 Library up and running is a crucial step. Depending on your needs, you can follow the steps below:

### Tested Installation

1. **Compile C Source Code (For n64library.c)**:

   To compile the main source file, `n64library.c`, into an object file, use the following command:
   
   ```bash
   gcc -c src/n64library.c -o build/n64library.o -Iinclude
   ```

   This command successfully compiles `n64library.c` and generates an object file, `n64library.o`, located in the `build` directory.

### Untested Installation

2. **Create a Static Library**:

   To create a static library from the object file, you can use the following command:

   ```bash
   ar rcs lib/libn64library.a build/n64library.o
   ```

   This command creates a static library file, `libn64library.a`, located in the `lib` directory.

3. **Create a Shared Library (Optional)**:

   If you prefer a shared library (dynamic link library), use a command like this:

   ```bash
   gcc -shared -o lib/libn64library.so build/n64library.o
   ```

   This command generates a shared library file, `libn64library.so`, in the `lib` directory.

4. **Compile Example Programs**:

   To compile your example programs, use commands like this:

   ```bash
   gcc examples/example1.c -o build/example1 -I include -L lib -ln64library
   ```

   This command compiles `example1.c` and links it with your library.

5. **Run Example Programs**:

   After successful compilation, run your example programs with the following command:

   ```bash
   ./build/example1
   ```

## Usage

To make the most of the N64 Library in your projects, follow these steps:

1. Include the necessary header files from the `include/` directory in your project source code.

2. Link your project with the compiled library, which can be found in the `build/` directory.

3. Consult the documentation provided in the `docs/` directory. This documentation is a comprehensive guide to understanding the library's functions and features, enabling you to use them effectively in your projects.

## Documentation

In the `docs/` directory, you'll find detailed documentation that offers extensive insights into the library's functions and features. This comprehensive guide is your go-to resource for understanding how to utilize the library effectively.

## Examples

The `examples/` directory contains practical examples that demonstrate how to use the library in real projects. These examples cover a wide range of use cases and provide a solid starting point for your own N64 development journey.

## Contributing

We welcome contributions from the N64 developer community. If you'd like to contribute to the N64 Library, please follow these guidelines:

1. Fork this repository on GitHub.

2. Make your changes or additions to the library.

3. Create a pull request, outlining your contributions, and our team will review it.

## License

This project is open-source and is licensed under the [MIT License](LICENSE). We encourage you to explore, use, and contribute to the library as it aligns with the principles of open-source development.

## Thank you!
Explore the N64 Library and unlock new possibilities in your N64 development projects today!