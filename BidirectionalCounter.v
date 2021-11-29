module BidirectionalCounter(Q,CLR,CLK,mode);
	
	output [2:0]Q;
	input CLR,CLK;
	input mode;
	
	wire [2:0]Qbar;
	
	assign J = 1;
	assign K = 1;
	
	not(modeinverse,mode);

	JKFF jk1(Q[0],Qbar[0],J,K,CLR,CLK);

	and and1(a,mode,Q[0]);
	and and2(b,Qbar[0],modeinverse);
	or or1(x,a,b);

	JKFF jk2(Q[1],Qbar[1],x,x,CLR,CLK);
	
	and and3(c,a,Q[1]);
	and and4(d,Qbar[1],b);
	or or2(y,c,d);
	
	JKFF jk3(Q[2],Qbar[2],y,y,CLR,CLK);

	
endmodule
