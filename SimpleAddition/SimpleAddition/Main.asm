.386 ; minimum processor reqd is x86 intel 386

.model flat ; use flat memory segmentation model
.code ; this is the code area
start	PROC	; PROC is directive for procedure
		mov eax,213
		add eax,432

		ret
start	endp
end		start
