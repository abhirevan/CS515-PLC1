	.file	"<stdin>"
	.text
	.globl	program
	.align	16, 0x90
	.type	program,@function
program:                                # @program
	.cfi_startproc
# BB#0:                                 # %__749
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
	movl	$0, %edx
	movl	$7, %esi
	addl	$0, %esi
	movl	%esi, -16(%ebp)
	movl	%edx, %esi
	addl	$0, %esi
	movl	%esi, -20(%ebp)
	movl	%edx, %esi
	addl	$0, %esi
	movl	%esi, -24(%ebp)
	movl	%edx, %esi
	addl	$0, %esi
	movl	%esi, -28(%ebp)
	movl	%edx, %esi
	addl	$0, %esi
	movl	%esi, -32(%ebp)
	movl	%edx, %esi
	addl	$0, %esi
	movl	%esi, -36(%ebp)
	movl	-16(%ebp), %esi
	movl	%esi, -40(%ebp)
	movl	%edx, %esi
	addl	$0, %esi
	movl	%esi, -44(%ebp)
	movl	%edx, %esi
	addl	$0, %esi
	movl	%esi, -48(%ebp)
	movl	%edx, %esi
	addl	$0, %esi
	movl	%esi, -52(%ebp)
	movl	%edx, %esi
	addl	$0, %esi
	movl	%esi, -56(%ebp)
	addl	$0, %edx
	movl	%edx, -60(%ebp)
	addl	$0, %ecx
	movl	%ecx, -64(%ebp)
	movl	%eax, %ecx
	addl	$0, %ecx
	movl	%ecx, -68(%ebp)
	addl	$0, %eax
	imull	$4294967295, %eax, %eax # imm = 0xFFFFFFFF
	movl	%eax, -72(%ebp)
# BB#1:                                 # %__748
	movl	$1, %eax
	movl	-20(%ebp), %ecx
	movl	-64(%ebp), %edx
	xorl	$4294967295, %edx       # imm = 0xFFFFFFFF
	andl	%edx, %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, -20(%ebp)
# BB#2:                                 # %__747
	movl	$4, %eax
	movl	$6, %ecx
	movl	-20(%ebp), %edx
	movl	-64(%ebp), %esi
	movl	%eax, %edi
	addl	$0, %edi
	movl	%ecx, -76(%ebp)         # 4-byte Spill
	movl	%edi, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	xorl	$4294967295, %esi       # imm = 0xFFFFFFFF
	andl	%esi, %edx
	movl	-76(%ebp), %esi         # 4-byte Reload
	addl	$0, %esi
	addl	$0, %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	addl	%esi, %edx
	movl	%edx, -20(%ebp)
# BB#3:                                 # %__746
	movl	$8, %eax
	movl	$9, %ecx
	movl	-20(%ebp), %edx
	movl	-64(%ebp), %esi
	movl	%eax, %edi
	addl	$0, %edi
	movl	%ecx, -80(%ebp)         # 4-byte Spill
	movl	%edi, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	xorl	$4294967295, %esi       # imm = 0xFFFFFFFF
	andl	%esi, %edx
	movl	-80(%ebp), %esi         # 4-byte Reload
	addl	$0, %esi
	addl	$0, %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	addl	%esi, %edx
	movl	%edx, -20(%ebp)
# BB#4:                                 # %__745
	movl	$12, %eax
	movl	$7, %ecx
	movl	-20(%ebp), %edx
	movl	-64(%ebp), %esi
	movl	%eax, %edi
	addl	$0, %edi
	movl	%ecx, -84(%ebp)         # 4-byte Spill
	movl	%edi, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	xorl	$4294967295, %esi       # imm = 0xFFFFFFFF
	andl	%esi, %edx
	movl	-84(%ebp), %esi         # 4-byte Reload
	addl	$0, %esi
	addl	$0, %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	addl	%esi, %edx
	movl	%edx, -20(%ebp)
# BB#5:                                 # %__744
	movl	$16, %eax
	movl	$0, %ecx
	movl	-20(%ebp), %edx
	movl	-64(%ebp), %esi
	movl	%eax, %edi
	addl	$0, %edi
	movl	%ecx, -88(%ebp)         # 4-byte Spill
	movl	%edi, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	xorl	$4294967295, %esi       # imm = 0xFFFFFFFF
	andl	%esi, %edx
	movl	-88(%ebp), %esi         # 4-byte Reload
	addl	$0, %esi
	addl	$0, %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	addl	%esi, %edx
	movl	%edx, -20(%ebp)
