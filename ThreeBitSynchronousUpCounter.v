module ThreeBitSynchronousUpCounter(Q,CLR,CLK);
	
	output [2:0]Q;
	input CLR,CLK;
	
	wire [2:0]Qbar;
	
	assign J = 1;
	assign K = 1;
	
	JKFF jk1(Q[0],Qbar[0],J,K,CLR,CLK);
	JKFF jk2(Q[1],Qbar[1],Q[0],Q[0],CLR,CLK);
	
	and and1(m1,Q[0],Q[1]);

	JKFF jk3(Q[2],Qbar[2],m1,m1,CLR,CLK);
endmodule
