module HalfAdder(Sum,Cout,A,B);
	input A,B;
	output Sum,Cout;
	
	xor xr1(Sum,A,B);
	and an1(Cout,A,B);

endmodule

Pull request try korchi...:)
