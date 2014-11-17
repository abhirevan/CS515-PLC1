	.align 4
	.text
.globl program
program:
	pushl %ebp
	movl %esp,%ebp
	subl $800,%esp
	jmp __704
__704:
	jmp __705
__705:
	jmp __706
__706:
	jmp __707
__707:
	jmp __708
__708:
	jmp __709
__709:
	jmp __710
__710:
	jmp __711
__711:
	jmp __712
__712:
	jmp __713
__713:
	jmp __714
__714:
	jmp __715
__715:
	jmp __716
__716:
	jmp __717
__717:
	jmp __718
__718:
	jmp __719
__719:
	jmp __720
__720:
	jmp __721
__721:
	jmp __722
__722:
	jmp __723
__723:
	movl $0,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-4(%ebp)
	movl -4(%ebp),%eax
	addl $800,%esp
	movl %esp,%ebp
	popl %ebp
	ret
