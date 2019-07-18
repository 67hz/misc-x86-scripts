; context saving - pushing registers onto the stack
.386	; min processor
.model flat,c
.code

Reverser	PROC
			push ebp
			mov ebp,esp
			push esi
			push edi

			xor eax,eax
			mov edi,[ebp+8]		; edi dest storage, ebp is base pointer
			mov esi,[ebp+12]	; esi source storage
			mov ecx,[ebp+16]	; num elements user passed and stored into ecx
			test	ecx,ecx

			lea esi,[esi+ecx*4-4]
			pushfd	; saves current direction flag
			std		; set flag to 1

@@:			lodsd
			mov [edi],eax
			add edi,4
			dec ecx
			jnz @B

			popfd
			mov eax,1


			pop edi
			pop esi
			pop ebp

			ret

Reverser	endp
			end