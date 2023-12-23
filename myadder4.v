module myadder4(X,Y,c0,S,v,c4);
	input [3:0]X,Y;
	input c0;
	output[3:0]S;
	output v,c4;
	wire [3:1]C;
	
	myfulladd(X[0],Y[0],c0,S[0],C[1]);
	myfulladd(X[1],Y[1],C[1],S[1],C[2]);
	myfulladd(X[2],Y[2],C[2],S[2],C[3]);
	myfulladd(X[3],Y[3],C[3],S[3],c4);
	assign v = C[3] ^ c4;
endmodule