@i
M = 0

(LOOP_START)
@4096
D = A

@i
D = D - M

@LOOP_END
D;JLT

@19950
D = A

@kateta
D = M + D

@i
A = D + M
M = 1

@32
D = A

@i
M = M + D

@LOOP_START
0;JMP

(LOOP_END)





@32
D = A
 
@i
M = M - D 




(LOOP1_START)
@4104
D = A

@i
D = D - M

@LOOP1_END
D;JLT

@19950
D = A

@kateta
D = M + D

@i
A = D + M
M = -1

@i
M = M + 1


@LOOP1_START
0;JMP

(LOOP1_END)


@j
M = 1
@k
M = 0
@i
M = 0


(LOOP2_START)

@4104
D = A

@i
D = D - M

@LOOP2_END
D;JLT



@k
M = M + 1

@19950
D = A


@i
D = D + M

@n
M = D
@i
D = M

@P1
D;JEQ

@20462
D = A

@n
D = D - M
@P1
D;JLT

@j
D = M

@n
A = M
M = D + 1

@P2
0;JMP
(P1)
@j
D = M

@n
A = M
M = D 
(P2)
@n
M = 0

@j
D = M
M = D + M 
@16
D = A

@k
D = M - D



@P
D;JLT

@j
M = 1
@k
M = 0
@i
M = M + 1
(P)
@32
D = A

@i
M = M + D
@LOOP2_START
0;JMP

(LOOP2_END)




(END)
@END
0;JMP