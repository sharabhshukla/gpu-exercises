
# CUDA Programming Exercises in Julia

Welcome to this collection of CUDA programming exercises using Julia! This repository is designed to help you learn and practice GPU programming using Julia's CUDA integration.

## Introduction

Julia offers excellent support for CUDA programming, allowing you to harness the power of NVIDIA GPUs for high-performance computing tasks. These exercises will guide you through using Julia's CUDA capabilities, combining the ease of Julia's syntax with the computational power of GPUs.

## What You'll Learn

Throughout these exercises, you'll gain hands-on experience with:

1. Writing CUDA kernels in Julia
2. Managing GPU memory using Julia's CUDA utilities
3. Understanding thread hierarchy and organization in Julia CUDA
4. Implementing parallel reduction techniques
5. Optimizing Julia CUDA programs
6. Exploring advanced topics like shared memory and atomic operations

## Prerequisites

To get the most out of these exercises, you should have:

- Basic knowledge of Julia programming
- A CUDA-capable NVIDIA GPU
- Julia installed on your system (version 1.6 or later recommended)
- CUDA.jl package installed (`using Pkg; Pkg.add("CUDA")`)

## Getting Started

Clone this repository and follow the instructions in each exercise folder. Start with the basics and progressively move to more advanced topics. Make sure to run `] instantiate` in the Julia REPL to install all necessary dependencies.

Happy coding, and enjoy exploring GPU programming with Julia and CUDA!

## Puzzle 1
Implement a "kernel" (GPU function) that adds 10 to each position of vector a and stores it in vector out. You have 1 thread per position.

Warning This code looks like Python but it is really CUDA! You cannot use standard python tools like list comprehensions or ask for Numpy properties like shape or size (if you need the size, it is given as an argument). The puzzles only require doing simple operations, basically +, *, simple array indexing, for loops, and if statements. You are allowed to use local variables. If you get an error it is probably because you did something fancy :).

Tip: Think of the function call as being run 1 time for each thread. The only difference is that cuda.threadIdx.x changes each time.

## Puzzle 2 - Zip

Implement a kernel that adds together each position of a and b and stores it in out. You have 1 thread per position.

