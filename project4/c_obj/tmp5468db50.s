	.file	"<stdin>"
	.text
	.globl	program
	.align	16, 0x90
	.type	program,@function
program:                                # @program
	.cfi_startproc
# BB#0:                                 # %__1046
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
	subl	$188, %esp
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
	movl	%edx, %edi
	addl	$0, %edi
	movl	%edx, %ebx
	addl	$0, %ebx
	movl	%eax, -76(%ebp)         # 4-byte Spill
	movl	%edx, %eax
	addl	$0, %eax
	movl	%eax, -80(%ebp)         # 4-byte Spill
	movl	%edx, %eax
	addl	$0, %eax
	movl	%eax, -84(%ebp)         # 4-byte Spill
	movl	%edx, %eax
	addl	$0, %eax
	movl	%eax, -88(%ebp)         # 4-byte Spill
	movl	-16(%ebp), %eax
	movl	%eax, -92(%ebp)         # 4-byte Spill
	movl	%edx, %eax
	addl	$0, %eax
	movl	%eax, -96(%ebp)         # 4-byte Spill
	movl	%edx, %eax
	addl	$0, %eax
	movl	%eax, -100(%ebp)        # 4-byte Spill
	movl	%edx, %eax
	addl	$0, %eax
	movl	%eax, -104(%ebp)        # 4-byte Spill
	movl	%edx, %eax
	addl	$0, %eax
	addl	$0, %edx
	addl	$0, %ecx
	movl	%eax, -108(%ebp)        # 4-byte Spill
	movl	-76(%ebp), %eax         # 4-byte Reload
	addl	$0, %eax
	movl	%eax, -112(%ebp)        # 4-byte Spill
	movl	-76(%ebp), %eax         # 4-byte Reload
	addl	$0, %eax
	imull	$4294967295, %eax, %eax # imm = 0xFFFFFFFF
	movl	%esi, -16(%ebp)
	movl	%edi, -20(%ebp)
	movl	%ebx, -24(%ebp)
	movl	-80(%ebp), %esi         # 4-byte Reload
	movl	%esi, -28(%ebp)
	movl	-84(%ebp), %edi         # 4-byte Reload
	movl	%edi, -32(%ebp)
	movl	-88(%ebp), %ebx         # 4-byte Reload
	movl	%ebx, -36(%ebp)
	movl	-92(%ebp), %esi         # 4-byte Reload
	movl	%esi, -40(%ebp)
	movl	-96(%ebp), %esi         # 4-byte Reload
	movl	%esi, -44(%ebp)
	movl	-100(%ebp), %esi        # 4-byte Reload
	movl	%esi, -48(%ebp)
	movl	-104(%ebp), %esi        # 4-byte Reload
	movl	%esi, -52(%ebp)
	movl	-108(%ebp), %esi        # 4-byte Reload
	movl	%esi, -56(%ebp)
	movl	%edx, -60(%ebp)
	movl	%ecx, -64(%ebp)
	movl	-112(%ebp), %ecx        # 4-byte Reload
	movl	%ecx, -68(%ebp)
	movl	%eax, -72(%ebp)
# BB#1:                                 # %__1047
	movl	$0, %eax
	movl	%esp, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	addl	$0, %eax
	movl	%eax, (%ecx)
	movl	%ecx, -116(%ebp)        # 4-byte Spill
.LBB0_2:                                # %__1049
                                        # =>This Inner Loop Header: Depth=1
	movl	-116(%ebp), %eax        # 4-byte Reload
	movl	(%eax), %ecx
	cmpl	-16(%ebp), %ecx
	setl	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	cmpl	$0, %ecx
	je	.LBB0_12
# BB#3:                                 # %__1051
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$1, %eax
	movl	-116(%ebp), %ecx        # 4-byte Reload
	movl	(%ecx), %edx
	addl	$0, %eax
	addl	%eax, %edx
	movl	%edx, (%ecx)
# BB#4:                                 # %__1052
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$4, %eax
	movl	%esp, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	movl	-20(%ebp), %edx
	movl	-64(%ebp), %esi
	movl	%eax, %edi
	addl	$0, %edi
	movl	-116(%ebp), %ebx        # 4-byte Reload
	imull	(%ebx), %edi
	movl	%ecx, -120(%ebp)        # 4-byte Spill
	movl	%edi, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	andl	%esi, %edx
	addl	$0, %eax
	imull	(%ebx), %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %edx
	movl	-120(%ebp), %eax        # 4-byte Reload
	movl	%edx, (%eax)
