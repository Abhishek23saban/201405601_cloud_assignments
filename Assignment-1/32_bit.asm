
.file   "addition.c"
	.section        .rodata
.LC0:
	.string "%d"
    .text
.globl main
     .type   main, @function

main:
.LFB200:
		.cfi_startproc
		pushl	%ebp
		.cfi_def_cfa_offset 8
		.cfi_offset 5,	-8
		movl 	%esp,  %ebp
		.cfi_def_cfa_register 5
		andl	$-16,  %esp
		subl	$32,  %esp
		movl	$1, 4(%esp)  
		movl	$2, 8(%esp)
		movl    8(%esp), %eax 
		movl	12(%esp), %ebx
		movl	$3, 4(%esp)  
		movl	$4, 8(%esp)
		movl    20(%esp), %ecx 
		movl	24(%esp), %edx
		addl	%ebx,  %edx
		movl	%edx,  (%esp)
		movl	$.LC0, (%esp)
		call 	printf
		movl    $0,  %eax
		leave
		.cfi_restore 5
		.cfi_def_cfa 4,4
		ret
.LFE0;
		.size	main, .-main
		.section	.note.GNU-stack."",@progbits		
