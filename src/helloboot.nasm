; Copyright @ReiAAoyama 2016
; Licensed under GPLv3
;
[bits 16] 		; 16-bit code
[org 0x7C00] 	; code to load at 0x7C00

	mov al, 'H'
	call printchar
	mov al, 'e'
	call printchar
	mov al, 'l'
	call printchar
	mov al, 'l'
	call printchar
	mov al, 'o'
	call printchar
	mov al, '!'
	call printchar

	jmp $

printchar:  			; See https://en.wikipedia.org/wiki/BIOS_interrupt_call
	mov ah, 0x0e		; tty output
	mov bh, 0x00		; page 0
	mov bl, 0x02		; color - see https://en.wikipedia.org/wiki/BIOS_color_attributes
	int 0x10
	ret
	
; Data segment

license: db 'License under GPLv3 - @ReiAAoyama 2016'
rcsid:	db '$Id: helloboot.asm,v 1.1 2016/03/01 18:10:55 reia Exp reia $'


	times 510 - ($ - $$) db 0	; fill sector with all 0
				; $-$$ is how far into the section I am
				; this way I don't have to count bytes

	dw	0xAA55	; boot signature at the end
