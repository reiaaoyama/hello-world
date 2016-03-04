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

## hello.nasm
"hello.nasm" is written in "nasm" assembly. To compile hello.nasm,
you need to do the following:
```
  nasm -t elf64 hello.nasm
  ld -o hello hello.o
  ./hello
```
Just for a comparison, the executable created from nasm is more compact than that of C.
```
reia@reia-G770:~/Devel/github/hello-world/src$ ls -l hello-c hello-nasm
-rwxrwxr-x 1 reia reia 8551 Feb 27 20:50 hello-c
-rwxrwxr-x 1 reia reia  943 Feb 27 20:47 hello-nasm
reia@reia-G770:~/Devel/github/hello-world/src$ 
```

# helloboot.nasm
"helloboot.nasm" is a variation of "hello.nasm". helloboot.asm will print
out "Hello!" when you burn it into a floopy and boot a machine. This is
at the core BIOS call unlike the previous one which use unix sys call.
To run, you obviously has to compile it using nasm and crate a floppy image.
The procedure is as follow:
```
  nasm helloboot.nasm -f bin -o helloboot.bin
  dd if=/dev/zero of=zero.bin bs=512 count=1439
  cat helloboot.bin zero.bin > helloboot.flp
```
The you can either write the helloboot.flp to a 3.5" drive or mount to a 
VM as a boot disk and see a hello print out on the screen.

Note: Don't leave this running too long cuz I made an infinite
loop at the end. It is weasting energy, I know.

# HelloWorld.java
"HelloWorld.java" is a java version. To run it, you need to 
compile the source with "javac" or Java compiler. The output
of the Java compiler will be "HelloWorld.class".
Then run Java virtual machine "java" with the class name. 
For example:
```
  javac HelloWorld.java
  java HelloWorld
```
