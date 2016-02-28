; Copyright @ReiAAoyama 2016
; An example of a "Hello World!" in nasm
; the syntax is a little different from "as"
; so users beware.
; License under GPL 3.0

section .data
	msg db 'Hello World!',10 ; 10 is LF, "\n" doesnt work for me

section .text
	global _start
_start:
	mov	rax, 1
	mov rdi, 1
	mov rsi, msg
	mov rdx, 13
	syscall
	mov	rax, 60
	mov rdi, 0
	syscall

