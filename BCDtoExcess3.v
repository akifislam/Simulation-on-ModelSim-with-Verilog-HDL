//Truth Table and Circuit :
// https://www.javatpoint.com/conversion-of-bcd-to-excess-3-code-in-digital-electronics

module BCDtoExcess3(E,B);

	input [3:0]B;
	output [3:0]E;

	and and1(BC,B[2],B[1]);
	and and2(BD,B[1],B[3]);
	or orw(E[3],BC,BD,B[3]);
	
	not n1(Bbar,B[2]);
	not n2(Cbar,B[1]);
	not n3(Dbar,B[0]);
	not n4(E[0],B[0]);

	and and3(BbC,Bbar,B[1]);
	and and4(BbD,Bbar,B[0]);
	and and5(BCcDd,B[2],Cbar,Dbar);
	or orx(E[2],BbC,BbD,BCcDd);
	
	xnor(E[1],B[1],B[0]);
	
	
endmodule
	
	
