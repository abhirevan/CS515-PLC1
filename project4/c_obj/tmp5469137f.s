	.file	"<stdin>"
	.text
	.globl	program
	.align	16, 0x90
	.type	program,@function
program:                                # @program
	.cfi_startproc
# BB#0:                                 # %__989
	pushl	%ebp
.Ltmp3:
	.cfi_def_cfa_offset 8
.Ltmp4:
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
.Ltmp5:
	.cfi_def_cfa_register %ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$172, %esp
.Ltmp6:
	.cfi_offset %esi, -20
.Ltmp7:
	.cfi_offset %edi, -16
.Ltmp8:
	.cfi_offset %ebx, -12
	movl	$1, %eax
	movl	$15, %ecx
	movl	$7, %edx
	movl	$0, %esi
	addl	$0, %esi
	movl	%esi, -16(%ebp)
	addl	$0, %edx
	movl	%edx, -20(%ebp)
	addl	$0, %ecx
	movl	%ecx, -24(%ebp)
	movl	%eax, %ecx
	addl	$0, %ecx
	movl	%ecx, -28(%ebp)
	addl	$0, %eax
	imull	$4294967295, %eax, %eax # imm = 0xFFFFFFFF
	movl	%eax, -32(%ebp)
# BB#1:                                 # %__990
	movl	$1, %eax
	movl	-16(%ebp), %ecx
	movl	-24(%ebp), %edx
	xorl	$4294967295, %edx       # imm = 0xFFFFFFFF
	andl	%edx, %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, -16(%ebp)
# BB#2:                                 # %__991
	movl	$4, %eax
	movl	$6, %ecx
	movl	-16(%ebp), %edx
	movl	-24(%ebp), %esi
	movl	%eax, %edi
	addl	$0, %edi
	movl	%ecx, -36(%ebp)         # 4-byte Spill
	movl	%edi, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	xorl	$4294967295, %esi       # imm = 0xFFFFFFFF
	andl	%esi, %edx
	movl	-36(%ebp), %esi         # 4-byte Reload
	addl	$0, %esi
	addl	$0, %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	addl	%esi, %edx
	movl	%edx, -16(%ebp)
# BB#3:                                 # %__992
	movl	$8, %eax
	movl	$9, %ecx
	movl	-16(%ebp), %edx
	movl	-24(%ebp), %esi
	movl	%eax, %edi
	addl	$0, %edi
	movl	%ecx, -40(%ebp)         # 4-byte Spill
	movl	%edi, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	xorl	$4294967295, %esi       # imm = 0xFFFFFFFF
	andl	%esi, %edx
	movl	-40(%ebp), %esi         # 4-byte Reload
	addl	$0, %esi
	addl	$0, %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	addl	%esi, %edx
	movl	%edx, -16(%ebp)
# BB#4:                                 # %__993
	movl	$12, %eax
	movl	$7, %ecx
	movl	-16(%ebp), %edx
	movl	-24(%ebp), %esi
	movl	%eax, %edi
	addl	$0, %edi
	movl	%ecx, -44(%ebp)         # 4-byte Spill
	movl	%edi, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	xorl	$4294967295, %esi       # imm = 0xFFFFFFFF
	andl	%esi, %edx
	movl	-44(%ebp), %esi         # 4-byte Reload
	addl	$0, %esi
	addl	$0, %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	addl	%esi, %edx
	movl	%edx, -16(%ebp)
# BB#5:                                 # %__994
	movl	$16, %eax
	movl	$0, %ecx
	movl	-16(%ebp), %edx
	movl	-24(%ebp), %esi
	movl	%eax, %edi
	addl	$0, %edi
	movl	%ecx, -48(%ebp)         # 4-byte Spill
	movl	%edi, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	xorl	$4294967295, %esi       # imm = 0xFFFFFFFF
	andl	%esi, %edx
	movl	-48(%ebp), %esi         # 4-byte Reload
	addl	$0, %esi
	addl	$0, %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	addl	%esi, %edx
	movl	%edx, -16(%ebp)
# BB#6:                                 # %__995
	movl	$20, %eax
	movl	$4, %ecx
	movl	-16(%ebp), %edx
	movl	-24(%ebp), %esi
	movl	%eax, %edi
	addl	$0, %edi
	movl	%ecx, -52(%ebp)         # 4-byte Spill
	movl	%edi, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	xorl	$4294967295, %esi       # imm = 0xFFFFFFFF
	andl	%esi, %edx
	movl	-52(%ebp), %esi         # 4-byte Reload
	addl	$0, %esi
	addl	$0, %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	addl	%esi, %edx
	movl	%edx, -16(%ebp)
# BB#7:                                 # %__996
	movl	$24, %eax
	movl	$5, %ecx
	movl	-16(%ebp), %edx
	movl	-24(%ebp), %esi
	movl	%eax, %edi
	addl	$0, %edi
	movl	%ecx, -56(%ebp)         # 4-byte Spill
	movl	%edi, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	xorl	$4294967295, %esi       # imm = 0xFFFFFFFF
	andl	%esi, %edx
	movl	-56(%ebp), %esi         # 4-byte Reload
	addl	$0, %esi
	addl	$0, %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	addl	%esi, %edx
	movl	%edx, -16(%ebp)
