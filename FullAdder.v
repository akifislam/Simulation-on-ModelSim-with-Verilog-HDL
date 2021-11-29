module FullAdder(Sum,Cout,A,B,Cin);
	input A,B,Cin;
	output Sum,Cout;
	
	HalfAdder ha1(s1,c1,A,B);
	//s1 = a xor B // c1 = A.B
	HalfAdder ha2(Sum,c2,s1,Cin);

	or or1(Cout,c1,c2);
endmodule
	