# BB#5:                                 # %__1054
                                        #   in Loop: Header=BB0_2 Depth=1
# BB#6:                                 # %__1056
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	-120(%ebp), %eax        # 4-byte Reload
	movl	(%eax), %ecx
	cmpl	-72(%ebp), %ecx
	setge	%dl
	andb	$1, %dl
	movzbl	%dl, %ecx
	cmpl	$0, %ecx
	je	.LBB0_8
# BB#7:                                 # %__1058
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	-120(%ebp), %eax        # 4-byte Reload
	movl	(%eax), %ecx
	movl	%ecx, -72(%ebp)
	jmp	.LBB0_9
.LBB0_8:                                # %__1060
                                        #   in Loop: Header=BB0_2 Depth=1
	movl	$0, %eax
	addl	$0, %eax
	movl	%eax, -68(%ebp)
	jmp	.LBB0_10
.LBB0_9:                                # %__1059
                                        #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_11
.LBB0_10:                               # %__1061
                                        #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_11
.LBB0_11:                               # %__1062
                                        #   in Loop: Header=BB0_2 Depth=1
	jmp	.LBB0_2
.LBB0_12:                               # %__1050
	jmp	.LBB0_13
.LBB0_13:                               # %__1064
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_17 Depth 2
                                        #     Child Loop BB0_24 Depth 2
                                        #     Child Loop BB0_31 Depth 2
                                        #       Child Loop BB0_34 Depth 3
                                        #       Child Loop BB0_40 Depth 3
                                        #       Child Loop BB0_46 Depth 3
	movl	-44(%ebp), %eax
	cmpl	-40(%ebp), %eax
	setl	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	cmpl	$0, %eax
	je	.LBB0_71
# BB#14:                                # %__1066
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	$2, %eax
	movl	-44(%ebp), %ecx
	addl	$0, %eax
	imull	%eax, %ecx
	movl	%ecx, -44(%ebp)
# BB#15:                                # %__1067
                                        #   in Loop: Header=BB0_13 Depth=1
	jmp	.LBB0_16
.LBB0_16:                               # %__1069
                                        #   in Loop: Header=BB0_13 Depth=1
	jmp	.LBB0_17
.LBB0_17:                               # %__1071
                                        #   Parent Loop BB0_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-28(%ebp), %eax
	cmpl	-40(%ebp), %eax
	setl	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	cmpl	$0, %eax
	je	.LBB0_22