# BB#8:                                 # %__997
	movl	$15, %eax
	movl	$0, %ecx
	movl	%esp, %edx
	addl	$-16, %edx
	movl	%edx, %esp
	movl	%esp, %esi
	addl	$-16, %esi
	movl	%esi, %esp
	movl	%esp, %edi
	addl	$-16, %edi
	movl	%edi, %esp
	movl	%esp, %ebx
	addl	$-16, %ebx
	movl	%ebx, %esp
	movl	%eax, -60(%ebp)         # 4-byte Spill
	movl	%esp, %eax
	addl	$-16, %eax
	movl	%eax, %esp
	movl	%eax, -64(%ebp)         # 4-byte Spill
	movl	-16(%ebp), %eax
	movl	%eax, (%edx)
	movl	-20(%ebp), %eax
	movl	%eax, (%esi)
	movl	%ecx, %eax
	addl	$0, %eax
	movl	%eax, (%edi)
	addl	$0, %ecx
	movl	%ecx, (%ebx)
	movl	-60(%ebp), %eax         # 4-byte Reload
	addl	$0, %eax
	movl	-64(%ebp), %ecx         # 4-byte Reload
	movl	%eax, (%ecx)
	movl	%esi, -68(%ebp)         # 4-byte Spill
	movl	%edi, -72(%ebp)         # 4-byte Spill
	movl	%edx, -76(%ebp)         # 4-byte Spill
