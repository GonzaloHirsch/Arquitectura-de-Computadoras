section .data
hello:		db		'h4ppy c0d1ng!', 0xA, 0
lettera:	equ		97
upper:		equ		32
endChar:	equ		0
helloLen:	equ		$-hello

section .text
	global _start

	_start:
		mov eax, hello 
		call _toUpper
		
		mov	ecx, hello
		mov	edx, helloLen
		call _print
		call _exit

	_toUpper:
			cmp	[eax], byte lettera	;Sub the letter to
			jge	.letter
			jmp	.continue
		.letter:
			sub [eax], byte upper
		.continue:
			cmp [eax], byte endChar
			jz 	.end
			inc eax
			jnz _toUpper
		.end:
			ret

	_print:
		mov	eax, 4
		mov	ebx, 1
		int	80h
		ret

	_exit:
		mov	eax, 1
		mov	ebx, 0
		int	80h
		ret
