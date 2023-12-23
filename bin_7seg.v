module bin_7seg(BI_DIGIT,SEG);
	input [3:0] BI_DIGIT;
	output [6:0] SEG;
	reg [6:0] SEG;
	// seg = {g,f,e,d,c,b,a};
	// ---a---
	// | 		|
	// f 	  	b
	// |		|
	// ---g---
	// | 		|
	// e 		c
	// | 		|
	// ---d---
	always @(BI_DIGIT)
	case (BI_DIGIT)
		4'h0: SEG = ~7'b0111111;
		4'h1: SEG = ~7'b0000110;
		4'h2: SEG = ~7'b1011011;
		4'h3: SEG = ~7'b1001111;
		4'h4: SEG = ~7'b1100110;
		4'h5: SEG = ~7'b1101101;
		4'h6: SEG = ~7'b1111101;
		4'h7: SEG = ~7'b0000111;
		4'h8: SEG = ~7'b1111111;
		4'h9: SEG = ~7'b1100111;
		4'ha: SEG = ~7'b1110111;
		4'hb: SEG = ~7'b1111100;
		4'hc: SEG = ~7'b1011000;
		4'hd: SEG = ~7'b1011110;
		4'he: SEG = ~7'b1111001;
		4'hf: SEG = ~7'b1110001;
	endcase
endmodule
