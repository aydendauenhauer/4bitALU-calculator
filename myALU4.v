module myALU4(P,A,B,R,Z,V,C4);
    // This declaration section has been completed for you.
    // For simplicity, an actual C0 input is not needed,
    // as C0 is always the same as one of the P bits...
    input [3:0]P,A,B;
    output [3:0]R;
    output Z,V,C4;
    reg [3:0]Y; // Use reg instead of wire for always blocks.
    
    always @(*)
        // The case statement serves as a 4:1 MUX with P[2]
        // and P[1] select signals. Note that the notation
        // 2'b means a 2-bit binary value, so the first
        // case 2'b00 corresponds to when P[2]=0 and P[1]=0.
        // Complete the lines for the first and third cases.
        case(P[2:1])
            2'b00: Y = B;
            2'b01: Y = ~B;
            2'b10: Y = 4'b0000;
            2'b11: Y = 4'b1111;
        endcase
    
    // The below instance of myadder4 assumes the order
    // (X,Y,C0,S,V,C4), so you may have to change the
    // ordering to work with your myadder4 from lab 5.
    // Fill in the bit of P that should serve as C0.
    myadder4 U1(A,Y,P[0],R,V,C4);
    
    // Complete the assign statement to make Z=1 when R=0000.
    assign Z = ~R[0] & ~R[1] & ~R[2] & ~R[3];
endmodule
