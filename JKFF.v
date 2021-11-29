module JKFF(Q,Qbar,J,K,CLR,CLK);
	
	input J,K,CLR,CLK;
	output Q,Qbar;
	
	nand n01(a,J,CLR,CLK,Qbar);
	nand n02(b,Q,K,CLK);

	nand n11(y,a,ybar);
	nand n12(ybar,b,y,CLR);
	
	not nt(cbar,CLK);
	nand n21(c,y,cbar);
	nand n22(d,ybar,cbar);
	
	nand n31(Q,c,Qbar);
	nand n32(Qbar,Q,CLR,d);
endmodule

	

	