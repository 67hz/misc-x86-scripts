.model flat
.386

.data
num1	dword	11111111h
num2	dword	10101010h
ans		dword	0

.code
start	proc
		mov eax,num1
		add eax,num2	; add num2 to num1
		mov ans,eax		; store answer in 

		ret
start	endp
end		start