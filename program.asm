section		.text		  ;section declaration 
global		_start		;loader

_start:
	mov		edx,len		;third argument: message length
	mov		ecx,msg		;second argument: pointer to message to write

	mov 	ebx,1		;first argument: file handle (stdout)
	mov		eax,4		;system call number (sys_write)
	int		0x80		;call kernel

	mov		eax,1		;system call number (sys_exit)
	int		0x80		;call kernel

section		.data		;section declaration

msg 	db `\u26F0`,`  `,`\u263a`,`  `,`\u261e`,`  `,1Bh, '[3;34mThis is my simple program with the Assembly programming language.',0xa		;string
len 	equ	$ - msg 	;string length
