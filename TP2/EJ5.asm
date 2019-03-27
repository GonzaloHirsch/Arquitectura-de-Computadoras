section .text


; La etiqueta _start: es el punto de entrada al programa, por
; lo tanto tiene que ser global
GLOBAL _start

; Estoy declarando que print y exit estÃ¡n definida en otro archivo.
EXTERN print
EXTERN exit
EXTERN _naturalSum
EXTERN _multiplos

_start:
	push ebp
	mov ebp, esp
	sub esp, 8

	mov dword [esp], 2
	mov dword [esp + 4], 429497295
	call _multiplos
	
	mov ebx, 0
	call exit

; STACK
; 2
; 11
; ebp

