
section .text
GLOBAL _start
EXTERN main

_start:
	; push 	ebp
	mov		ebp, esp	;armado de stack frame

	mov		eax, dword [ebp]	;cantidad de argumentos

	mov edx, 0
	mov	ecx, 4
	mul ecx

	add ebp, eax
.next:
	cmp		ebp, esp
	je		.finish
	push	ebp
	sub 	ebp, 0x4
	jmp		.next
.finish:
	push	dword [ebp]
	call 	main

	; mov 	esp, ebp
	; pop 	ebp

	mov 	ebx, eax
	mov 	eax, 1		; ID del Syscall EXIT
			; Valor de Retorno
	int 	80h			; Ejecucion de la llamada


