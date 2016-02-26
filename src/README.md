# Instruction

## hello.sh
"hello.sh" is a shell program. It will run under bash.
To run this shell program, simply do:
```bash
 /bin/sh ./hello.sh
```
## hello.c
"hello.c" is a C programming language version of hello
world. Unfortunately, C source code needed to be compiled
by a C compiler such as "gcc" on a unix system. To run
the program, you do the following:
```sh
  make hello.c
  ./hello
```
Here is a sample of how to run it:
```
reia@rei-u64vm:~/Development/hello-world/src$ make hello
cc     hello.c   -o hello
reia@rei-u64vm:~/Development/hello-world/src$ ./hello
Hello World!
reia@rei-u64vm:~/Development/hello-world/src$ 
```
