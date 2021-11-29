module RippleCarryAdder(S,Cout,A,B,Cin);

	input [3:0]A,B;
	input Cin;
	output [3:0]S;
	output Cout;
	
	FullAdder fa1(S[0],c1,A[0],B[0],Cin);
	FullAdder fa2(S[1],c2,A[1],B[1],c1);
	FullAdder fa3(S[2],c3,A[2],B[2],c2);
	FullAdder fa4(S[3],Cout,A[3],B[3],c3);

endmodule
	
	
	
	
	
	
