module AdderSubtractor(Sum,Cout,A,B,mode);

	input [3:0]A,B;
	input mode;
	
	output Cout;
	output [3:0]Sum;

	wire [3:0]B2;
	xor xor1(B2[0],B[0],mode);
	xor xor2(B2[1],B[1],mode);
	xor xor3(B2[2],B[2],mode);
	xor xor4(B2[3],B[3],mode);
	
	RippleCarryAdder ra1(Sum,Cout,A,B2,mode);
endmodule	