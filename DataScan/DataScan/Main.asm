.386
.model flat

.data
;intArray SWORD 0,0,0,0,4,3,0,-34,-56,7,8
intArray SWORD 0,0,0,0,0,0,0,0,0,0,0,0

.code
main	proc
		mov ebx,OFFSET intArray
		mov ecx,LENGTHOF intArray
		
L1:
		cmp WORD PTR[ebx],0
		jnz		found
		add ebx,2
		loop L1
		jmp notfound

found:
		movsx eax,WORD PTR[ebx]
		jmp quit

notfound:
		mov eax,999999

quit:
	ret

main	endp
end		main