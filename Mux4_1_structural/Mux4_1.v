//////////////////////////////////////////////////////////////////////////////////
//  
// Author : Poorya Mohammadi Nasab  
// Create Date:    23:23:49 1399/02/13 
// Design Name:	 Multiplexer 4 to 1
// Module Name:    Mux4_1 
// Target Devices: Spartan3E
//
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps

module Mux4_1(
	output out,
	input [1:0] Sel,
	input [3:0] in
    );
	 
	 wire Not_S1,Not_S0;
	 wire and_0,and_1,and_2,and_3;
	 wire tmp0,tmp1,tmp2,tmp3;
	 
	 not n0(Not_S0,Sel[0]);
	 not n1(Not_S1,Sel[1]);
	 
	 and and0(and_0,Not_S0,Not_S1);
	 and and1(and_1,Sel[0],Not_S1);
	 and and2(and_2,Not_S0,Sel[1]);
	 and and3(and_3,Sel[0],Sel[1]);
	 
	 and and4(tmp0,in[0],and_0);
	 and and5(tmp1,in[1],and_1);
	 and and6(tmp2,in[2],and_2);
	 and and7(tmp3,in[3],and_3);
	 
	 or MainOr(out,tmp0,tmp1,tmp2,tmp3);
	 
endmodule
