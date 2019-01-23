	.globl fini
	.text
main:	#------------------------------
		#addi $t0, $0, 60 # t0 = 60
		# could be replaced with
		#li $t0, 60 #t0 = 60
		#known as pseudo-instruction
		addi $v0, $0, 5 #v0 = readInt
		syscall
		add $t0, $0, $v0 # t0 = v0
		addi $t1, $0, 7  # t1 = 60
		add $t2, $t0, $t1 # t2 = t0 + t1
		#-----------------------------
		addi $v0, $0, 1 # service #1
		add $a0, $0, $t2 # printInt
		syscall 			#do print
		#-----------------------------
fini:		jr $ra #return