# BB#6:                                 # %__743
	movl	$20, %eax
	movl	$4, %ecx
	movl	-20(%ebp), %edx
	movl	-64(%ebp), %esi
	movl	%eax, %edi
	addl	$0, %edi
	movl	%ecx, -92(%ebp)         # 4-byte Spill
	movl	%edi, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	xorl	$4294967295, %esi       # imm = 0xFFFFFFFF
	andl	%esi, %edx
	movl	-92(%ebp), %esi         # 4-byte Reload
	addl	$0, %esi
	addl	$0, %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	addl	%esi, %edx
	movl	%edx, -20(%ebp)
# BB#7:                                 # %__742
	movl	$24, %eax
	movl	$5, %ecx
	movl	-20(%ebp), %edx
	movl	-64(%ebp), %esi
	movl	%eax, %edi
	addl	$0, %edi
	movl	%ecx, -96(%ebp)         # 4-byte Spill
	movl	%edi, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	xorl	$4294967295, %esi       # imm = 0xFFFFFFFF
	andl	%esi, %edx
	movl	-96(%ebp), %esi         # 4-byte Reload
	addl	$0, %esi
	addl	$0, %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	addl	%esi, %edx
	movl	%edx, -20(%ebp)
# BB#8:                                 # %__741
	movl	$1, %eax
	addl	$0, %eax
	movl	%eax, -44(%ebp)
# BB#9:                                 # %__690
	jmp	.LBB0_10
.LBB0_10:                               # %__691
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #       Child Loop BB0_24 Depth 3
                                        #       Child Loop BB0_35 Depth 3
                                        #       Child Loop BB0_40 Depth 3
                                        #     Child Loop BB0_48 Depth 2
                                        #     Child Loop BB0_55 Depth 2
	movl	-44(%ebp), %eax
	cmpl	-40(%ebp), %eax
	setl	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	cmpl	$0, %eax
	je	.LBB0_60
# BB#11:                                # %__740
                                        #   in Loop: Header=BB0_10 Depth=1
	jmp	.LBB0_12
.LBB0_12:                               # %__739
                                        #   in Loop: Header=BB0_10 Depth=1
	movl	$0, %eax
	addl	$0, %eax
	movl	%eax, -48(%ebp)
# BB#13:                                # %__738
                                        #   in Loop: Header=BB0_10 Depth=1
	movl	$0, %eax
	addl	$0, %eax
	movl	%eax, -36(%ebp)
.LBB0_14:                               # %__706
                                        #   Parent Loop BB0_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_24 Depth 3
                                        #       Child Loop BB0_35 Depth 3
                                        #       Child Loop BB0_40 Depth 3
	movl	-48(%ebp), %eax
	addl	-44(%ebp), %eax
	cmpl	-40(%ebp), %eax
	setl	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	cmpl	$0, %eax
	je	.LBB0_46
# BB#15:                                # %__737
                                        #   in Loop: Header=BB0_14 Depth=2
	jmp	.LBB0_16
.LBB0_16:                               # %__736
                                        #   in Loop: Header=BB0_14 Depth=2
	movl	$1, %eax
	movl	-48(%ebp), %ecx
	addl	-44(%ebp), %ecx
	addl	$0, %eax
	subl	%eax, %ecx
	movl	%ecx, -52(%ebp)
