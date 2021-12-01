// Implemented with J-K Flipflops but it can also be implemented with T flipflops with less lines of codes
// Sequence : 0000 -> 0101 -> 1010 -> 0110 -> 1001 -> 0011 -> 1100 -> 1111 -> 0000 ....
// Excitation Table : https://docs.google.com/spreadsheets/d/1vqWu1e3Q9VJ2JnubB19m03Ac21K_yxqmMfoZ16de-V8/edit?usp=sharing

module SequenceCounter(Q,Qbar,J,K);
	
	input [3:0]J,K;
	output [3:0]Q,Qbar;
	

	// For J0, K0
	or orj0(j0,Qbar[3],Qbar[1]);
	or ork0(k0,Qbar[3],Q[1]);

	JKFF jk0(Q[0],Qbar[0],j0,k0,CLR,CLK);
	
	
	// For J1, K1
	or orj1(j1,Q[3],Q[0]);
	or ork1(k1,Qbar[3],Q[0]);

	JKFF jk1(Q[1],Qbar[1],j1,k1,CLR,CLK);	
	

	// For J2, K2
	or orj2(j2,Qbar[3],Q[1]);
	or ork2(k2,Q[0],Q[1]);

	JKFF jk2(Q[2],Qbar[2],j2,k2,CLR,CLK);	
	
	
	// For J3, K3
	or orj3(j3,Q[2],Q[0]);
	or ork3(k3,Q[0],Q[1]);

	JKFF jk3(Q[3],Qbar[3],j3,k3,CLR,CLK);	
	
	
endmodule
