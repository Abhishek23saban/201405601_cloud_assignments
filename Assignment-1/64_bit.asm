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
		pushq	%rbp
		.cfi_def_cfa_offset16
		.cfi_offset 6,	16
		movq 	%rsp,  %rbp
		.cfi_def_cfa_register 6
		andl	$-16,  %rsp
		subq	$32,  %rsp
		movq	$1, 4(%rsp)  
		movq	$2,16(%rsp)
		movq   16(%rsp), %rax 
		movq	12(%rsp), %rbx
		movq	$3, 4(%rsp)  
		movq	$4,16(%rsp)
		movq    20(%rsp), %rcx 
		movq	24(%rsp), %rdx
		addq	%rbx,  %rdx
		movq	%rdx,  (%rsp)
		movq	$.LC0, (%rsp)
		call 	printf
		movq    $0,  %rax
		leave
		.cfi_restore 6
		.cfi_def_cfa 4,4
		ret
.LFE0;
		.size	main, .-main
