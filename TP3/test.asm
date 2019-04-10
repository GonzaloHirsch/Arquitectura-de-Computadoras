
section .text
GLOBAL _start

_start:
	mov eax, [esp]
	mov ebx, 3
	cmp eax, ebx
	je return
	mov ecx, cadena 	; Puntero a la cadena
	mov edx, longitud	; Largo de la cadena 
	mov ebx, 1		; FileDescriptor (STDOUT)
	mov eax, 4		; ID del Syscall WRITE
	int 80h			; Ejecucion de la llamada
return:
	mov eax, 1		; ID del Syscall EXIT
	mov ebx, 0		; Valor de Retorno
	int 80h			; Ejecucion de la llamada


section .data
cadena db "Hola Mundo!!", 10	;"Hola Mundo!!\n"
longitud equ $-cadena

section .bss
	placeholder resb 10

