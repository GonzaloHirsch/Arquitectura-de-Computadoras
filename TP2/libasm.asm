
GLOBAL print
GLOBAL exit
GLOBAL numberToString
GLOBAL printAlternative

section .text

;-----------------------------------------------------------
; print - imprimer una cadena en la salida estandar
;-----------------------------------------------------------
; Argumentos:
;	ebx: cadena a imprimer en pantalla, terminada con 0
;-----------------------------------------------------------
print:
	pushad		; hago backup de los registros

	call strlen
	mov ecx, ebx	; la cadena esta en ebx
	mov edx, eax	; en eax viene el largo de la cadena

	mov ebx, 1		; FileDescriptor (STDOUT)
	mov eax, 4		; ID del Syscall WRITE
	int 80h
	
	popad 		; restauro los registros
	ret	

printAlternative:
	pushad		; hago backup de los registros

	mov ecx, ebx	; la cadena esta en ebx
	mov edx, eax	; en eax viene el largo de la cadena

	mov ebx, 1		; FileDescriptor (STDOUT)
	mov eax, 4		; ID del Syscall WRITE
	int 80h
	
	popad 		; restauro los registros
	ret	
	
;-----------------------------------------------------------
; exit - termina el programa
;-----------------------------------------------------------
; Argumentos:
;	ebx: valor de retorno al sistema operativo
;-----------------------------------------------------------
exit:
	mov eax, 1		; ID del Syscall EXIT
	int 80h			; Ejecucion de la llamada


;-----------------------------------------------------------
; exit - calcula la longitud de una cadena terminada con 0
;-----------------------------------------------------------
; Argumentos:
;	ebx: puntero a la cadena
; Retorno:
;	eax: largo de la cadena
;-----------------------------------------------------------
strlen:
	push ecx ; preservo ecx	
	push ebx ; preservo ebx
	pushf	; preservo los flags

	mov ecx, 0	; inicializo el contador en 0
.loop:			; etiqueta local a strlen
	mov al, [ebx] 	; traigo al registo AL el valor apuntado por ebx
	cmp al, 0	; lo comparo con 0 o NULL
	jz .fin 	; Si es cero, termino.
	inc ecx		; Incremento el contador
	inc ebx
	jmp .loop
.fin:				; etiqueta local a strlen
	mov eax, ecx	
	
	popf
	pop ebx ; restauro ebx	
	pop ecx ; restauro ecx
	ret
	

numberToString:
	push ebp
	mov	ebp, esp
	pushad

	mov ecx, 10		;guardo el divisor
	mov eax, dword [ebp + 8]			;recupero el numero
	mov	ebx, dword [ebp + 12]			;recupero la posicion de memoria
	push ebx
	add	ebx, 10
	mov	[ebx], byte 0
	dec ebx
	mov	[ebx], byte 0xA
	dec ebx
.cicle:
	mov edx, 0		;limpio el resto
	div	ecx
	cmp eax, 0		;veo si eax = 0
	jz	.end
	add	edx, 30h
	mov [ebx], dl
	dec ebx
	jmp .cicle
.end:
	add	edx, 30h
	mov [ebx], dl

	pop ecx			;recupero ebx original
	mov edx, ebx	;edx = ebx
	add ecx, 11
	sub ecx, edx	;ebx -= ecx
	mov eax, ecx
	call printAlternative


	popad
	mov	esp, ebp
	pop ebp
	ret