# BB#18:                                # %__1073
                                        #   in Loop: Header=BB0_17 Depth=2
	movl	$1, %eax
	movl	-28(%ebp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, -28(%ebp)
# BB#19:                                # %__1074
                                        #   in Loop: Header=BB0_17 Depth=2
	movl	$4, %eax
	movl	%esp, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	movl	-24(%ebp), %edx
	movl	-64(%ebp), %esi
	movl	%eax, %edi
	addl	$0, %edi
	imull	-28(%ebp), %edi
	movl	%ecx, -124(%ebp)        # 4-byte Spill
	movl	%edi, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	andl	%esi, %edx
	addl	$0, %eax
	imull	-28(%ebp), %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %edx
	movl	-124(%ebp), %eax        # 4-byte Reload
	movl	%edx, (%eax)
# BB#20:                                # %__1076
                                        #   in Loop: Header=BB0_17 Depth=2
	movl	$4, %eax
	movl	-20(%ebp), %ecx
	movl	-64(%ebp), %edx
	movl	%eax, %esi
	addl	$0, %esi
	imull	-28(%ebp), %esi
	movl	%ecx, -128(%ebp)        # 4-byte Spill
	movl	%esi, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %edx
	xorl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movl	-128(%ebp), %esi        # 4-byte Reload
	andl	%edx, %esi
	movl	-124(%ebp), %edx        # 4-byte Reload
	movl	(%edx), %edi
	addl	$0, %eax
	imull	-28(%ebp), %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %edi
	addl	%edi, %esi
	movl	%esi, -20(%ebp)
# BB#21:                                # %__1077
                                        #   in Loop: Header=BB0_17 Depth=2
	jmp	.LBB0_17
.LBB0_22:                               # %__1072
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	$0, %eax
	addl	$0, %eax
	movl	%eax, -28(%ebp)
# BB#23:                                # %__1078
                                        #   in Loop: Header=BB0_13 Depth=1
	jmp	.LBB0_24
.LBB0_24:                               # %__1080
                                        #   Parent Loop BB0_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-36(%ebp), %eax
	cmpl	-40(%ebp), %eax
	setl	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	cmpl	$0, %eax
	je	.LBB0_30
# BB#25:                                # %__1082
                                        #   in Loop: Header=BB0_24 Depth=2
	movl	$1, %eax
	movl	-28(%ebp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, -28(%ebp)
# BB#26:                                # %__1083
                                        #   in Loop: Header=BB0_24 Depth=2
	movl	$4, %eax
	movl	%esp, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	movl	-20(%ebp), %edx
	movl	-64(%ebp), %esi
	movl	%eax, %edi
	addl	$0, %edi
	imull	-28(%ebp), %edi
	movl	%ecx, -132(%ebp)        # 4-byte Spill
	movl	%edi, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	andl	%esi, %edx
	addl	$0, %eax
	imull	-28(%ebp), %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %edx
	movl	-132(%ebp), %eax        # 4-byte Reload
	movl	%edx, (%eax)
# BB#27:                                # %__1085
                                        #   in Loop: Header=BB0_24 Depth=2
	movl	$1, %eax
	movl	-36(%ebp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, -36(%ebp)
# BB#28:                                # %__1086
                                        #   in Loop: Header=BB0_24 Depth=2
	movl	$4, %eax
	movl	-24(%ebp), %ecx
	movl	-64(%ebp), %edx
	movl	%eax, %esi
	addl	$0, %esi
	imull	-36(%ebp), %esi
	movl	%ecx, -136(%ebp)        # 4-byte Spill
	movl	%esi, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %edx
	xorl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movl	-136(%ebp), %esi        # 4-byte Reload
	andl	%edx, %esi
	movl	-132(%ebp), %edx        # 4-byte Reload
	movl	(%edx), %edi
	addl	$0, %eax
	imull	-36(%ebp), %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %edi
	addl	%edi, %esi
	movl	%esi, -24(%ebp)
# BB#29:                                # %__1087
                                        #   in Loop: Header=BB0_24 Depth=2
	jmp	.LBB0_24
.LBB0_30:                               # %__1081
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	-48(%ebp), %eax
	movl	%eax, -28(%ebp)
.LBB0_31:                               # %__1088
                                        #   Parent Loop BB0_13 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_34 Depth 3
                                        #       Child Loop BB0_40 Depth 3
                                        #       Child Loop BB0_46 Depth 3
	movl	-48(%ebp), %eax
	addl	-44(%ebp), %eax
	cmpl	-40(%ebp), %eax
	setl	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	cmpl	$0, %eax
	je	.LBB0_68
# BB#32:                                # %__1090
                                        #   in Loop: Header=BB0_31 Depth=2
	jmp	.LBB0_33
.LBB0_33:                               # %__1093
                                        #   in Loop: Header=BB0_31 Depth=2
	movl	$1, %eax
	movl	-60(%ebp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, -48(%ebp)
.LBB0_34:                               # %__1094
                                        #   Parent Loop BB0_13 Depth=1
                                        #     Parent Loop BB0_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-32(%ebp), %eax
	cmpl	-60(%ebp), %eax
	setle	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	cmpl	$0, %eax
	je	.LBB0_40
# BB#35:                                # %__1096
                                        #   in Loop: Header=BB0_34 Depth=3
	movl	$4, %eax
	movl	%esp, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	movl	-20(%ebp), %edx
	movl	-64(%ebp), %esi
	movl	%eax, %edi
	addl	$0, %edi
	imull	-32(%ebp), %edi
	movl	%ecx, -140(%ebp)        # 4-byte Spill
	movl	%edi, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	andl	%esi, %edx
	addl	$0, %eax
	imull	-32(%ebp), %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %edx
	movl	-140(%ebp), %eax        # 4-byte Reload
	movl	%edx, (%eax)
# BB#36:                                # %__1099
                                        #   in Loop: Header=BB0_34 Depth=3
	movl	$1, %eax
	movl	-32(%ebp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, -32(%ebp)
# BB#37:                                # %__1100
                                        #   in Loop: Header=BB0_34 Depth=3
	movl	$1, %eax
	movl	-36(%ebp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, -36(%ebp)
# BB#38:                                # %__1101
                                        #   in Loop: Header=BB0_34 Depth=3
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
# BB#39:                                # %__1102
                                        #   in Loop: Header=BB0_34 Depth=3
	jmp	.LBB0_34
.LBB0_40:                               # %__1097
                                        #   Parent Loop BB0_13 Depth=1
                                        #     Parent Loop BB0_31 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-28(%ebp), %eax
	cmpl	-52(%ebp), %eax
	setle	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	cmpl	$0, %eax
	je	.LBB0_46
# BB#41:                                # %__1104
                                        #   in Loop: Header=BB0_40 Depth=3
	movl	$4, %eax
	movl	%esp, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	movl	-20(%ebp), %edx
	movl	-64(%ebp), %esi
	movl	%eax, %edi
	addl	$0, %edi
	imull	-28(%ebp), %edi
	movl	%ecx, -148(%ebp)        # 4-byte Spill
	movl	%edi, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	andl	%esi, %edx
	addl	$0, %eax
	imull	-28(%ebp), %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %edx
	movl	-148(%ebp), %eax        # 4-byte Reload
	movl	%edx, (%eax)
# BB#42:                                # %__1107
                                        #   in Loop: Header=BB0_40 Depth=3
	movl	$1, %eax
	movl	-28(%ebp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, -28(%ebp)
# BB#43:                                # %__1108
                                        #   in Loop: Header=BB0_40 Depth=3
	movl	$1, %eax
	movl	-36(%ebp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, -36(%ebp)
# BB#44:                                # %__1109
                                        #   in Loop: Header=BB0_40 Depth=3
	movl	$4, %eax
	movl	-24(%ebp), %ecx
	movl	-64(%ebp), %edx
	movl	%eax, %esi
	addl	$0, %esi
	imull	-36(%ebp), %esi
	movl	%ecx, -152(%ebp)        # 4-byte Spill
	movl	%esi, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %edx
	xorl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movl	-152(%ebp), %esi        # 4-byte Reload
	andl	%edx, %esi
	movl	-148(%ebp), %edx        # 4-byte Reload
	movl	(%edx), %edi
	addl	$0, %eax
	imull	-36(%ebp), %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %edi
	addl	%edi, %esi
	movl	%esi, -24(%ebp)
# BB#45:                                # %__1110
                                        #   in Loop: Header=BB0_40 Depth=3
	jmp	.LBB0_40
.LBB0_46:                               # %__1105
                                        #   Parent Loop BB0_13 Depth=1
                                        #     Parent Loop BB0_31 Depth=2
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
	je	.LBB0_60
# BB#47:                                # %__1112
                                        #   in Loop: Header=BB0_46 Depth=3
	movl	$4, %eax
	movl	%esp, %ecx
	addl	$-16, %ecx
	movl	%ecx, %esp
	movl	%esp, %edx
	addl	$-16, %edx
	movl	%edx, %esp
	movl	-20(%ebp), %esi
	movl	-64(%ebp), %edi
	movl	%eax, %ebx
	addl	$0, %ebx
	imull	-28(%ebp), %ebx
	movl	%ecx, -156(%ebp)        # 4-byte Spill
	movl	%ebx, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %edi
	andl	%edi, %esi
	movl	%eax, %edi
	addl	$0, %edi
	imull	-28(%ebp), %edi
	movl	%edi, %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %esi
	movl	-20(%ebp), %edi
	movl	-64(%ebp), %ebx
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	-32(%ebp), %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %ebx
	andl	%ebx, %edi
	addl	$0, %eax
	imull	-32(%ebp), %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	sarl	%cl, %edi
	movl	-156(%ebp), %eax        # 4-byte Reload
	movl	%esi, (%eax)
	movl	%edi, (%edx)
	movl	%edx, -160(%ebp)        # 4-byte Spill
# BB#48:                                # %__1115
                                        #   in Loop: Header=BB0_46 Depth=3
	movl	-156(%ebp), %eax        # 4-byte Reload
	movl	(%eax), %ecx
	movl	-160(%ebp), %edx        # 4-byte Reload
	cmpl	(%edx), %ecx
	setle	%bl
	andb	$1, %bl
	movzbl	%bl, %ecx
	cmpl	$0, %ecx
	je	.LBB0_53
# BB#49:                                # %__1117
                                        #   in Loop: Header=BB0_46 Depth=3
	jmp	.LBB0_50
.LBB0_50:                               # %__1119
                                        #   in Loop: Header=BB0_46 Depth=3
	movl	$1, %eax
	movl	-28(%ebp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, -28(%ebp)
# BB#51:                                # %__1120
                                        #   in Loop: Header=BB0_46 Depth=3
	movl	$1, %eax
	movl	-36(%ebp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, -36(%ebp)
# BB#52:                                # %__1121
                                        #   in Loop: Header=BB0_46 Depth=3
	movl	$4, %eax
	movl	-24(%ebp), %ecx
	movl	-64(%ebp), %edx
	movl	%eax, %esi
	addl	$0, %esi
	imull	-36(%ebp), %esi
	movl	%ecx, -164(%ebp)        # 4-byte Spill
	movl	%esi, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %edx
	xorl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movl	-164(%ebp), %esi        # 4-byte Reload
	andl	%edx, %esi
	movl	-156(%ebp), %edx        # 4-byte Reload
	movl	(%edx), %edi
	addl	$0, %eax
	imull	-36(%ebp), %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %edi
	addl	%edi, %esi
	movl	%esi, -24(%ebp)
	jmp	.LBB0_57
.LBB0_53:                               # %__1123
                                        #   in Loop: Header=BB0_46 Depth=3
	jmp	.LBB0_54
.LBB0_54:                               # %__1125
                                        #   in Loop: Header=BB0_46 Depth=3
	movl	$1, %eax
	movl	-32(%ebp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, -32(%ebp)
# BB#55:                                # %__1126
                                        #   in Loop: Header=BB0_46 Depth=3
	movl	$1, %eax
	movl	-36(%ebp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, -36(%ebp)
# BB#56:                                # %__1127
                                        #   in Loop: Header=BB0_46 Depth=3
	movl	$4, %eax
	movl	-24(%ebp), %ecx
	movl	-64(%ebp), %edx
	movl	%eax, %esi
	addl	$0, %esi
	imull	-36(%ebp), %esi
	movl	%ecx, -168(%ebp)        # 4-byte Spill
	movl	%esi, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %edx
	xorl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movl	-168(%ebp), %esi        # 4-byte Reload
	andl	%edx, %esi
	movl	-160(%ebp), %edx        # 4-byte Reload
	movl	(%edx), %edi
	addl	$0, %eax
	imull	-36(%ebp), %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %edi
	addl	%edi, %esi
	movl	%esi, -24(%ebp)
	jmp	.LBB0_58
.LBB0_57:                               # %__1122
                                        #   in Loop: Header=BB0_46 Depth=3
	jmp	.LBB0_59
.LBB0_58:                               # %__1128
                                        #   in Loop: Header=BB0_46 Depth=3
	jmp	.LBB0_59
.LBB0_59:                               # %__1129
                                        #   in Loop: Header=BB0_46 Depth=3
	jmp	.LBB0_46
.LBB0_60:                               # %__1113
                                        #   in Loop: Header=BB0_31 Depth=2
	movl	-56(%ebp), %eax
	movl	%eax, -32(%ebp)
# BB#61:                                # %__1130
                                        #   in Loop: Header=BB0_31 Depth=2
	movl	-48(%ebp), %eax
	movl	%eax, -28(%ebp)
# BB#62:                                # %__1131
                                        #   in Loop: Header=BB0_31 Depth=2
# BB#63:                                # %__1133
                                        #   in Loop: Header=BB0_31 Depth=2
	movl	$1, %eax
	movl	-40(%ebp), %ecx
	addl	$0, %eax
	subl	%eax, %ecx
	movl	%ecx, -60(%ebp)
# BB#64:                                # %__1134
                                        #   in Loop: Header=BB0_31 Depth=2
	movl	$1, %eax
	movl	-56(%ebp), %ecx
	addl	-44(%ebp), %ecx
	addl	$0, %eax
	subl	%eax, %ecx
	movl	%ecx, -60(%ebp)
# BB#65:                                # %__1135
                                        #   in Loop: Header=BB0_31 Depth=2
	movl	$1, %eax
	movl	-52(%ebp), %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, -56(%ebp)
# BB#66:                                # %__1136
                                        #   in Loop: Header=BB0_31 Depth=2
	movl	$1, %eax
	movl	-48(%ebp), %ecx
	addl	-44(%ebp), %ecx
	addl	$0, %eax
	subl	%eax, %ecx
	movl	%ecx, -52(%ebp)
# BB#67:                                # %__1137
                                        #   in Loop: Header=BB0_31 Depth=2
	jmp	.LBB0_31
.LBB0_68:                               # %__1091
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	$0, %eax
	addl	$0, %eax
	movl	%eax, -36(%ebp)
# BB#69:                                # %__1138
                                        #   in Loop: Header=BB0_13 Depth=1
	movl	$0, %eax
	addl	$0, %eax
	movl	%eax, -48(%ebp)
# BB#70:                                # %__1139
                                        #   in Loop: Header=BB0_13 Depth=1
	jmp	.LBB0_13
.LBB0_71:                               # %__1065
	movl	$1, %eax
	addl	$0, %eax
	movl	%eax, -44(%ebp)
# BB#72:                                # %__1140
	movl	$24, %eax
	movl	$5, %ecx
	movl	-20(%ebp), %edx
	movl	-64(%ebp), %esi
	movl	%eax, %edi
	addl	$0, %edi
	movl	%ecx, -172(%ebp)        # 4-byte Spill
	movl	%edi, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	xorl	$4294967295, %esi       # imm = 0xFFFFFFFF
	andl	%esi, %edx
	movl	-172(%ebp), %esi        # 4-byte Reload
	addl	$0, %esi
	addl	$0, %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	addl	%esi, %edx
	movl	%edx, -20(%ebp)
# BB#73:                                # %__1141
	movl	$20, %eax
	movl	$4, %ecx
	movl	-20(%ebp), %edx
	movl	-64(%ebp), %esi
	movl	%eax, %edi
	addl	$0, %edi
	movl	%ecx, -176(%ebp)        # 4-byte Spill
	movl	%edi, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	xorl	$4294967295, %esi       # imm = 0xFFFFFFFF
	andl	%esi, %edx
	movl	-176(%ebp), %esi        # 4-byte Reload
	addl	$0, %esi
	addl	$0, %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	addl	%esi, %edx
	movl	%edx, -20(%ebp)
# BB#74:                                # %__1142
	movl	$16, %eax
	movl	$0, %ecx
	movl	-20(%ebp), %edx
	movl	-64(%ebp), %esi
	movl	%eax, %edi
	addl	$0, %edi
	movl	%ecx, -180(%ebp)        # 4-byte Spill
	movl	%edi, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	xorl	$4294967295, %esi       # imm = 0xFFFFFFFF
	andl	%esi, %edx
	movl	-180(%ebp), %esi        # 4-byte Reload
	addl	$0, %esi
	addl	$0, %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	addl	%esi, %edx
	movl	%edx, -20(%ebp)
# BB#75:                                # %__1143
	movl	$12, %eax
	movl	$7, %ecx
	movl	-20(%ebp), %edx
	movl	-64(%ebp), %esi
	movl	%eax, %edi
	addl	$0, %edi
	movl	%ecx, -184(%ebp)        # 4-byte Spill
	movl	%edi, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	xorl	$4294967295, %esi       # imm = 0xFFFFFFFF
	andl	%esi, %edx
	movl	-184(%ebp), %esi        # 4-byte Reload
	addl	$0, %esi
	addl	$0, %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	addl	%esi, %edx
	movl	%edx, -20(%ebp)
# BB#76:                                # %__1144
	movl	$8, %eax
	movl	$9, %ecx
	movl	-20(%ebp), %edx
	movl	-64(%ebp), %esi
	movl	%eax, %edi
	addl	$0, %edi
	movl	%ecx, -188(%ebp)        # 4-byte Spill
	movl	%edi, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	xorl	$4294967295, %esi       # imm = 0xFFFFFFFF
	andl	%esi, %edx
	movl	-188(%ebp), %esi        # 4-byte Reload
	addl	$0, %esi
	addl	$0, %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	addl	%esi, %edx
	movl	%edx, -20(%ebp)
# BB#77:                                # %__1145
	movl	$4, %eax
	movl	$6, %ecx
	movl	-20(%ebp), %edx
	movl	-64(%ebp), %esi
	movl	%eax, %edi
	addl	$0, %edi
	movl	%ecx, -192(%ebp)        # 4-byte Spill
	movl	%edi, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	xorl	$4294967295, %esi       # imm = 0xFFFFFFFF
	andl	%esi, %edx
	movl	-192(%ebp), %esi        # 4-byte Reload
	addl	$0, %esi
	addl	$0, %eax
	movl	%eax, %ecx
                                        # kill: CL<def> ECX<kill>
	shll	%cl, %esi
	addl	%esi, %edx
	movl	%edx, -20(%ebp)
# BB#78:                                # %__1146
	movl	$1, %eax
	movl	-20(%ebp), %ecx
	movl	-64(%ebp), %edx
	xorl	$4294967295, %edx       # imm = 0xFFFFFFFF
	andl	%edx, %ecx
	addl	$0, %eax
	addl	%eax, %ecx
	movl	%ecx, -20(%ebp)
# BB#79:                                # %__1147
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