# BB#17:                                # %__735
                                        #   in Loop: Header=BB0_14 Depth=2
	movl	$1, %eax
	movl	-52(%ebp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, -56(%ebp)
# BB#18:                                # %__734
                                        #   in Loop: Header=BB0_14 Depth=2
	movl	$1, %eax
	movl	-56(%ebp), %ecx
	addl	-44(%ebp), %ecx
	addl	$0, %eax
	subl	%eax, %ecx
	movl	%ecx, -60(%ebp)
# BB#19:                                # %__733
                                        #   in Loop: Header=BB0_14 Depth=2
	movl	-60(%ebp), %eax
	cmpl	-40(%ebp), %eax
	setge	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	cmpl	$0, %eax
	je	.LBB0_21
# BB#20:                                # %__731
                                        #   in Loop: Header=BB0_14 Depth=2
	movl	$1, %eax
	movl	-40(%ebp), %ecx
	addl	$0, %eax
	subl	%eax, %ecx
	movl	%ecx, -60(%ebp)
	jmp	.LBB0_22
.LBB0_21:                               # %__732
                                        #   in Loop: Header=BB0_14 Depth=2
	jmp	.LBB0_22
.LBB0_22:                               # %__730
                                        #   in Loop: Header=BB0_14 Depth=2
	movl	-48(%ebp), %eax
	movl	%eax, -28(%ebp)
# BB#23:                                # %__729
                                        #   in Loop: Header=BB0_14 Depth=2
	movl	-56(%ebp), %eax
	movl	%eax, -32(%ebp)
.LBB0_24:                               # %__718
                                        #   Parent Loop BB0_10 Depth=1
                                        #     Parent Loop BB0_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-28(%ebp), %eax
	cmpl	-52(%ebp), %eax
	setle	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	movl	-32(%ebp), %edx
	cmpl	-60(%ebp), %edx
	setle	%cl
	andb	$1, %cl
	movzbl	%cl, %edx
	andl	%edx, %eax
	cmpl	$0, %eax
	je	.LBB0_35
# BB#25:                                # %__728
                                        #   in Loop: Header=BB0_24 Depth=3
	movl	-20(%ebp), %eax
	movl	-64(%ebp), %ecx
	movb	-28(%ebp), %dl
	shlb	$2, %dl
	movl	%ecx, -100(%ebp)        # 4-byte Spill
	movb	%dl, %cl
	movl	-100(%ebp), %esi        # 4-byte Reload
	shll	%cl, %esi
	andl	%esi, %eax
	movb	%dl, %cl
	sarl	%cl, %eax
	movl	%esp, %esi
	movl	%esi, %edi
	addl	$-16, %edi
	movl	%edi, %esp
	movl	%eax, -16(%esi)
	movl	-20(%ebp), %eax
	movl	-64(%ebp), %esi
	movb	-32(%ebp), %cl
	shlb	$2, %cl
	movb	%cl, -101(%ebp)         # 1-byte Spill
	shll	%cl, %esi
	andl	%esi, %eax
	movb	-101(%ebp), %cl         # 1-byte Reload
	sarl	%cl, %eax
	movl	%esp, %esi
	addl	$-16, %esi
	movl	%esi, %esp
	movl	%eax, (%esi)
	movl	%edi, -108(%ebp)        # 4-byte Spill
	movl	%esi, -112(%ebp)        # 4-byte Spill
# BB#26:                                # %__727
                                        #   in Loop: Header=BB0_24 Depth=3
	movl	-108(%ebp), %eax        # 4-byte Reload
	movl	(%eax), %ecx
	movl	-112(%ebp), %edx        # 4-byte Reload
	cmpl	(%edx), %ecx
	setle	%bl
	andb	$1, %bl
	movzbl	%bl, %ecx
	cmpl	$0, %ecx
	je	.LBB0_31
# BB#27:                                # %__722
                                        #   in Loop: Header=BB0_24 Depth=3
	jmp	.LBB0_28
.LBB0_28:                               # %__721
                                        #   in Loop: Header=BB0_24 Depth=3
	movl	$4, %eax
	movl	-24(%ebp), %ecx
	movl	-64(%ebp), %edx
	movl	%eax, %esi
	addl	$0, %esi
	imull	-36(%ebp), %esi
	movl	%ecx, -116(%ebp)        # 4-byte Spill
	movl	%esi, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %edx
	xorl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movl	-116(%ebp), %esi        # 4-byte Reload
	andl	%edx, %esi
	movl	-108(%ebp), %edx        # 4-byte Reload
	movl	(%edx), %edi
	addl	$0, %eax
	imull	-36(%ebp), %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %edi
	addl	%edi, %esi
	movl	%esi, -24(%ebp)
# BB#29:                                # %__720
                                        #   in Loop: Header=BB0_24 Depth=3
	movl	$1, %eax
	movl	-36(%ebp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, -36(%ebp)
# BB#30:                                # %__719
                                        #   in Loop: Header=BB0_24 Depth=3
	movl	$1, %eax
	movl	-28(%ebp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, -28(%ebp)
	jmp	.LBB0_24
.LBB0_31:                               # %__726
                                        #   in Loop: Header=BB0_24 Depth=3
	jmp	.LBB0_32
.LBB0_32:                               # %__725
                                        #   in Loop: Header=BB0_24 Depth=3
	movl	$4, %eax
	movl	-24(%ebp), %ecx
	movl	-64(%ebp), %edx
	movl	%eax, %esi
	addl	$0, %esi
	imull	-36(%ebp), %esi
	movl	%ecx, -120(%ebp)        # 4-byte Spill
	movl	%esi, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %edx
	xorl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movl	-120(%ebp), %esi        # 4-byte Reload
	andl	%edx, %esi
	movl	-112(%ebp), %edx        # 4-byte Reload
	movl	(%edx), %edi
	addl	$0, %eax
	imull	-36(%ebp), %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %edi
	addl	%edi, %esi
	movl	%esi, -24(%ebp)
# BB#33:                                # %__724
                                        #   in Loop: Header=BB0_24 Depth=3
	movl	$1, %eax
	movl	-36(%ebp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, -36(%ebp)
# BB#34:                                # %__723
                                        #   in Loop: Header=BB0_24 Depth=3
	movl	$1, %eax
	movl	-32(%ebp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, -32(%ebp)
	jmp	.LBB0_24
.LBB0_35:                               # %__713
                                        #   Parent Loop BB0_10 Depth=1
                                        #     Parent Loop BB0_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-28(%ebp), %eax
	cmpl	-52(%ebp), %eax
	setle	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	cmpl	$0, %eax
	je	.LBB0_40
# BB#36:                                # %__717
                                        #   in Loop: Header=BB0_35 Depth=3
	movl	-20(%ebp), %eax
	movl	-64(%ebp), %ecx
	movb	-28(%ebp), %dl
	shlb	$2, %dl
	movl	%ecx, -124(%ebp)        # 4-byte Spill
	movb	%dl, %cl
	movl	-124(%ebp), %esi        # 4-byte Reload
	shll	%cl, %esi
	andl	%esi, %eax
	movb	%dl, %cl
	sarl	%cl, %eax
	movl	%esp, %esi
	addl	$-16, %esi
	movl	%esi, %esp
	movl	%eax, (%esi)
	movl	%esi, -128(%ebp)        # 4-byte Spill
# BB#37:                                # %__716
                                        #   in Loop: Header=BB0_35 Depth=3
	movl	$4, %eax
	movl	-24(%ebp), %ecx
	movl	-64(%ebp), %edx
	movl	%eax, %esi
	addl	$0, %esi
	imull	-36(%ebp), %esi
	movl	%ecx, -132(%ebp)        # 4-byte Spill
	movl	%esi, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %edx
	xorl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movl	-132(%ebp), %esi        # 4-byte Reload
	andl	%edx, %esi
	movl	-128(%ebp), %edx        # 4-byte Reload
	movl	(%edx), %edi
	addl	$0, %eax
	imull	-36(%ebp), %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %edi
	addl	%edi, %esi
	movl	%esi, -24(%ebp)
# BB#38:                                # %__715
                                        #   in Loop: Header=BB0_35 Depth=3
	movl	$1, %eax
	movl	-36(%ebp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, -36(%ebp)
# BB#39:                                # %__714
                                        #   in Loop: Header=BB0_35 Depth=3
	movl	$1, %eax
	movl	-28(%ebp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, -28(%ebp)
	jmp	.LBB0_35
.LBB0_40:                               # %__708
                                        #   Parent Loop BB0_10 Depth=1
                                        #     Parent Loop BB0_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-32(%ebp), %eax
	cmpl	-60(%ebp), %eax
	setle	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	cmpl	$0, %eax
	je	.LBB0_45
# BB#41:                                # %__712
                                        #   in Loop: Header=BB0_40 Depth=3
	movl	-20(%ebp), %eax
	movl	-64(%ebp), %ecx
	movb	-32(%ebp), %dl
	shlb	$2, %dl
	movl	%ecx, -136(%ebp)        # 4-byte Spill
	movb	%dl, %cl
	movl	-136(%ebp), %esi        # 4-byte Reload
	shll	%cl, %esi
	andl	%esi, %eax
	movb	%dl, %cl
	sarl	%cl, %eax
	movl	%esp, %esi
	addl	$-16, %esi
	movl	%esi, %esp
	movl	%eax, (%esi)
	movl	%esi, -140(%ebp)        # 4-byte Spill
# BB#42:                                # %__711
                                        #   in Loop: Header=BB0_40 Depth=3
	movl	$4, %eax
	movl	-24(%ebp), %ecx
	movl	-64(%ebp), %edx
	movl	%eax, %esi
	addl	$0, %esi
	imull	-36(%ebp), %esi
	movl	%ecx, -144(%ebp)        # 4-byte Spill
	movl	%esi, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %edx
	xorl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movl	-144(%ebp), %esi        # 4-byte Reload
	andl	%edx, %esi
	movl	-140(%ebp), %edx        # 4-byte Reload
	movl	(%edx), %edi
	addl	$0, %eax
	imull	-36(%ebp), %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %edi
	addl	%edi, %esi
	movl	%esi, -24(%ebp)
# BB#43:                                # %__710
                                        #   in Loop: Header=BB0_40 Depth=3
	movl	$1, %eax
	movl	-36(%ebp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, -36(%ebp)
# BB#44:                                # %__709
                                        #   in Loop: Header=BB0_40 Depth=3
	movl	$1, %eax
	movl	-32(%ebp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, -32(%ebp)
	jmp	.LBB0_40
.LBB0_45:                               # %__707
                                        #   in Loop: Header=BB0_14 Depth=2
	movl	$1, %eax
	movl	-60(%ebp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, -48(%ebp)
	jmp	.LBB0_14
.LBB0_46:                               # %__705
                                        #   in Loop: Header=BB0_10 Depth=1
	movl	-48(%ebp), %eax
	movl	%eax, -28(%ebp)
# BB#47:                                # %__699
                                        #   in Loop: Header=BB0_10 Depth=1
	jmp	.LBB0_48
.LBB0_48:                               # %__700
                                        #   Parent Loop BB0_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-36(%ebp), %eax
	cmpl	-40(%ebp), %eax
	setl	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	cmpl	$0, %eax
	je	.LBB0_53
# BB#49:                                # %__704
                                        #   in Loop: Header=BB0_48 Depth=2
	movl	-20(%ebp), %eax
	movl	-64(%ebp), %ecx
	movb	-28(%ebp), %dl
	shlb	$2, %dl
	movl	%ecx, -148(%ebp)        # 4-byte Spill
	movb	%dl, %cl
	movl	-148(%ebp), %esi        # 4-byte Reload
	shll	%cl, %esi
	andl	%esi, %eax
	movb	%dl, %cl
	sarl	%cl, %eax
	movl	%esp, %esi
	addl	$-16, %esi
	movl	%esi, %esp
	movl	%eax, (%esi)
	movl	%esi, -152(%ebp)        # 4-byte Spill
# BB#50:                                # %__703
                                        #   in Loop: Header=BB0_48 Depth=2
	movl	$4, %eax
	movl	-24(%ebp), %ecx
	movl	-64(%ebp), %edx
	movl	%eax, %esi
	addl	$0, %esi
	imull	-36(%ebp), %esi
	movl	%ecx, -156(%ebp)        # 4-byte Spill
	movl	%esi, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %edx
	xorl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movl	-156(%ebp), %esi        # 4-byte Reload
	andl	%edx, %esi
	movl	-152(%ebp), %edx        # 4-byte Reload
	movl	(%edx), %edi
	addl	$0, %eax
	imull	-36(%ebp), %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %edi
	addl	%edi, %esi
	movl	%esi, -24(%ebp)
# BB#51:                                # %__702
                                        #   in Loop: Header=BB0_48 Depth=2
	movl	$1, %eax
	movl	-36(%ebp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, -36(%ebp)
# BB#52:                                # %__701
                                        #   in Loop: Header=BB0_48 Depth=2
	movl	$1, %eax
	movl	-28(%ebp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, -28(%ebp)
	jmp	.LBB0_48
.LBB0_53:                               # %__698
                                        #   in Loop: Header=BB0_10 Depth=1
	movl	$0, %eax
	addl	$0, %eax
	movl	%eax, -28(%ebp)
# BB#54:                                # %__693
                                        #   in Loop: Header=BB0_10 Depth=1
	jmp	.LBB0_55
.LBB0_55:                               # %__694
                                        #   Parent Loop BB0_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-28(%ebp), %eax
	cmpl	-40(%ebp), %eax
	setl	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	cmpl	$0, %eax
	je	.LBB0_59
# BB#56:                                # %__697
                                        #   in Loop: Header=BB0_55 Depth=2
	movl	-24(%ebp), %eax
	movl	-64(%ebp), %ecx
	movb	-28(%ebp), %dl
	shlb	$2, %dl
	movl	%ecx, -160(%ebp)        # 4-byte Spill
	movb	%dl, %cl
	movl	-160(%ebp), %esi        # 4-byte Reload
	shll	%cl, %esi
	andl	%esi, %eax
	movb	%dl, %cl
	sarl	%cl, %eax
	movl	%esp, %esi
	addl	$-16, %esi
	movl	%esi, %esp
	movl	%eax, (%esi)
	movl	%esi, -164(%ebp)        # 4-byte Spill
# BB#57:                                # %__696
                                        #   in Loop: Header=BB0_55 Depth=2
	movl	$4, %eax
	movl	-20(%ebp), %ecx
	movl	-64(%ebp), %edx
	movl	%eax, %esi
	addl	$0, %esi
	imull	-28(%ebp), %esi
	movl	%ecx, -168(%ebp)        # 4-byte Spill
	movl	%esi, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %edx
	xorl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movl	-168(%ebp), %esi        # 4-byte Reload
	andl	%edx, %esi
	movl	-164(%ebp), %edx        # 4-byte Reload
	movl	(%edx), %edi
	addl	$0, %eax
	imull	-28(%ebp), %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %edi
	addl	%edi, %esi
	movl	%esi, -20(%ebp)
# BB#58:                                # %__695
                                        #   in Loop: Header=BB0_55 Depth=2
	movl	$1, %eax
	movl	-28(%ebp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, -28(%ebp)
	jmp	.LBB0_55
.LBB0_59:                               # %__692
                                        #   in Loop: Header=BB0_10 Depth=1
	movl	$2, %eax
	movl	-44(%ebp), %ecx
	addl	$0, %eax
	imull	%eax, %ecx
	movl	%ecx, -44(%ebp)
	jmp	.LBB0_10
.LBB0_60:                               # %__681
	xorl	%eax, %eax
	movl	%esp, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	movl	%eax, (%ecx)
	movl	%ecx, -172(%ebp)        # 4-byte Spill
.LBB0_61:                               # %__682
                                        # =>This Inner Loop Header: Depth=1
	movl	-172(%ebp), %eax        # 4-byte Reload
	movl	(%eax), %ecx
	cmpl	-16(%ebp), %ecx
	setl	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	cmpl	$0, %ecx
	je	.LBB0_69
# BB#62:                                # %__689
                                        #   in Loop: Header=BB0_61 Depth=1
	movl	-20(%ebp), %eax
	movl	-64(%ebp), %ecx
	movl	-172(%ebp), %edx        # 4-byte Reload
	movb	(%edx), %bl
	shlb	$2, %bl
	movl	%ecx, -176(%ebp)        # 4-byte Spill
	movb	%bl, %cl
	movl	-176(%ebp), %esi        # 4-byte Reload
	shll	%cl, %esi
	andl	%esi, %eax
	movb	%bl, %cl
	sarl	%cl, %eax
	movl	%esp, %esi
	addl	$-16, %esi
	movl	%esi, %esp
	movl	%eax, (%esi)
	movl	%esi, -180(%ebp)        # 4-byte Spill
# BB#63:                                # %__688
                                        #   in Loop: Header=BB0_61 Depth=1
	cmpl	$0, -68(%ebp)
	je	.LBB0_67
# BB#64:                                # %__686
                                        #   in Loop: Header=BB0_61 Depth=1
	movl	-180(%ebp), %eax        # 4-byte Reload
	movl	(%eax), %ecx
	cmpl	-72(%ebp), %ecx
	setge	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	cmpl	$0, %ecx
	je	.LBB0_66
# BB#65:                                # %__684
                                        #   in Loop: Header=BB0_61 Depth=1
	movl	-180(%ebp), %eax        # 4-byte Reload
	movl	(%eax), %ecx
	movl	%ecx, -72(%ebp)
	jmp	.LBB0_68
.LBB0_66:                               # %__685
                                        #   in Loop: Header=BB0_61 Depth=1
	movl	$0, %eax
	addl	$0, %eax
	movl	%eax, -68(%ebp)
	jmp	.LBB0_68
.LBB0_67:                               # %__687
                                        #   in Loop: Header=BB0_61 Depth=1
	jmp	.LBB0_68
.LBB0_68:                               # %__683
                                        #   in Loop: Header=BB0_61 Depth=1
	movl	$1, %eax
	movl	-172(%ebp), %ecx        # 4-byte Reload
	movl	(%ecx), %edx
	addl	$0, %eax
	addl	%eax, %edx
	movl	%edx, (%ecx)
	jmp	.LBB0_61
.LBB0_69:                               # %__680
	movl	-68(%ebp), %eax
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
