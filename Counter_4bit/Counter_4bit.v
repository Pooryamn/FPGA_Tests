//////////////////////////////////////////////////////////////////////////////////
//  
// Author : 		 Poorya Mohammadi Nasab  
// Create Date:    00:40:25 1399/02/14 
// Design Name:	 4 bit counter
// Module Name:    Counter_4bit
// Target Devices: Spartan3E
//
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 1ps

module Counter_4bit(
	input clk,rst,
	output reg [3:0] count
    );

	always @(posedge clk or posedge rst)
		begin
			
			if(rst)
				count = 4'h0;
			else
				count = count + 1;
		end
endmodule
