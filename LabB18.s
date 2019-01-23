	.globl fini
	.text
main:	#-----------------------------

		addi $v0, $0, 5 #v0 = readInt
		syscall
		add $t0, $0, $v0 # t0 = v0
		addi $v0, $0, 5 #v0 = readInt
		syscall
		add $t1, $0, $v0 # t1 = v0
		
		#addi $t1, $0, 1024
		
		xori $t2, $t0, 1024 #xor with 1024 to flip the bit
		xori $t3, $t1, 1024 #xor a bit with 1, flips the bit, xor with 0 leaves it unchanged
		
		addi $v0, $0, 1
		add $a0, $0, $t2
		syscall
		addi $v0, $0, 11
		add $a0, $0, ' '
		syscall
		addi $v0, $0, 1
		add $a0, $0, $t3
		syscall
		
		#-----------------------------
fini:	

