section .text


; La etiqueta _start: es el punto de entrada al programa, por
; lo tanto tiene que ser global
GLOBAL _start

; Estoy declarando que print y exit estÃ¡n definida en otro archivo.
EXTERN print
EXTERN exit
EXTERN _naturalSum

_start:
	mov ebx, 5
	call _naturalSum
	call print
	
	mov ebx, 0
	call exit
