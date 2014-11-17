	.align 4
	.text
.globl program
program:
	pushl %ebp
	movl %esp,%ebp
	subl $800,%esp
	jmp __905
__905:
	movl $7,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-64(%ebp)
	movl -64(%ebp),%ecx
	movl %ecx,-4(%ebp)
	movl $0,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-68(%ebp)
	movl -68(%ebp),%ecx
	movl %ecx,-8(%ebp)
	movl $0,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-72(%ebp)
	movl -72(%ebp),%ecx
	movl %ecx,-12(%ebp)
	movl $0,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-76(%ebp)
	movl -76(%ebp),%ecx
	movl %ecx,-16(%ebp)
	movl $0,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-80(%ebp)
	movl -80(%ebp),%ecx
	movl %ecx,-20(%ebp)
	movl $0,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-84(%ebp)
	movl -84(%ebp),%ecx
	movl %ecx,-24(%ebp)
	movl -4(%ebp),%ecx
	movl %ecx,-88(%ebp)
	movl -88(%ebp),%ecx
	movl %ecx,-28(%ebp)
	movl $0,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-92(%ebp)
	movl -92(%ebp),%ecx
	movl %ecx,-32(%ebp)
	movl $0,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-96(%ebp)
	movl -96(%ebp),%ecx
	movl %ecx,-36(%ebp)
	movl $0,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-100(%ebp)
	movl -100(%ebp),%ecx
	movl %ecx,-40(%ebp)
	movl $0,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-104(%ebp)
	movl -104(%ebp),%ecx
	movl %ecx,-44(%ebp)
	movl $0,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-108(%ebp)
	movl -108(%ebp),%ecx
	movl %ecx,-48(%ebp)
	movl $15,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-112(%ebp)
	movl -112(%ebp),%ecx
	movl %ecx,-52(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-116(%ebp)
	movl -116(%ebp),%ecx
	movl %ecx,-56(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-120(%ebp)
	movl $-1,%ecx
	movl -120(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-124(%ebp)
	movl -124(%ebp),%ecx
	movl %ecx,-60(%ebp)
	jmp __906
__906:
	movl -8(%ebp),%ecx
	movl %ecx,-128(%ebp)
	movl -52(%ebp),%ecx
	movl %ecx,-132(%ebp)
	movl $-1,%ecx
	movl -132(%ebp),%eax
	xorl %ecx,%eax
	movl %eax,-136(%ebp)
	movl -136(%ebp),%ecx
	movl -128(%ebp),%eax
	andl %ecx,%eax
	movl %eax,-140(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-144(%ebp)
	movl -144(%ebp),%ecx
	movl -140(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-148(%ebp)
	movl -148(%ebp),%ecx
	movl %ecx,-8(%ebp)
	jmp __907
__907:
	movl -8(%ebp),%ecx
	movl %ecx,-152(%ebp)
	movl -52(%ebp),%ecx
	movl %ecx,-156(%ebp)
	movl $4,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-160(%ebp)
	movl -160(%ebp),%ecx
	movl -156(%ebp),%eax
	shll %cl, %eax
	movl %eax,-164(%ebp)
	movl $-1,%ecx
	movl -164(%ebp),%eax
	xorl %ecx,%eax
	movl %eax,-168(%ebp)
	movl -168(%ebp),%ecx
	movl -152(%ebp),%eax
	andl %ecx,%eax
	movl %eax,-172(%ebp)
	movl $6,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-176(%ebp)
	movl $4,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-180(%ebp)
	movl -180(%ebp),%ecx
	movl -176(%ebp),%eax
	shll %cl, %eax
	movl %eax,-184(%ebp)
	movl -184(%ebp),%ecx
	movl -172(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-188(%ebp)
	movl -188(%ebp),%ecx
	movl %ecx,-8(%ebp)
	jmp __908
__908:
	movl -8(%ebp),%ecx
	movl %ecx,-192(%ebp)
	movl -52(%ebp),%ecx
	movl %ecx,-196(%ebp)
	movl $8,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-200(%ebp)
	movl -200(%ebp),%ecx
	movl -196(%ebp),%eax
	shll %cl, %eax
	movl %eax,-204(%ebp)
	movl $-1,%ecx
	movl -204(%ebp),%eax
	xorl %ecx,%eax
	movl %eax,-208(%ebp)
	movl -208(%ebp),%ecx
	movl -192(%ebp),%eax
	andl %ecx,%eax
	movl %eax,-212(%ebp)
	movl $9,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-216(%ebp)
	movl $8,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-220(%ebp)
	movl -220(%ebp),%ecx
	movl -216(%ebp),%eax
	shll %cl, %eax
	movl %eax,-224(%ebp)
	movl -224(%ebp),%ecx
	movl -212(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-228(%ebp)
	movl -228(%ebp),%ecx
	movl %ecx,-8(%ebp)
	jmp __909
__909:
	movl -8(%ebp),%ecx
	movl %ecx,-232(%ebp)
	movl -52(%ebp),%ecx
	movl %ecx,-236(%ebp)
	movl $12,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-240(%ebp)
	movl -240(%ebp),%ecx
	movl -236(%ebp),%eax
	shll %cl, %eax
	movl %eax,-244(%ebp)
	movl $-1,%ecx
	movl -244(%ebp),%eax
	xorl %ecx,%eax
	movl %eax,-248(%ebp)
	movl -248(%ebp),%ecx
	movl -232(%ebp),%eax
	andl %ecx,%eax
	movl %eax,-252(%ebp)
	movl $7,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-256(%ebp)
	movl $12,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-260(%ebp)
	movl -260(%ebp),%ecx
	movl -256(%ebp),%eax
	shll %cl, %eax
	movl %eax,-264(%ebp)
	movl -264(%ebp),%ecx
	movl -252(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-268(%ebp)
	movl -268(%ebp),%ecx
	movl %ecx,-8(%ebp)
	jmp __910
__910:
	movl -8(%ebp),%ecx
	movl %ecx,-272(%ebp)
	movl -52(%ebp),%ecx
	movl %ecx,-276(%ebp)
	movl $16,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-280(%ebp)
	movl -280(%ebp),%ecx
	movl -276(%ebp),%eax
	shll %cl, %eax
	movl %eax,-284(%ebp)
	movl $-1,%ecx
	movl -284(%ebp),%eax
	xorl %ecx,%eax
	movl %eax,-288(%ebp)
	movl -288(%ebp),%ecx
	movl -272(%ebp),%eax
	andl %ecx,%eax
	movl %eax,-292(%ebp)
	movl $0,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-296(%ebp)
	movl $16,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-300(%ebp)
	movl -300(%ebp),%ecx
	movl -296(%ebp),%eax
	shll %cl, %eax
	movl %eax,-304(%ebp)
	movl -304(%ebp),%ecx
	movl -292(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-308(%ebp)
	movl -308(%ebp),%ecx
	movl %ecx,-8(%ebp)
	jmp __911
__911:
	movl -8(%ebp),%ecx
	movl %ecx,-312(%ebp)
	movl -52(%ebp),%ecx
	movl %ecx,-316(%ebp)
	movl $20,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-320(%ebp)
	movl -320(%ebp),%ecx
	movl -316(%ebp),%eax
	shll %cl, %eax
	movl %eax,-324(%ebp)
	movl $-1,%ecx
	movl -324(%ebp),%eax
	xorl %ecx,%eax
	movl %eax,-328(%ebp)
	movl -328(%ebp),%ecx
	movl -312(%ebp),%eax
	andl %ecx,%eax
	movl %eax,-332(%ebp)
	movl $4,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-336(%ebp)
	movl $20,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-340(%ebp)
	movl -340(%ebp),%ecx
	movl -336(%ebp),%eax
	shll %cl, %eax
	movl %eax,-344(%ebp)
	movl -344(%ebp),%ecx
	movl -332(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-348(%ebp)
	movl -348(%ebp),%ecx
	movl %ecx,-8(%ebp)
	jmp __912
__912:
	movl -8(%ebp),%ecx
	movl %ecx,-352(%ebp)
	movl -52(%ebp),%ecx
	movl %ecx,-356(%ebp)
	movl $24,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-360(%ebp)
	movl -360(%ebp),%ecx
	movl -356(%ebp),%eax
	shll %cl, %eax
	movl %eax,-364(%ebp)
	movl $-1,%ecx
	movl -364(%ebp),%eax
	xorl %ecx,%eax
	movl %eax,-368(%ebp)
	movl -368(%ebp),%ecx
	movl -352(%ebp),%eax
	andl %ecx,%eax
	movl %eax,-372(%ebp)
	movl $5,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-376(%ebp)
	movl $24,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-380(%ebp)
	movl -380(%ebp),%ecx
	movl -376(%ebp),%eax
	shll %cl, %eax
	movl %eax,-384(%ebp)
	movl -384(%ebp),%ecx
	movl -372(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-388(%ebp)
	movl -388(%ebp),%ecx
	movl %ecx,-8(%ebp)
	jmp __913
__913:
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-392(%ebp)
	movl -392(%ebp),%ecx
	movl %ecx,-32(%ebp)
	jmp __914
__914:
	jmp __915
__915:
	movl -32(%ebp),%ecx
	movl %ecx,-396(%ebp)
	movl -28(%ebp),%ecx
	movl %ecx,-400(%ebp)
	movl -396(%ebp),%ebx
	movl -400(%ebp),%ecx
	movl $0,-404(%ebp)
	cmpl %ecx,%ebx
	setl -404(%ebp)
	cmpl $0,-404(%ebp)
	je __916
	jne __917
__917:
	jmp __918
__918:
	movl $0,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-408(%ebp)
	movl -408(%ebp),%ecx
	movl %ecx,-36(%ebp)
	jmp __919
__919:
	movl $0,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-412(%ebp)
	movl -412(%ebp),%ecx
	movl %ecx,-24(%ebp)
	jmp __920
__920:
	movl -36(%ebp),%ecx
	movl %ecx,-416(%ebp)
	movl -32(%ebp),%ecx
	movl %ecx,-420(%ebp)
	movl -420(%ebp),%ecx
	movl -416(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-424(%ebp)
	movl -28(%ebp),%ecx
	movl %ecx,-428(%ebp)
	movl -424(%ebp),%ebx
	movl -428(%ebp),%ecx
	movl $0,-432(%ebp)
	cmpl %ecx,%ebx
	setl -432(%ebp)
	cmpl $0,-432(%ebp)
	je __922
	jne __921
__921:
	jmp __923
__923:
	movl -36(%ebp),%ecx
	movl %ecx,-436(%ebp)
	movl -32(%ebp),%ecx
	movl %ecx,-440(%ebp)
	movl -440(%ebp),%ecx
	movl -436(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-444(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-448(%ebp)
	movl -448(%ebp),%ecx
	movl -444(%ebp),%eax
	subl %ecx,%eax
	movl %eax,-452(%ebp)
	movl -452(%ebp),%ecx
	movl %ecx,-40(%ebp)
	jmp __924
__924:
	movl -40(%ebp),%ecx
	movl %ecx,-456(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-460(%ebp)
	movl -460(%ebp),%ecx
	movl -456(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-464(%ebp)
	movl -464(%ebp),%ecx
	movl %ecx,-44(%ebp)
	jmp __925
__925:
	movl -44(%ebp),%ecx
	movl %ecx,-468(%ebp)
	movl -32(%ebp),%ecx
	movl %ecx,-472(%ebp)
	movl -472(%ebp),%ecx
	movl -468(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-476(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-480(%ebp)
	movl -480(%ebp),%ecx
	movl -476(%ebp),%eax
	subl %ecx,%eax
	movl %eax,-484(%ebp)
	movl -484(%ebp),%ecx
	movl %ecx,-48(%ebp)
	jmp __926
__926:
	movl -48(%ebp),%ecx
	movl %ecx,-488(%ebp)
	movl -28(%ebp),%ecx
	movl %ecx,-492(%ebp)
	movl -488(%ebp),%ebx
	movl -492(%ebp),%ecx
	movl $0,-496(%ebp)
	cmpl %ecx,%ebx
	setge -496(%ebp)
	cmpl $0,-496(%ebp)
	je __927
	jne __928
__928:
	movl -28(%ebp),%ecx
	movl %ecx,-500(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-504(%ebp)
	movl -504(%ebp),%ecx
	movl -500(%ebp),%eax
	subl %ecx,%eax
	movl %eax,-508(%ebp)
	movl -508(%ebp),%ecx
	movl %ecx,-48(%ebp)
	jmp __929
__929:
	jmp __927
__927:
	movl -36(%ebp),%ecx
	movl %ecx,-512(%ebp)
	movl -512(%ebp),%ecx
	movl %ecx,-16(%ebp)
	jmp __930
__930:
	movl -44(%ebp),%ecx
	movl %ecx,-516(%ebp)
	movl -516(%ebp),%ecx
	movl %ecx,-20(%ebp)
	jmp __931
__931:
	movl -16(%ebp),%ecx
	movl %ecx,-520(%ebp)
	movl -40(%ebp),%ecx
	movl %ecx,-524(%ebp)
	movl -520(%ebp),%ebx
	movl -524(%ebp),%ecx
	movl $0,-528(%ebp)
	cmpl %ecx,%ebx
	setle -528(%ebp)
	movl -20(%ebp),%ecx
	movl %ecx,-532(%ebp)
	movl -48(%ebp),%ecx
	movl %ecx,-536(%ebp)
	movl -532(%ebp),%ebx
	movl -536(%ebp),%ecx
	movl $0,-540(%ebp)
	cmpl %ecx,%ebx
	setle -540(%ebp)
	movl -540(%ebp),%ecx
	movl -528(%ebp),%eax
	andl %ecx,%eax
	movl %eax,-544(%ebp)
	cmpl $0,-544(%ebp)
	je __933
	jne __932
__932:
	movl -8(%ebp),%ecx
	movl %ecx,-556(%ebp)
	movl -52(%ebp),%ecx
	movl %ecx,-560(%ebp)
	movl $4,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-564(%ebp)
	movl -16(%ebp),%ecx
	movl %ecx,-568(%ebp)
	movl -568(%ebp),%ecx
	movl -564(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-572(%ebp)
	movl -572(%ebp),%ecx
	movl -560(%ebp),%eax
	shll %cl, %eax
	movl %eax,-576(%ebp)
	movl -576(%ebp),%ecx
	movl -556(%ebp),%eax
	andl %ecx,%eax
	movl %eax,-580(%ebp)
	movl $4,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-584(%ebp)
	movl -16(%ebp),%ecx
	movl %ecx,-588(%ebp)
	movl -588(%ebp),%ecx
	movl -584(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-592(%ebp)
	movl -592(%ebp),%ecx
	movl -580(%ebp),%eax
	sarl %cl, %eax
	movl %eax,-596(%ebp)
	movl -596(%ebp),%ecx
	movl %ecx,-548(%ebp)
	movl -8(%ebp),%ecx
	movl %ecx,-600(%ebp)
	movl -52(%ebp),%ecx
	movl %ecx,-604(%ebp)
	movl $4,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-608(%ebp)
	movl -20(%ebp),%ecx
	movl %ecx,-612(%ebp)
	movl -612(%ebp),%ecx
	movl -608(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-616(%ebp)
	movl -616(%ebp),%ecx
	movl -604(%ebp),%eax
	shll %cl, %eax
	movl %eax,-620(%ebp)
	movl -620(%ebp),%ecx
	movl -600(%ebp),%eax
	andl %ecx,%eax
	movl %eax,-624(%ebp)
	movl $4,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-628(%ebp)
	movl -20(%ebp),%ecx
	movl %ecx,-632(%ebp)
	movl -632(%ebp),%ecx
	movl -628(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-636(%ebp)
	movl -636(%ebp),%ecx
	movl -624(%ebp),%eax
	sarl %cl, %eax
	movl %eax,-640(%ebp)
	movl -640(%ebp),%ecx
	movl %ecx,-552(%ebp)
	jmp __934
__934:
	movl -548(%ebp),%ecx
	movl %ecx,-644(%ebp)
	movl -552(%ebp),%ecx
	movl %ecx,-648(%ebp)
	movl -644(%ebp),%ebx
	movl -648(%ebp),%ecx
	movl $0,-652(%ebp)
	cmpl %ecx,%ebx
	setle -652(%ebp)
	cmpl $0,-652(%ebp)
	je __941
	jne __936
__936:
	jmp __937
__937:
	movl -12(%ebp),%ecx
	movl %ecx,-656(%ebp)
	movl -52(%ebp),%ecx
	movl %ecx,-660(%ebp)
	movl $4,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-664(%ebp)
	movl -24(%ebp),%ecx
	movl %ecx,-668(%ebp)
	movl -668(%ebp),%ecx
	movl -664(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-672(%ebp)
	movl -672(%ebp),%ecx
	movl -660(%ebp),%eax
	shll %cl, %eax
	movl %eax,-676(%ebp)
	movl $-1,%ecx
	movl -676(%ebp),%eax
	xorl %ecx,%eax
	movl %eax,-680(%ebp)
	movl -680(%ebp),%ecx
	movl -656(%ebp),%eax
	andl %ecx,%eax
	movl %eax,-684(%ebp)
	movl -548(%ebp),%ecx
	movl %ecx,-688(%ebp)
	movl $4,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-692(%ebp)
	movl -24(%ebp),%ecx
	movl %ecx,-696(%ebp)
	movl -696(%ebp),%ecx
	movl -692(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-700(%ebp)
	movl -700(%ebp),%ecx
	movl -688(%ebp),%eax
	shll %cl, %eax
	movl %eax,-704(%ebp)
	movl -704(%ebp),%ecx
	movl -684(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-708(%ebp)
	movl -708(%ebp),%ecx
	movl %ecx,-12(%ebp)
	jmp __938
__938:
	movl -24(%ebp),%ecx
	movl %ecx,-712(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-716(%ebp)
	movl -716(%ebp),%ecx
	movl -712(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-720(%ebp)
	movl -720(%ebp),%ecx
	movl %ecx,-24(%ebp)
	jmp __939
__939:
	movl -16(%ebp),%ecx
	movl %ecx,-724(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-728(%ebp)
	movl -728(%ebp),%ecx
	movl -724(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-732(%ebp)
	movl -732(%ebp),%ecx
	movl %ecx,-16(%ebp)
	jmp __940
__941:
	jmp __942
__942:
	movl -12(%ebp),%ecx
	movl %ecx,-736(%ebp)
	movl -52(%ebp),%ecx
	movl %ecx,-740(%ebp)
	movl $4,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-744(%ebp)
	movl -24(%ebp),%ecx
	movl %ecx,-748(%ebp)
	movl -748(%ebp),%ecx
	movl -744(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-752(%ebp)
	movl -752(%ebp),%ecx
	movl -740(%ebp),%eax
	shll %cl, %eax
	movl %eax,-756(%ebp)
	movl $-1,%ecx
	movl -756(%ebp),%eax
	xorl %ecx,%eax
	movl %eax,-760(%ebp)
	movl -760(%ebp),%ecx
	movl -736(%ebp),%eax
	andl %ecx,%eax
	movl %eax,-764(%ebp)
	movl -552(%ebp),%ecx
	movl %ecx,-768(%ebp)
	movl $4,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-772(%ebp)
	movl -24(%ebp),%ecx
	movl %ecx,-776(%ebp)
	movl -776(%ebp),%ecx
	movl -772(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-780(%ebp)
	movl -780(%ebp),%ecx
	movl -768(%ebp),%eax
	shll %cl, %eax
	movl %eax,-784(%ebp)
	movl -784(%ebp),%ecx
	movl -764(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-788(%ebp)
	movl -788(%ebp),%ecx
	movl %ecx,-12(%ebp)
	jmp __943
__943:
	movl -24(%ebp),%ecx
	movl %ecx,-792(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-796(%ebp)
	movl -796(%ebp),%ecx
	movl -792(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-800(%ebp)
	movl -800(%ebp),%ecx
	movl %ecx,-24(%ebp)
	jmp __944
__944:
	movl -20(%ebp),%ecx
	movl %ecx,-804(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-808(%ebp)
	movl -808(%ebp),%ecx
	movl -804(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-812(%ebp)
	movl -812(%ebp),%ecx
	movl %ecx,-20(%ebp)
	jmp __945
__940:
	jmp __946
__945:
	jmp __946
__946:
	jmp __931
__933:
	movl -16(%ebp),%ecx
	movl %ecx,-816(%ebp)
	movl -40(%ebp),%ecx
	movl %ecx,-820(%ebp)
	movl -816(%ebp),%ebx
	movl -820(%ebp),%ecx
	movl $0,-824(%ebp)
	cmpl %ecx,%ebx
	setle -824(%ebp)
	cmpl $0,-824(%ebp)
	je __948
	jne __947
__947:
	movl -8(%ebp),%ecx
	movl %ecx,-832(%ebp)
	movl -52(%ebp),%ecx
	movl %ecx,-836(%ebp)
	movl $4,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-840(%ebp)
	movl -16(%ebp),%ecx
	movl %ecx,-844(%ebp)
	movl -844(%ebp),%ecx
	movl -840(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-848(%ebp)
	movl -848(%ebp),%ecx
	movl -836(%ebp),%eax
	shll %cl, %eax
	movl %eax,-852(%ebp)
	movl -852(%ebp),%ecx
	movl -832(%ebp),%eax
	andl %ecx,%eax
	movl %eax,-856(%ebp)
	movl $4,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-860(%ebp)
	movl -16(%ebp),%ecx
	movl %ecx,-864(%ebp)
	movl -864(%ebp),%ecx
	movl -860(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-868(%ebp)
	movl -868(%ebp),%ecx
	movl -856(%ebp),%eax
	sarl %cl, %eax
	movl %eax,-872(%ebp)
	movl -872(%ebp),%ecx
	movl %ecx,-828(%ebp)
	jmp __949
__949:
	movl -12(%ebp),%ecx
	movl %ecx,-876(%ebp)
	movl -52(%ebp),%ecx
	movl %ecx,-880(%ebp)
	movl $4,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-884(%ebp)
	movl -24(%ebp),%ecx
	movl %ecx,-888(%ebp)
	movl -888(%ebp),%ecx
	movl -884(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-892(%ebp)
	movl -892(%ebp),%ecx
	movl -880(%ebp),%eax
	shll %cl, %eax
	movl %eax,-896(%ebp)
	movl $-1,%ecx
	movl -896(%ebp),%eax
	xorl %ecx,%eax
	movl %eax,-900(%ebp)
	movl -900(%ebp),%ecx
	movl -876(%ebp),%eax
	andl %ecx,%eax
	movl %eax,-904(%ebp)
	movl -828(%ebp),%ecx
	movl %ecx,-908(%ebp)
	movl $4,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-912(%ebp)
	movl -24(%ebp),%ecx
	movl %ecx,-916(%ebp)
	movl -916(%ebp),%ecx
	movl -912(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-920(%ebp)
	movl -920(%ebp),%ecx
	movl -908(%ebp),%eax
	shll %cl, %eax
	movl %eax,-924(%ebp)
	movl -924(%ebp),%ecx
	movl -904(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-928(%ebp)
	movl -928(%ebp),%ecx
	movl %ecx,-12(%ebp)
	jmp __950
__950:
	movl -24(%ebp),%ecx
	movl %ecx,-932(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-936(%ebp)
	movl -936(%ebp),%ecx
	movl -932(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-940(%ebp)
	movl -940(%ebp),%ecx
	movl %ecx,-24(%ebp)
	jmp __951
__951:
	movl -16(%ebp),%ecx
	movl %ecx,-944(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-948(%ebp)
	movl -948(%ebp),%ecx
	movl -944(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-952(%ebp)
	movl -952(%ebp),%ecx
	movl %ecx,-16(%ebp)
	jmp __952
__952:
	jmp __933
__948:
	movl -20(%ebp),%ecx
	movl %ecx,-956(%ebp)
	movl -48(%ebp),%ecx
	movl %ecx,-960(%ebp)
	movl -956(%ebp),%ebx
	movl -960(%ebp),%ecx
	movl $0,-964(%ebp)
	cmpl %ecx,%ebx
	setle -964(%ebp)
	cmpl $0,-964(%ebp)
	je __954
	jne __953
__953:
	movl -8(%ebp),%ecx
	movl %ecx,-972(%ebp)
	movl -52(%ebp),%ecx
	movl %ecx,-976(%ebp)
	movl $4,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-980(%ebp)
	movl -20(%ebp),%ecx
	movl %ecx,-984(%ebp)
	movl -984(%ebp),%ecx
	movl -980(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-988(%ebp)
	movl -988(%ebp),%ecx
	movl -976(%ebp),%eax
	shll %cl, %eax
	movl %eax,-992(%ebp)
	movl -992(%ebp),%ecx
	movl -972(%ebp),%eax
	andl %ecx,%eax
	movl %eax,-996(%ebp)
	movl $4,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-1000(%ebp)
	movl -20(%ebp),%ecx
	movl %ecx,-1004(%ebp)
	movl -1004(%ebp),%ecx
	movl -1000(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-1008(%ebp)
	movl -1008(%ebp),%ecx
	movl -996(%ebp),%eax
	sarl %cl, %eax
	movl %eax,-1012(%ebp)
	movl -1012(%ebp),%ecx
	movl %ecx,-968(%ebp)
	jmp __955
__955:
	movl -12(%ebp),%ecx
	movl %ecx,-1016(%ebp)
	movl -52(%ebp),%ecx
	movl %ecx,-1020(%ebp)
	movl $4,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-1024(%ebp)
	movl -24(%ebp),%ecx
	movl %ecx,-1028(%ebp)
	movl -1028(%ebp),%ecx
	movl -1024(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-1032(%ebp)
	movl -1032(%ebp),%ecx
	movl -1020(%ebp),%eax
	shll %cl, %eax
	movl %eax,-1036(%ebp)
	movl $-1,%ecx
	movl -1036(%ebp),%eax
	xorl %ecx,%eax
	movl %eax,-1040(%ebp)
	movl -1040(%ebp),%ecx
	movl -1016(%ebp),%eax
	andl %ecx,%eax
	movl %eax,-1044(%ebp)
	movl -968(%ebp),%ecx
	movl %ecx,-1048(%ebp)
	movl $4,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-1052(%ebp)
	movl -24(%ebp),%ecx
	movl %ecx,-1056(%ebp)
	movl -1056(%ebp),%ecx
	movl -1052(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-1060(%ebp)
	movl -1060(%ebp),%ecx
	movl -1048(%ebp),%eax
	shll %cl, %eax
	movl %eax,-1064(%ebp)
	movl -1064(%ebp),%ecx
	movl -1044(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-1068(%ebp)
	movl -1068(%ebp),%ecx
	movl %ecx,-12(%ebp)
	jmp __956
__956:
	movl -24(%ebp),%ecx
	movl %ecx,-1072(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-1076(%ebp)
	movl -1076(%ebp),%ecx
	movl -1072(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-1080(%ebp)
	movl -1080(%ebp),%ecx
	movl %ecx,-24(%ebp)
	jmp __957
__957:
	movl -20(%ebp),%ecx
	movl %ecx,-1084(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-1088(%ebp)
	movl -1088(%ebp),%ecx
	movl -1084(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-1092(%ebp)
	movl -1092(%ebp),%ecx
	movl %ecx,-20(%ebp)
	jmp __958
__958:
	jmp __948
__954:
	movl -48(%ebp),%ecx
	movl %ecx,-1096(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-1100(%ebp)
	movl -1100(%ebp),%ecx
	movl -1096(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-1104(%ebp)
	movl -1104(%ebp),%ecx
	movl %ecx,-36(%ebp)
	jmp __959
__959:
	jmp __920
__922:
	movl -36(%ebp),%ecx
	movl %ecx,-1108(%ebp)
	movl -1108(%ebp),%ecx
	movl %ecx,-16(%ebp)
	jmp __960
__960:
	jmp __961
__961:
	movl -24(%ebp),%ecx
	movl %ecx,-1112(%ebp)
	movl -28(%ebp),%ecx
	movl %ecx,-1116(%ebp)
	movl -1112(%ebp),%ebx
	movl -1116(%ebp),%ecx
	movl $0,-1120(%ebp)
	cmpl %ecx,%ebx
	setl -1120(%ebp)
	cmpl $0,-1120(%ebp)
	je __962
	jne __963
__963:
	movl -8(%ebp),%ecx
	movl %ecx,-1128(%ebp)
	movl -52(%ebp),%ecx
	movl %ecx,-1132(%ebp)
	movl $4,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-1136(%ebp)
	movl -16(%ebp),%ecx
	movl %ecx,-1140(%ebp)
	movl -1140(%ebp),%ecx
	movl -1136(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-1144(%ebp)
	movl -1144(%ebp),%ecx
	movl -1132(%ebp),%eax
	shll %cl, %eax
	movl %eax,-1148(%ebp)
	movl -1148(%ebp),%ecx
	movl -1128(%ebp),%eax
	andl %ecx,%eax
	movl %eax,-1152(%ebp)
	movl $4,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-1156(%ebp)
	movl -16(%ebp),%ecx
	movl %ecx,-1160(%ebp)
	movl -1160(%ebp),%ecx
	movl -1156(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-1164(%ebp)
	movl -1164(%ebp),%ecx
	movl -1152(%ebp),%eax
	sarl %cl, %eax
	movl %eax,-1168(%ebp)
	movl -1168(%ebp),%ecx
	movl %ecx,-1124(%ebp)
	jmp __964
__964:
	movl -12(%ebp),%ecx
	movl %ecx,-1172(%ebp)
	movl -52(%ebp),%ecx
	movl %ecx,-1176(%ebp)
	movl $4,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-1180(%ebp)
	movl -24(%ebp),%ecx
	movl %ecx,-1184(%ebp)
	movl -1184(%ebp),%ecx
	movl -1180(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-1188(%ebp)
	movl -1188(%ebp),%ecx
	movl -1176(%ebp),%eax
	shll %cl, %eax
	movl %eax,-1192(%ebp)
	movl $-1,%ecx
	movl -1192(%ebp),%eax
	xorl %ecx,%eax
	movl %eax,-1196(%ebp)
	movl -1196(%ebp),%ecx
	movl -1172(%ebp),%eax
	andl %ecx,%eax
	movl %eax,-1200(%ebp)
	movl -1124(%ebp),%ecx
	movl %ecx,-1204(%ebp)
	movl $4,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-1208(%ebp)
	movl -24(%ebp),%ecx
	movl %ecx,-1212(%ebp)
	movl -1212(%ebp),%ecx
	movl -1208(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-1216(%ebp)
	movl -1216(%ebp),%ecx
	movl -1204(%ebp),%eax
	shll %cl, %eax
	movl %eax,-1220(%ebp)
	movl -1220(%ebp),%ecx
	movl -1200(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-1224(%ebp)
	movl -1224(%ebp),%ecx
	movl %ecx,-12(%ebp)
	jmp __965
__965:
	movl -24(%ebp),%ecx
	movl %ecx,-1228(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-1232(%ebp)
	movl -1232(%ebp),%ecx
	movl -1228(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-1236(%ebp)
	movl -1236(%ebp),%ecx
	movl %ecx,-24(%ebp)
	jmp __966
__966:
	movl -16(%ebp),%ecx
	movl %ecx,-1240(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-1244(%ebp)
	movl -1244(%ebp),%ecx
	movl -1240(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-1248(%ebp)
	movl -1248(%ebp),%ecx
	movl %ecx,-16(%ebp)
	jmp __967
__967:
	jmp __961
__962:
	movl $0,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-1252(%ebp)
	movl -1252(%ebp),%ecx
	movl %ecx,-16(%ebp)
	jmp __968
__968:
	jmp __969
__969:
	movl -16(%ebp),%ecx
	movl %ecx,-1256(%ebp)
	movl -28(%ebp),%ecx
	movl %ecx,-1260(%ebp)
	movl -1256(%ebp),%ebx
	movl -1260(%ebp),%ecx
	movl $0,-1264(%ebp)
	cmpl %ecx,%ebx
	setl -1264(%ebp)
	cmpl $0,-1264(%ebp)
	je __970
	jne __971
__971:
	movl -12(%ebp),%ecx
	movl %ecx,-1272(%ebp)
	movl -52(%ebp),%ecx
	movl %ecx,-1276(%ebp)
	movl $4,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-1280(%ebp)
	movl -16(%ebp),%ecx
	movl %ecx,-1284(%ebp)
	movl -1284(%ebp),%ecx
	movl -1280(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-1288(%ebp)
	movl -1288(%ebp),%ecx
	movl -1276(%ebp),%eax
	shll %cl, %eax
	movl %eax,-1292(%ebp)
	movl -1292(%ebp),%ecx
	movl -1272(%ebp),%eax
	andl %ecx,%eax
	movl %eax,-1296(%ebp)
	movl $4,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-1300(%ebp)
	movl -16(%ebp),%ecx
	movl %ecx,-1304(%ebp)
	movl -1304(%ebp),%ecx
	movl -1300(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-1308(%ebp)
	movl -1308(%ebp),%ecx
	movl -1296(%ebp),%eax
	sarl %cl, %eax
	movl %eax,-1312(%ebp)
	movl -1312(%ebp),%ecx
	movl %ecx,-1268(%ebp)
	jmp __972
__972:
	movl -8(%ebp),%ecx
	movl %ecx,-1316(%ebp)
	movl -52(%ebp),%ecx
	movl %ecx,-1320(%ebp)
	movl $4,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-1324(%ebp)
	movl -16(%ebp),%ecx
	movl %ecx,-1328(%ebp)
	movl -1328(%ebp),%ecx
	movl -1324(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-1332(%ebp)
	movl -1332(%ebp),%ecx
	movl -1320(%ebp),%eax
	shll %cl, %eax
	movl %eax,-1336(%ebp)
	movl $-1,%ecx
	movl -1336(%ebp),%eax
	xorl %ecx,%eax
	movl %eax,-1340(%ebp)
	movl -1340(%ebp),%ecx
	movl -1316(%ebp),%eax
	andl %ecx,%eax
	movl %eax,-1344(%ebp)
	movl -1268(%ebp),%ecx
	movl %ecx,-1348(%ebp)
	movl $4,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-1352(%ebp)
	movl -16(%ebp),%ecx
	movl %ecx,-1356(%ebp)
	movl -1356(%ebp),%ecx
	movl -1352(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-1360(%ebp)
	movl -1360(%ebp),%ecx
	movl -1348(%ebp),%eax
	shll %cl, %eax
	movl %eax,-1364(%ebp)
	movl -1364(%ebp),%ecx
	movl -1344(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-1368(%ebp)
	movl -1368(%ebp),%ecx
	movl %ecx,-8(%ebp)
	jmp __973
__973:
	movl -16(%ebp),%ecx
	movl %ecx,-1372(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-1376(%ebp)
	movl -1376(%ebp),%ecx
	movl -1372(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-1380(%ebp)
	movl -1380(%ebp),%ecx
	movl %ecx,-16(%ebp)
	jmp __974
__974:
	jmp __969
__970:
	movl -32(%ebp),%ecx
	movl %ecx,-1384(%ebp)
	movl $2,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-1388(%ebp)
	movl -1388(%ebp),%ecx
	movl -1384(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-1392(%ebp)
	movl -1392(%ebp),%ecx
	movl %ecx,-32(%ebp)
	jmp __975
__975:
	jmp __915
__916:
	movl $0,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-1400(%ebp)
	movl -1400(%ebp),%ecx
	movl %ecx,-1396(%ebp)
	jmp __976
__976:
	movl -1396(%ebp),%ecx
	movl %ecx,-1404(%ebp)
	movl -4(%ebp),%ecx
	movl %ecx,-1408(%ebp)
	movl -1404(%ebp),%ebx
	movl -1408(%ebp),%ecx
	movl $0,-1412(%ebp)
	cmpl %ecx,%ebx
	setl -1412(%ebp)
	cmpl $0,-1412(%ebp)
	je __977
	jne __978
__978:
	movl -8(%ebp),%ecx
	movl %ecx,-1420(%ebp)
	movl -52(%ebp),%ecx
	movl %ecx,-1424(%ebp)
	movl $4,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-1428(%ebp)
	movl -1396(%ebp),%ecx
	movl %ecx,-1432(%ebp)
	movl -1432(%ebp),%ecx
	movl -1428(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-1436(%ebp)
	movl -1436(%ebp),%ecx
	movl -1424(%ebp),%eax
	shll %cl, %eax
	movl %eax,-1440(%ebp)
	movl -1440(%ebp),%ecx
	movl -1420(%ebp),%eax
	andl %ecx,%eax
	movl %eax,-1444(%ebp)
	movl $4,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-1448(%ebp)
	movl -1396(%ebp),%ecx
	movl %ecx,-1452(%ebp)
	movl -1452(%ebp),%ecx
	movl -1448(%ebp),%eax
	imull %ecx, %eax
	movl %eax,-1456(%ebp)
	movl -1456(%ebp),%ecx
	movl -1444(%ebp),%eax
	sarl %cl, %eax
	movl %eax,-1460(%ebp)
	movl -1460(%ebp),%ecx
	movl %ecx,-1416(%ebp)
	jmp __979
__979:
	movl -56(%ebp),%ecx
	movl %ecx,-1464(%ebp)
	cmpl $0,-1464(%ebp)
	je __980
	jne __981
__981:
	movl -1416(%ebp),%ecx
	movl %ecx,-1468(%ebp)
	movl -60(%ebp),%ecx
	movl %ecx,-1472(%ebp)
	movl -1468(%ebp),%ebx
	movl -1472(%ebp),%ecx
	movl $0,-1476(%ebp)
	cmpl %ecx,%ebx
	setge -1476(%ebp)
	cmpl $0,-1476(%ebp)
	je __985
	jne __983
__983:
	movl -1416(%ebp),%ecx
	movl %ecx,-1480(%ebp)
	movl -1480(%ebp),%ecx
	movl %ecx,-60(%ebp)
	jmp __984
__985:
	movl $0,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-1484(%ebp)
	movl -1484(%ebp),%ecx
	movl %ecx,-56(%ebp)
	jmp __986
__984:
	jmp __987
__986:
	jmp __987
__987:
	jmp __980
__980:
	movl -1396(%ebp),%ecx
	movl %ecx,-1488(%ebp)
	movl $1,%ecx
	movl $0,%eax
	addl %ecx,%eax
	movl %eax,-1492(%ebp)
	movl -1492(%ebp),%ecx
	movl -1488(%ebp),%eax
	addl %ecx,%eax
	movl %eax,-1496(%ebp)
	movl -1496(%ebp),%ecx
	movl %ecx,-1396(%ebp)
	jmp __988
__988:
	jmp __976
__977:
	movl -56(%ebp),%ecx
	movl %ecx,-1500(%ebp)
	movl -1500(%ebp),%eax
	addl $800,%esp
	movl %esp,%ebp
	popl %ebp
	ret