# BB#9:                                 # %__998
	movl	$1, %eax
	movl	-68(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	addl	$0, %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %edx
	movl	-72(%ebp), %eax         # 4-byte Reload
	movl	%edx, (%eax)
# BB#10:                                # %__999
	jmp	.LBB0_11
.LBB0_11:                               # %__1000
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
	movl	$0, %eax
	movl	-72(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	addl	$0, %eax
	cmpl	%eax, %edx
	setge	%bl
	andb	$1, %bl
	movzbl	%bl, %eax
	cmpl	$0, %eax
	je	.LBB0_39
# BB#12:                                # %__1002
                                        #   in Loop: Header=BB0_11 Depth=1
	movl	$0, %eax
	movl	$1, %ecx
	movl	%esp, %edx
	addl	$-16, %edx
	movl	%edx, %esp
	movl	%esp, %esi
	addl	$-16, %esi
	movl	%esi, %esp
	movl	%esp, %edi
	addl	$-16, %edi
	movl	%edi, %esp
	movl	%esp, %ebx
	addl	$-16, %ebx
	movl	%ebx, %esp
	movl	%eax, -80(%ebp)         # 4-byte Spill
	movl	%esp, %eax
	addl	$-16, %eax
	movl	%eax, %esp
	movl	%eax, -84(%ebp)         # 4-byte Spill
	movl	%esp, %eax
	addl	$-16, %eax
	movl	%eax, %esp
	movl	%eax, -88(%ebp)         # 4-byte Spill
	movl	%esp, %eax
	addl	$-16, %eax
	movl	%eax, %esp
	movl	%eax, -92(%ebp)         # 4-byte Spill
	movl	-72(%ebp), %eax         # 4-byte Reload
	movl	(%eax), %eax
	movl	%eax, (%edx)
	movl	-68(%ebp), %eax         # 4-byte Reload
	movl	(%eax), %eax
	addl	$0, %ecx
	subl	%ecx, %eax
	movl	%eax, (%esi)
	movl	-80(%ebp), %eax         # 4-byte Reload
	addl	$0, %eax
	movl	%eax, (%edi)
	movl	-80(%ebp), %eax         # 4-byte Reload
	addl	$0, %eax
	movl	%eax, (%ebx)
	movl	-80(%ebp), %eax         # 4-byte Reload
	addl	$0, %eax
	movl	-84(%ebp), %ecx         # 4-byte Reload
	movl	%eax, (%ecx)
	movl	-80(%ebp), %eax         # 4-byte Reload
	addl	$0, %eax
	movl	-88(%ebp), %ecx         # 4-byte Reload
	movl	%eax, (%ecx)
	movl	-80(%ebp), %eax         # 4-byte Reload
	addl	$0, %eax
	movl	-92(%ebp), %ecx         # 4-byte Reload
	movl	%eax, (%ecx)
	movl	%ebx, -96(%ebp)         # 4-byte Spill
	movl	%edi, -100(%ebp)        # 4-byte Spill
	movl	%edx, -104(%ebp)        # 4-byte Spill
	movl	%esi, -108(%ebp)        # 4-byte Spill
# BB#13:                                # %__1003
                                        #   in Loop: Header=BB0_11 Depth=1
	movl	$0, %eax
	addl	$0, %eax
	movl	-100(%ebp), %ecx        # 4-byte Reload
	movl	%eax, (%ecx)
.LBB0_14:                               # %__1004
                                        #   Parent Loop BB0_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$2, %eax
	movl	-104(%ebp), %ecx        # 4-byte Reload
	movl	(%ecx), %edx
	addl	$0, %eax
	imull	%eax, %edx
	movl	-108(%ebp), %eax        # 4-byte Reload
	cmpl	(%eax), %edx
	setle	%bl
	andb	$1, %bl
	movzbl	%bl, %edx
	movl	-100(%ebp), %esi        # 4-byte Reload
	cmpl	$0, (%esi)
	sete	%bl
	andb	$1, %bl
	movzbl	%bl, %edi
	andl	%edi, %edx
	cmpl	$0, %edx
	je	.LBB0_37
# BB#15:                                # %__1005
                                        #   in Loop: Header=BB0_14 Depth=2
	jmp	.LBB0_16
.LBB0_16:                               # %__1007
                                        #   in Loop: Header=BB0_14 Depth=2
	movl	$2, %eax
	movl	-104(%ebp), %ecx        # 4-byte Reload
	movl	(%ecx), %edx
	addl	$0, %eax
	imull	%eax, %edx
	movl	-108(%ebp), %eax        # 4-byte Reload
	cmpl	(%eax), %edx
	sete	%bl
	andb	$1, %bl
	movzbl	%bl, %edx
	cmpl	$0, %edx
	je	.LBB0_18
# BB#17:                                # %__1009
                                        #   in Loop: Header=BB0_14 Depth=2
	movl	$2, %eax
	movl	-104(%ebp), %ecx        # 4-byte Reload
	movl	(%ecx), %edx
	addl	$0, %eax
	imull	%eax, %edx
	movl	-96(%ebp), %eax         # 4-byte Reload
	movl	%edx, (%eax)
	jmp	.LBB0_23
.LBB0_18:                               # %__1011
                                        #   in Loop: Header=BB0_14 Depth=2
	movl	$1, %eax
	movl	$2, %ecx
	movl	$4, %edx
	movl	-76(%ebp), %esi         # 4-byte Reload
	movl	(%esi), %edi
	movl	-64(%ebp), %ebx         # 4-byte Reload
	movl	(%ebx), %esi
	movl	%edx, %ebx
	addl	$0, %ebx
	movl	%eax, -112(%ebp)        # 4-byte Spill
	movl	-104(%ebp), %eax        # 4-byte Reload
	imull	(%eax), %ebx
	movl	%ecx, %eax
	addl	$0, %eax
	imull	%eax, %ebx
	movl	%ecx, -116(%ebp)        # 4-byte Spill
	movl	%ebx, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	andl	%esi, %edi
	movl	%edx, %eax
	addl	$0, %eax
	movl	-104(%ebp), %esi        # 4-byte Reload
	imull	(%esi), %eax
	movl	-116(%ebp), %ebx        # 4-byte Reload
	addl	$0, %ebx
	imull	%ebx, %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %edi
	movl	-76(%ebp), %eax         # 4-byte Reload
	movl	(%eax), %ebx
	movl	-64(%ebp), %eax         # 4-byte Reload
	movl	(%eax), %eax
	movl	%edx, %ecx
	addl	$0, %ecx
	movl	(%esi), %esi
	movl	%eax, -120(%ebp)        # 4-byte Spill
	movl	-116(%ebp), %eax        # 4-byte Reload
	addl	$0, %eax
	imull	%eax, %esi
	movl	-112(%ebp), %eax        # 4-byte Reload
	addl	$0, %eax
	addl	%eax, %esi
	imull	%esi, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-120(%ebp), %eax        # 4-byte Reload
	shll	%cl, %eax
	andl	%eax, %ebx
	addl	$0, %edx
	movl	-104(%ebp), %eax        # 4-byte Reload
	movl	(%eax), %esi
	movl	-116(%ebp), %eax        # 4-byte Reload
	addl	$0, %eax
	imull	%eax, %esi
	movl	-112(%ebp), %eax        # 4-byte Reload
	addl	$0, %eax
	addl	%eax, %esi
	imull	%esi, %edx
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %ebx
	cmpl	%ebx, %edi
	setg	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	cmpl	$0, %eax
	je	.LBB0_20
# BB#19:                                # %__1013
                                        #   in Loop: Header=BB0_14 Depth=2
	movl	$2, %eax
	movl	-104(%ebp), %ecx        # 4-byte Reload
	movl	(%ecx), %edx
	addl	$0, %eax
	imull	%eax, %edx
	movl	-96(%ebp), %eax         # 4-byte Reload
	movl	%edx, (%eax)
	jmp	.LBB0_21
.LBB0_20:                               # %__1015
                                        #   in Loop: Header=BB0_14 Depth=2
	movl	$1, %eax
	movl	$2, %ecx
	movl	-104(%ebp), %edx        # 4-byte Reload
	movl	(%edx), %esi
	addl	$0, %ecx
	imull	%ecx, %esi
	addl	$0, %eax
	addl	%eax, %esi
	movl	-96(%ebp), %eax         # 4-byte Reload
	movl	%esi, (%eax)
	jmp	.LBB0_22
.LBB0_21:                               # %__1014
                                        #   in Loop: Header=BB0_14 Depth=2
	jmp	.LBB0_24
.LBB0_22:                               # %__1016
                                        #   in Loop: Header=BB0_14 Depth=2
	jmp	.LBB0_24
.LBB0_23:                               # %__1010
                                        #   in Loop: Header=BB0_14 Depth=2
	jmp	.LBB0_25
.LBB0_24:                               # %__1017
                                        #   in Loop: Header=BB0_14 Depth=2
	jmp	.LBB0_25
.LBB0_25:                               # %__1018
                                        #   in Loop: Header=BB0_14 Depth=2
	movl	$4, %eax
	movl	-76(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	movl	-64(%ebp), %esi         # 4-byte Reload
	movl	(%esi), %edi
	movl	%eax, %ebx
	addl	$0, %ebx
	movl	-104(%ebp), %ecx        # 4-byte Reload
	imull	(%ecx), %ebx
	movl	%ebx, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %edi
	andl	%edi, %edx
	addl	$0, %eax
	movl	-104(%ebp), %edi        # 4-byte Reload
	imull	(%edi), %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %edx
	movl	-88(%ebp), %eax         # 4-byte Reload
	movl	%edx, (%eax)
# BB#26:                                # %__1019
                                        #   in Loop: Header=BB0_14 Depth=2
	movl	$4, %eax
	movl	-76(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	movl	-64(%ebp), %esi         # 4-byte Reload
	movl	(%esi), %edi
	movl	%eax, %ebx
	addl	$0, %ebx
	movl	-96(%ebp), %ecx         # 4-byte Reload
	imull	(%ecx), %ebx
	movl	%ebx, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %edi
	andl	%edi, %edx
	addl	$0, %eax
	movl	-96(%ebp), %edi         # 4-byte Reload
	imull	(%edi), %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %edx
	movl	-92(%ebp), %eax         # 4-byte Reload
	movl	%edx, (%eax)
# BB#27:                                # %__1020
                                        #   in Loop: Header=BB0_14 Depth=2
	movl	-88(%ebp), %eax         # 4-byte Reload
	movl	(%eax), %ecx
	movl	-92(%ebp), %edx         # 4-byte Reload
	cmpl	(%edx), %ecx
	setl	%bl
	andb	$1, %bl
	movzbl	%bl, %ecx
	cmpl	$0, %ecx
	je	.LBB0_33
# BB#28:                                # %__1022
                                        #   in Loop: Header=BB0_14 Depth=2
	jmp	.LBB0_29
.LBB0_29:                               # %__1023
                                        #   in Loop: Header=BB0_14 Depth=2
	movl	-88(%ebp), %eax         # 4-byte Reload
	movl	(%eax), %ecx
	movl	-84(%ebp), %edx         # 4-byte Reload
	movl	%ecx, (%edx)
# BB#30:                                # %__1024
                                        #   in Loop: Header=BB0_14 Depth=2
	movl	$4, %eax
	movl	-76(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	movl	-64(%ebp), %esi         # 4-byte Reload
	movl	(%esi), %edi
	movl	%eax, %ebx
	addl	$0, %ebx
	movl	-104(%ebp), %ecx        # 4-byte Reload
	imull	(%ecx), %ebx
	movl	%ebx, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %edi
	xorl	$4294967295, %edi       # imm = 0xFFFFFFFF
	andl	%edi, %edx
	movl	-92(%ebp), %edi         # 4-byte Reload
	movl	(%edi), %ebx
	addl	$0, %eax
	movl	-104(%ebp), %ecx        # 4-byte Reload
	imull	(%ecx), %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %ebx
	addl	%ebx, %edx
	movl	-76(%ebp), %eax         # 4-byte Reload
	movl	%edx, (%eax)
# BB#31:                                # %__1025
                                        #   in Loop: Header=BB0_14 Depth=2
	movl	$4, %eax
	movl	-76(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	movl	-64(%ebp), %esi         # 4-byte Reload
	movl	(%esi), %edi
	movl	%eax, %ebx
	addl	$0, %ebx
	movl	-96(%ebp), %ecx         # 4-byte Reload
	imull	(%ecx), %ebx
	movl	%ebx, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %edi
	xorl	$4294967295, %edi       # imm = 0xFFFFFFFF
	andl	%edi, %edx
	movl	-84(%ebp), %edi         # 4-byte Reload
	movl	(%edi), %ebx
	addl	$0, %eax
	movl	-96(%ebp), %ecx         # 4-byte Reload
	imull	(%ecx), %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %ebx
	addl	%ebx, %edx
	movl	-76(%ebp), %eax         # 4-byte Reload
	movl	%edx, (%eax)
# BB#32:                                # %__1026
                                        #   in Loop: Header=BB0_14 Depth=2
	movl	-96(%ebp), %eax         # 4-byte Reload
	movl	(%eax), %ecx
	movl	-104(%ebp), %edx        # 4-byte Reload
	movl	%ecx, (%edx)
	jmp	.LBB0_34
.LBB0_33:                               # %__1028
                                        #   in Loop: Header=BB0_14 Depth=2
	movl	$1, %eax
	addl	$0, %eax
	movl	-100(%ebp), %ecx        # 4-byte Reload
	movl	%eax, (%ecx)
	jmp	.LBB0_35
.LBB0_34:                               # %__1027
                                        #   in Loop: Header=BB0_14 Depth=2
	jmp	.LBB0_36
.LBB0_35:                               # %__1029
                                        #   in Loop: Header=BB0_14 Depth=2
	jmp	.LBB0_36
.LBB0_36:                               # %__1030
                                        #   in Loop: Header=BB0_14 Depth=2
	jmp	.LBB0_14
.LBB0_37:                               # %__1006
                                        #   in Loop: Header=BB0_11 Depth=1
	movl	$1, %eax
	movl	-72(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	addl	$0, %eax
	subl	%eax, %edx
	movl	%edx, (%ecx)
# BB#38:                                # %__1031
                                        #   in Loop: Header=BB0_11 Depth=1
	jmp	.LBB0_11
.LBB0_39:                               # %__1001
	movl	$1, %eax
	movl	-68(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	addl	$0, %eax
	subl	%eax, %edx
	movl	-72(%ebp), %eax         # 4-byte Reload
	movl	%edx, (%eax)
# BB#40:                                # %__1032
	jmp	.LBB0_41
.LBB0_41:                               # %__1033
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_47 Depth 2
	movl	$1, %eax
	movl	-72(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	addl	$0, %eax
	cmpl	%eax, %edx
	setge	%bl
	andb	$1, %bl
	movzbl	%bl, %eax
	cmpl	$0, %eax
	je	.LBB0_72
# BB#42:                                # %__1035
                                        #   in Loop: Header=BB0_41 Depth=1
	movl	$0, %eax
	movl	$1, %ecx
	movl	%esp, %edx
	addl	$-16, %edx
	movl	%edx, %esp
	movl	%esp, %esi
	addl	$-16, %esi
	movl	%esi, %esp
	movl	%esp, %edi
	addl	$-16, %edi
	movl	%edi, %esp
	movl	%esp, %ebx
	addl	$-16, %ebx
	movl	%ebx, %esp
	movl	%eax, -124(%ebp)        # 4-byte Spill
	movl	%esp, %eax
	addl	$-16, %eax
	movl	%eax, %esp
	movl	%eax, -128(%ebp)        # 4-byte Spill
	movl	%esp, %eax
	addl	$-16, %eax
	movl	%eax, %esp
	movl	%eax, -132(%ebp)        # 4-byte Spill
	movl	%esp, %eax
	addl	$-16, %eax
	movl	%eax, %esp
	movl	%eax, -136(%ebp)        # 4-byte Spill
	movl	-124(%ebp), %eax        # 4-byte Reload
	addl	$0, %eax
	movl	%eax, (%edx)
	movl	-72(%ebp), %eax         # 4-byte Reload
	movl	(%eax), %eax
	addl	$0, %ecx
	subl	%ecx, %eax
	movl	%eax, (%esi)
	movl	-124(%ebp), %eax        # 4-byte Reload
	addl	$0, %eax
	movl	%eax, (%edi)
	movl	-124(%ebp), %eax        # 4-byte Reload
	addl	$0, %eax
	movl	%eax, (%ebx)
	movl	-124(%ebp), %eax        # 4-byte Reload
	addl	$0, %eax
	movl	-128(%ebp), %ecx        # 4-byte Reload
	movl	%eax, (%ecx)
	movl	-124(%ebp), %eax        # 4-byte Reload
	addl	$0, %eax
	movl	-132(%ebp), %ecx        # 4-byte Reload
	movl	%eax, (%ecx)
	movl	-124(%ebp), %eax        # 4-byte Reload
	addl	$0, %eax
	movl	-136(%ebp), %ecx        # 4-byte Reload
	movl	%eax, (%ecx)
	movl	%ebx, -140(%ebp)        # 4-byte Spill
	movl	%edi, -144(%ebp)        # 4-byte Spill
	movl	%edx, -148(%ebp)        # 4-byte Spill
	movl	%esi, -152(%ebp)        # 4-byte Spill
# BB#43:                                # %__1036
                                        #   in Loop: Header=BB0_41 Depth=1
	movl	-76(%ebp), %eax         # 4-byte Reload
	movl	(%eax), %ecx
	movl	-64(%ebp), %edx         # 4-byte Reload
	andl	(%edx), %ecx
	movl	-128(%ebp), %esi        # 4-byte Reload
	movl	%ecx, (%esi)
# BB#44:                                # %__1037
                                        #   in Loop: Header=BB0_41 Depth=1
	movl	$4, %eax
	movl	-76(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	movl	-64(%ebp), %esi         # 4-byte Reload
	movl	(%esi), %edi
	xorl	$4294967295, %edi       # imm = 0xFFFFFFFF
	andl	%edi, %edx
	movl	(%ecx), %edi
	movl	(%esi), %ebx
	movl	%eax, %ecx
	addl	$0, %ecx
	movl	-72(%ebp), %esi         # 4-byte Reload
	imull	(%esi), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %ebx
	andl	%ebx, %edi
	addl	$0, %eax
	imull	(%esi), %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %edi
	addl	%edi, %edx
	movl	-76(%ebp), %eax         # 4-byte Reload
	movl	%edx, (%eax)
# BB#45:                                # %__1038
                                        #   in Loop: Header=BB0_41 Depth=1
	movl	$4, %eax
	movl	-76(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	movl	-64(%ebp), %esi         # 4-byte Reload
	movl	(%esi), %edi
	movl	%eax, %ebx
	addl	$0, %ebx
	movl	-72(%ebp), %ecx         # 4-byte Reload
	imull	(%ecx), %ebx
	movl	%ebx, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %edi
	xorl	$4294967295, %edi       # imm = 0xFFFFFFFF
	andl	%edi, %edx
	movl	-128(%ebp), %edi        # 4-byte Reload
	movl	(%edi), %ebx
	addl	$0, %eax
	movl	-72(%ebp), %ecx         # 4-byte Reload
	imull	(%ecx), %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %ebx
	addl	%ebx, %edx
	movl	-76(%ebp), %eax         # 4-byte Reload
	movl	%edx, (%eax)
# BB#46:                                # %__1039
                                        #   in Loop: Header=BB0_41 Depth=1
	movl	$0, %eax
	addl	$0, %eax
	movl	-144(%ebp), %ecx        # 4-byte Reload
	movl	%eax, (%ecx)
.LBB0_47:                               # %__1040
                                        #   Parent Loop BB0_41 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$2, %eax
	movl	-148(%ebp), %ecx        # 4-byte Reload
	movl	(%ecx), %edx
	addl	$0, %eax
	imull	%eax, %edx
	movl	-152(%ebp), %eax        # 4-byte Reload
	cmpl	(%eax), %edx
	setle	%bl
	andb	$1, %bl
	movzbl	%bl, %edx
	movl	-144(%ebp), %esi        # 4-byte Reload
	cmpl	$0, (%esi)
	sete	%bl
	andb	$1, %bl
	movzbl	%bl, %edi
	andl	%edi, %edx
	cmpl	$0, %edx
	je	.LBB0_70
# BB#48:                                # %__1041
                                        #   in Loop: Header=BB0_47 Depth=2
	jmp	.LBB0_49
.LBB0_49:                               # %__1043
                                        #   in Loop: Header=BB0_47 Depth=2
	movl	$2, %eax
	movl	-148(%ebp), %ecx        # 4-byte Reload
	movl	(%ecx), %edx
	addl	$0, %eax
	imull	%eax, %edx
	movl	-152(%ebp), %eax        # 4-byte Reload
	cmpl	(%eax), %edx
	sete	%bl
	andb	$1, %bl
	movzbl	%bl, %edx
	cmpl	$0, %edx
	je	.LBB0_51
# BB#50:                                # %__1045
                                        #   in Loop: Header=BB0_47 Depth=2
	movl	$2, %eax
	movl	-148(%ebp), %ecx        # 4-byte Reload
	movl	(%ecx), %edx
	addl	$0, %eax
	imull	%eax, %edx
	movl	-140(%ebp), %eax        # 4-byte Reload
	movl	%edx, (%eax)
	jmp	.LBB0_56
.LBB0_51:                               # %__1047
                                        #   in Loop: Header=BB0_47 Depth=2
	movl	$1, %eax
	movl	$2, %ecx
	movl	$4, %edx
	movl	-76(%ebp), %esi         # 4-byte Reload
	movl	(%esi), %edi
	movl	-64(%ebp), %ebx         # 4-byte Reload
	movl	(%ebx), %esi
	movl	%edx, %ebx
	addl	$0, %ebx
	movl	%eax, -156(%ebp)        # 4-byte Spill
	movl	-148(%ebp), %eax        # 4-byte Reload
	imull	(%eax), %ebx
	movl	%ecx, %eax
	addl	$0, %eax
	imull	%eax, %ebx
	movl	%ecx, -160(%ebp)        # 4-byte Spill
	movl	%ebx, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	andl	%esi, %edi
	movl	%edx, %eax
	addl	$0, %eax
	movl	-148(%ebp), %esi        # 4-byte Reload
	imull	(%esi), %eax
	movl	-160(%ebp), %ebx        # 4-byte Reload
	addl	$0, %ebx
	imull	%ebx, %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %edi
	movl	-76(%ebp), %eax         # 4-byte Reload
	movl	(%eax), %ebx
	movl	-64(%ebp), %eax         # 4-byte Reload
	movl	(%eax), %eax
	movl	%edx, %ecx
	addl	$0, %ecx
	movl	(%esi), %esi
	movl	%eax, -164(%ebp)        # 4-byte Spill
	movl	-160(%ebp), %eax        # 4-byte Reload
	addl	$0, %eax
	imull	%eax, %esi
	movl	-156(%ebp), %eax        # 4-byte Reload
	addl	$0, %eax
	addl	%eax, %esi
	imull	%esi, %ecx
                                        # kill: CL<def> ECX<kill>
	movl	-164(%ebp), %eax        # 4-byte Reload
	shll	%cl, %eax
	andl	%eax, %ebx
	addl	$0, %edx
	movl	-148(%ebp), %eax        # 4-byte Reload
	movl	(%eax), %esi
	movl	-160(%ebp), %eax        # 4-byte Reload
	addl	$0, %eax
	imull	%eax, %esi
	movl	-156(%ebp), %eax        # 4-byte Reload
	addl	$0, %eax
	addl	%eax, %esi
	imull	%esi, %edx
	movl	%edx, %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %ebx
	cmpl	%ebx, %edi
	setg	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	cmpl	$0, %eax
	je	.LBB0_53
# BB#52:                                # %__1049
                                        #   in Loop: Header=BB0_47 Depth=2
	movl	$2, %eax
	movl	-148(%ebp), %ecx        # 4-byte Reload
	movl	(%ecx), %edx
	addl	$0, %eax
	imull	%eax, %edx
	movl	-140(%ebp), %eax        # 4-byte Reload
	movl	%edx, (%eax)
	jmp	.LBB0_54
.LBB0_53:                               # %__1051
                                        #   in Loop: Header=BB0_47 Depth=2
	movl	$1, %eax
	movl	$2, %ecx
	movl	-148(%ebp), %edx        # 4-byte Reload
	movl	(%edx), %esi
	addl	$0, %ecx
	imull	%ecx, %esi
	addl	$0, %eax
	addl	%eax, %esi
	movl	-140(%ebp), %eax        # 4-byte Reload
	movl	%esi, (%eax)
	jmp	.LBB0_55
.LBB0_54:                               # %__1050
                                        #   in Loop: Header=BB0_47 Depth=2
	jmp	.LBB0_57
.LBB0_55:                               # %__1052
                                        #   in Loop: Header=BB0_47 Depth=2
	jmp	.LBB0_57
.LBB0_56:                               # %__1046
                                        #   in Loop: Header=BB0_47 Depth=2
	jmp	.LBB0_58
.LBB0_57:                               # %__1053
                                        #   in Loop: Header=BB0_47 Depth=2
	jmp	.LBB0_58
.LBB0_58:                               # %__1054
                                        #   in Loop: Header=BB0_47 Depth=2
	movl	$4, %eax
	movl	-76(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	movl	-64(%ebp), %esi         # 4-byte Reload
	movl	(%esi), %edi
	movl	%eax, %ebx
	addl	$0, %ebx
	movl	-148(%ebp), %ecx        # 4-byte Reload
	imull	(%ecx), %ebx
	movl	%ebx, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %edi
	andl	%edi, %edx
	addl	$0, %eax
	movl	-148(%ebp), %edi        # 4-byte Reload
	imull	(%edi), %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %edx
	movl	-132(%ebp), %eax        # 4-byte Reload
	movl	%edx, (%eax)
# BB#59:                                # %__1055
                                        #   in Loop: Header=BB0_47 Depth=2
	movl	$4, %eax
	movl	-76(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	movl	-64(%ebp), %esi         # 4-byte Reload
	movl	(%esi), %edi
	movl	%eax, %ebx
	addl	$0, %ebx
	movl	-140(%ebp), %ecx        # 4-byte Reload
	imull	(%ecx), %ebx
	movl	%ebx, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %edi
	andl	%edi, %edx
	addl	$0, %eax
	movl	-140(%ebp), %edi        # 4-byte Reload
	imull	(%edi), %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %edx
	movl	-136(%ebp), %eax        # 4-byte Reload
	movl	%edx, (%eax)
# BB#60:                                # %__1056
                                        #   in Loop: Header=BB0_47 Depth=2
	movl	-132(%ebp), %eax        # 4-byte Reload
	movl	(%eax), %ecx
	movl	-136(%ebp), %edx        # 4-byte Reload
	cmpl	(%edx), %ecx
	setl	%bl
	andb	$1, %bl
	movzbl	%bl, %ecx
	cmpl	$0, %ecx
	je	.LBB0_66
# BB#61:                                # %__1058
                                        #   in Loop: Header=BB0_47 Depth=2
	jmp	.LBB0_62
.LBB0_62:                               # %__1059
                                        #   in Loop: Header=BB0_47 Depth=2
	movl	-132(%ebp), %eax        # 4-byte Reload
	movl	(%eax), %ecx
	movl	-128(%ebp), %edx        # 4-byte Reload
	movl	%ecx, (%edx)
# BB#63:                                # %__1060
                                        #   in Loop: Header=BB0_47 Depth=2
	movl	$4, %eax
	movl	-76(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	movl	-64(%ebp), %esi         # 4-byte Reload
	movl	(%esi), %edi
	movl	%eax, %ebx
	addl	$0, %ebx
	movl	-148(%ebp), %ecx        # 4-byte Reload
	imull	(%ecx), %ebx
	movl	%ebx, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %edi
	xorl	$4294967295, %edi       # imm = 0xFFFFFFFF
	andl	%edi, %edx
	movl	-136(%ebp), %edi        # 4-byte Reload
	movl	(%edi), %ebx
	addl	$0, %eax
	movl	-148(%ebp), %ecx        # 4-byte Reload
	imull	(%ecx), %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %ebx
	addl	%ebx, %edx
	movl	-76(%ebp), %eax         # 4-byte Reload
	movl	%edx, (%eax)
# BB#64:                                # %__1061
                                        #   in Loop: Header=BB0_47 Depth=2
	movl	$4, %eax
	movl	-76(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	movl	-64(%ebp), %esi         # 4-byte Reload
	movl	(%esi), %edi
	movl	%eax, %ebx
	addl	$0, %ebx
	movl	-140(%ebp), %ecx        # 4-byte Reload
	imull	(%ecx), %ebx
	movl	%ebx, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %edi
	xorl	$4294967295, %edi       # imm = 0xFFFFFFFF
	andl	%edi, %edx
	movl	-128(%ebp), %edi        # 4-byte Reload
	movl	(%edi), %ebx
	addl	$0, %eax
	movl	-140(%ebp), %ecx        # 4-byte Reload
	imull	(%ecx), %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %ebx
	addl	%ebx, %edx
	movl	-76(%ebp), %eax         # 4-byte Reload
	movl	%edx, (%eax)
# BB#65:                                # %__1062
                                        #   in Loop: Header=BB0_47 Depth=2
	movl	-140(%ebp), %eax        # 4-byte Reload
	movl	(%eax), %ecx
	movl	-148(%ebp), %edx        # 4-byte Reload
	movl	%ecx, (%edx)
	jmp	.LBB0_67
.LBB0_66:                               # %__1064
                                        #   in Loop: Header=BB0_47 Depth=2
	movl	$1, %eax
	addl	$0, %eax
	movl	-144(%ebp), %ecx        # 4-byte Reload
	movl	%eax, (%ecx)
	jmp	.LBB0_68
.LBB0_67:                               # %__1063
                                        #   in Loop: Header=BB0_47 Depth=2
	jmp	.LBB0_69
.LBB0_68:                               # %__1065
                                        #   in Loop: Header=BB0_47 Depth=2
	jmp	.LBB0_69
.LBB0_69:                               # %__1066
                                        #   in Loop: Header=BB0_47 Depth=2
	jmp	.LBB0_47
.LBB0_70:                               # %__1042
                                        #   in Loop: Header=BB0_41 Depth=1
	movl	$1, %eax
	movl	-72(%ebp), %ecx         # 4-byte Reload
	movl	(%ecx), %edx
	addl	$0, %eax
	subl	%eax, %edx
	movl	%edx, (%ecx)
# BB#71:                                # %__1067
                                        #   in Loop: Header=BB0_41 Depth=1
	jmp	.LBB0_41
.LBB0_72:                               # %__1034
	movl	-76(%ebp), %eax         # 4-byte Reload
	movl	(%eax), %ecx
	movl	%ecx, -16(%ebp)
# BB#73:                                # %__1068
	movl	$0, %eax
	movl	%esp, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	addl	$0, %eax
	movl	%eax, (%ecx)
	movl	%ecx, -168(%ebp)        # 4-byte Spill
.LBB0_74:                               # %__1069
                                        # =>This Inner Loop Header: Depth=1
	movl	-168(%ebp), %eax        # 4-byte Reload
	movl	(%eax), %ecx
	cmpl	-20(%ebp), %ecx
	setl	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	cmpl	$0, %ecx
	je	.LBB0_85
# BB#75:                                # %__1071
                                        #   in Loop: Header=BB0_74 Depth=1
	movl	$4, %eax
	movl	%esp, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	movl	-16(%ebp), %edx
	movl	-24(%ebp), %esi
	movl	%eax, %edi
	addl	$0, %edi
	movl	-168(%ebp), %ebx        # 4-byte Reload
	imull	(%ebx), %edi
	movl	%ecx, -172(%ebp)        # 4-byte Spill
	movl	%edi, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	andl	%esi, %edx
	addl	$0, %eax
	imull	(%ebx), %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %edx
	movl	-172(%ebp), %eax        # 4-byte Reload
	movl	%edx, (%eax)
# BB#76:                                # %__1072
                                        #   in Loop: Header=BB0_74 Depth=1
	cmpl	$0, -28(%ebp)
	je	.LBB0_83
# BB#77:                                # %__1074
                                        #   in Loop: Header=BB0_74 Depth=1
	movl	-172(%ebp), %eax        # 4-byte Reload
	movl	(%eax), %ecx
	cmpl	-32(%ebp), %ecx
	setge	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	cmpl	$0, %ecx
	je	.LBB0_79
# BB#78:                                # %__1076
                                        #   in Loop: Header=BB0_74 Depth=1
	movl	-172(%ebp), %eax        # 4-byte Reload
	movl	(%eax), %ecx
	movl	%ecx, -32(%ebp)
	jmp	.LBB0_80
.LBB0_79:                               # %__1078
                                        #   in Loop: Header=BB0_74 Depth=1
	movl	$0, %eax
	addl	$0, %eax
	movl	%eax, -28(%ebp)
	jmp	.LBB0_81
.LBB0_80:                               # %__1077
                                        #   in Loop: Header=BB0_74 Depth=1
	jmp	.LBB0_82
.LBB0_81:                               # %__1079
                                        #   in Loop: Header=BB0_74 Depth=1
	jmp	.LBB0_82
.LBB0_82:                               # %__1080
                                        #   in Loop: Header=BB0_74 Depth=1
	jmp	.LBB0_83
.LBB0_83:                               # %__1073
                                        #   in Loop: Header=BB0_74 Depth=1
	movl	$1, %eax
	movl	-168(%ebp), %ecx        # 4-byte Reload
	movl	(%ecx), %edx
	addl	$0, %eax
	addl	%eax, %edx
	movl	%edx, (%ecx)
# BB#84:                                # %__1081
                                        #   in Loop: Header=BB0_74 Depth=1
	jmp	.LBB0_74
.LBB0_85:                               # %__1070
	movl	-28(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	ret
.Ltmp9:
	.size	program, .Ltmp9-program
	.cfi_endproc


	.section	".note.GNU-stack","",@progbits
