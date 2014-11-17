	.align 4
	.text
.globl program
program:
	pushl %ebp
	movl %esp,%ebp
	subl $800,%esp
	pushl %edx
	pushl %ecx
	jmp __14
__14:
	jmp __15
__15:
	movl $4,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,0(%ebp)
	movl 0(%ebp),%eax
	popl %ecx
	popl %edx
	addl $800,%esp
	movl %esp,%ebp
	popl %ebp
	ret
