GLOBAL _naturalSum
GLOBAL _factorial
GLOBAL _multiplos

EXTERN print
EXTERN numberToString

section .bss
strPosition: resb 9

section .text

;-----------------------------------------------------------
; _naturalSum: returns in EBX the sum of the first n natural numbers	
;-----------------------------------------------------------
; Arguments:
;	ebx: natural number n
;-----------------------------------------------------------
_naturalSum:
	mov ecx, ebx	;the number is received through EBX
	mov eax, 0		;preparing EAX to hold the sum
	cmp	ecx, 0		;check if the number is greater than 0
	jle	.end
.cicle:
	add eax, ecx	;do the sum
	dec ecx			;decrement ECX as counter
	jz	.end
	jmp .cicle
.end:
	mov ebx, eax 	;store the sum in EBX to return it
	ret

_factorial:
	mov ecx, ebx
	mov eax, 1
	cmp ecx, 0
	jle .end
.cicle:
	mul dword ecx
	dec ecx			;decrement ECX as counter
	jz	.end
	jmp .cicle
.end:
	mov ebx, eax 	;store the sum in EBX to return it
	ret

_multiplos:
	push ebp						;pushes ebp to the stack
	mov	ebp, esp					;ebp = esp

	mov	edx, dword [ebp + 0xC]	;edx = k
	mov eax, dword [ebp + 0x8]	;eax = n
	mov ecx, eax 				;ecx = eax
.cicle:
	cmp eax, edx
	jle .printNumber
	jmp .end
.printNumber:
	sub esp, 8
	mov dword [esp], eax
	mov dword [esp + 4], strPosition
	call numberToString
	add eax, ecx 					;eax += ecx
	jmp .cicle
.end:
	mov esp, ebp
	pop ebp
	ret

; STACK
; ebo
; 2
; 11
; ebp
	