# Meta Compiler

## Introduction
A compiler for the course [Compiler 2017](http://acm.sjtu.edu.cn/wiki/Compiler_2017) at ACM Class, SJTU. 

The source is a java-like language.
The target is x86-64 NASM.

With various optimizations, this compiler was ranked third in the performance competition of the course.

## Optimization
* Instruction selection
* Function inlining
* Control flow analysis, redundant jump elimination, superblock
* Dataflow analysis, dead code elimination
* Register Allocation

## Build
```
bash build.bash
```

## Usage
```
put source in program.txt
run: java -jar Meta.jar
get target from program.asm
```
