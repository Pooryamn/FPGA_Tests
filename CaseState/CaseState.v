`timescale 1ns / 1ps

module CaseState(
	output reg [3:0] Y,
	input [3:0] A,B,
	input [1:0] Ctrl
    );
	
	always @(A or B or Ctrl)
	begin
		case(Ctrl)
			2'b00: Y <= A + B;
			2'b01: Y <= A - B;
			2'b10: Y <= A * B;
			default: Y <= 4'hx;
		endcase
	end
endmodule
