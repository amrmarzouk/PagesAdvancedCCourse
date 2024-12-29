---
# Build Systems - GCC, Make, CMake
revealOptions:
  title: "Build Systems - GCC, Make, CMake"
  width: 1400
  height: 900
  transition: 'slide'
  slideNumber: true
  showSlideNumber: 'all'
  customStylesheet: styles.css
  pdfSeparateFragments: false
  pdfMaxPagesPerSlide: 1
---

# Build Systems - GCC, Make, CMake
### Moving from Single-File to Multi-File Projects

---

## Moving from Single-File to Multi-File Projects

### Single-File Program

```c
// main.c
#include <stdio.h>

int main() {
    printf("Hello, World!\n");
    return 0;
}
```

- Easy to compile: `gcc main.c -o hello`
- Suitable for simple programs.
- Limitation: All code must reside in one file.

---

### Multi-File Program Example

#### File Structure:
```
project/
├── main.c
├── functions.c
└── functions.h
```

#### Content:

**`functions.h`**
```c
#ifndef FUNCTIONS_H
#define FUNCTIONS_H

void greet();

#endif
```

**`functions.c`**
```c
#include <stdio.h>
#include "functions.h"

void greet() {
    printf("Hello from a separate file!\n");
}
```

**`main.c`**
```c
#include "functions.h"

int main() {
    greet();
    return 0;
}
```

---

## Compilation and Linking

### Manual Compilation
1. Compile individual files:
   ```
   gcc -c main.c -o main.o
   gcc -c functions.c -o functions.o
   ```
2. Link object files:
   ```
   gcc main.o functions.o -o program
   ```
3. Run:
   ```
   ./program
   ```

### Challenges:
- Tedious for larger projects.
- Error-prone.

---

## Build Automation with Make

### Makefile Example

```make
# Makefile

program: main.o functions.o
    gcc main.o functions.o -o program

main.o: main.c functions.h
    gcc -c main.c -o main.o

functions.o: functions.c functions.h
    gcc -c functions.c -o functions.o

clean:
    rm -f *.o program
```

### Usage:
- Build: `make`
- Clean: `make clean`

---

## Using CMake for Cross-Platform Builds

### CMake Structure:
```
project/
├── CMakeLists.txt
├── main.c
├── functions.c
└── functions.h
```

### `CMakeLists.txt` Example:
```cmake
cmake_minimum_required(VERSION 3.10)

project(MultiFileExample)

add_executable(program main.c functions.c)
```

### Steps:
1. Generate build files:
   ```
   cmake -S . -B build
   ```
2. Build:
   ```
   cmake --build build
   ```

---

## Practical Exercise

1. Create a simple multi-file project with:
   - `main.c`, `functions.c`, `functions.h`
   - Write a function to calculate the factorial of a number.
2. Write a Makefile to automate the build process.
3. Convert the project to use CMake.

---

## Key Takeaways
- Multi-file projects promote better organization and reusability.
- Build automation with Make and CMake simplifies project management.
- Understanding compilation and linking is crucial for debugging build issues.

---

## Questions?
