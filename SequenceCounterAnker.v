//0000-1110-0111-1111-1101-1011-1001-0110-0000-...
module SequenceCounterAnker(Q,CLR,CLK);
	
	input CLR,CLK;
	output [3:0]Q;
	
	wire [3:0]Qbar,T;
	
	//Making T0
	and a1(xt0,Qbar[2],Qbar[1],Q[0]);
	and a2(yt0,Q[3],Qbar[0]);
	or or1(T[0],xt0,yt0);
	
	JKFF jk0(Q[0],Qbar[0],T[0],T[0],CLR,CLK);
	
	//Making T1
	and a21(yt1,Q[3],Q[0]);
	and a3(xt1,Qbar[3],Qbar[0]);
	or or2(T[1],Qbar[1],yt1,xt1);
	
	
	JKFF jk1(Q[1],Qbar[1],T[1],T[1],CLR,CLK);

		
	//Making T2
	or or3(T[2],Qbar[1],xt1);

	JKFF jk2(Q[2],Qbar[2],T[2],T[2],CLR,CLK);

	//Making T3
	xor xor1(xt3,Q[3],Q[0]);
	and andd2(yt3,Qbar[2],Qbar[1]);
	or or4(T[3],xt3,yt3);
	
	JKFF jk3(Q[3],Qbar[3],T[3],T[3],CLR,CLK);
	
endmodule
