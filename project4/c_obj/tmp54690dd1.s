	.file	"<stdin>"
	.text
	.globl	program
	.align	16, 0x90
	.type	program,@function
program:                                # @program
	.cfi_startproc
# BB#0:                                 # %__635
	pushl	%ebp
.Ltmp3:
	.cfi_def_cfa_offset 8
.Ltmp4:
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
.Ltmp5:
	.cfi_def_cfa_register %ebp
	pushl	%edi
	pushl	%esi
	subl	$16, %esp
.Ltmp6:
	.cfi_offset %esi, -16
.Ltmp7:
	.cfi_offset %edi, -12
	movl	$0, %eax
	movl	%eax, %ecx
	addl	$0, %ecx
	movl	%ecx, -12(%ebp)
	addl	$0, %eax
	movl	%eax, -16(%ebp)
# BB#1:                                 # %__636
	movl	$1, %eax
	movl	-16(%ebp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, -16(%ebp)
# BB#2:                                 # %__637
	movl	$0, %eax
	movl	-12(%ebp), %ecx
	addl	$0, %eax
	cmpl	%eax, %ecx
	setg	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	cmpl	$0, %eax
	je	.LBB0_6
# BB#3:                                 # %__639
	movl	$100, %eax
	movl	%esp, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	addl	$0, %eax
	movl	%eax, (%ecx)
	movl	%ecx, -20(%ebp)         # 4-byte Spill
# BB#4:                                 # %__640
	movl	$1, %eax
	movl	-20(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	addl	$0, %eax
	addl	%eax, %edx
	movl	%edx, (%ecx)
# BB#5:                                 # %__641
	movl	$1, %eax
	movl	-20(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	addl	$0, %eax
	addl	%eax, %edx
	movl	%edx, (%ecx)
	jmp	.LBB0_9
.LBB0_6:                                # %__643
	jmp	.LBB0_7
.LBB0_7:                                # %__644
	movl	-12(%ebp), %eax
	addl	-16(%ebp), %eax
	movl	%eax, -16(%ebp)
# BB#8:                                 # %__645
	movl	$100, %eax
	addl	$0, %eax
	movl	%eax, -12(%ebp)
	jmp	.LBB0_10
.LBB0_9:                                # %__642
	jmp	.LBB0_11
.LBB0_10:                               # %__646
	jmp	.LBB0_11
.LBB0_11:                               # %__647
                                        # =>This Inner Loop Header: Depth=1
	movl	$100, %eax
	movl	-16(%ebp), %ecx
	addl	$0, %eax
	cmpl	%eax, %ecx
	setl	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	cmpl	$0, %eax
	je	.LBB0_16
# BB#12:                                # %__648
                                        #   in Loop: Header=BB0_11 Depth=1
	jmp	.LBB0_13
.LBB0_13:                               # %__650
                                        #   in Loop: Header=BB0_11 Depth=1
	movl	$1, %eax
	movl	-16(%ebp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, -16(%ebp)
# BB#14:                                # %__651
                                        #   in Loop: Header=BB0_11 Depth=1
	movl	-16(%ebp), %eax
	addl	-12(%ebp), %eax
	movl	%eax, -16(%ebp)
# BB#15:                                # %__652
                                        #   in Loop: Header=BB0_11 Depth=1
	jmp	.LBB0_11
.LBB0_16:                               # %__649
	movl	$0, %eax
	movl	%esp, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	addl	$0, %eax
	movl	%eax, (%ecx)
	movl	%ecx, -24(%ebp)         # 4-byte Spill
.LBB0_17:                               # %__653
                                        # =>This Inner Loop Header: Depth=1
	movl	-24(%ebp), %eax         # 4-byte Reload
	movl	(%eax), %ecx
	cmpl	-16(%ebp), %ecx
	setl	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	cmpl	$0, %ecx
	je	.LBB0_23
# BB#18:                                # %__655
                                        #   in Loop: Header=BB0_17 Depth=1
	movl	$50, %eax
	movl	-24(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	addl	$0, %eax
	addl	%eax, %edx
	movl	%edx, (%ecx)
# BB#19:                                # %__656
                                        #   in Loop: Header=BB0_17 Depth=1
	jmp	.LBB0_20
.LBB0_20:                               # %__657
                                        #   in Loop: Header=BB0_17 Depth=1
	movl	$1, %eax
	movl	-16(%ebp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, -16(%ebp)
# BB#21:                                # %__658
                                        #   in Loop: Header=BB0_17 Depth=1
	movl	$1000, %eax             # imm = 0x3E8
	movl	-12(%ebp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, -12(%ebp)
# BB#22:                                # %__659
                                        #   in Loop: Header=BB0_17 Depth=1
	jmp	.LBB0_17
.LBB0_23:                               # %__654
	movl	$4, %eax
	movl	$2, %ecx
	movl	$3, %edx
	movl	-16(%ebp), %esi
	movl	-12(%ebp), %edi
	addl	$0, %edx
	imull	%edx, %edi
	addl	%edi, %esi
	addl	$0, %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %esi
	addl	$0, %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	movl	%esi, %eax
	leal	-8(%ebp), %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
.Ltmp8:
	.size	program, .Ltmp8-program
	.cfi_endproc


	.section	".note.GNU-stack","",@progbits
