`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// 
// Author : Poorya Mohammadi nasab
// Create Date:    22:38:39 1399/01/30 
// Module Name:    ALU_32Bit 
// Description: HW4
//
//////////////////////////////////////////////////////////////////////////////////
module ALU_32Bit(
		output reg [31:0] Out,
		input [31:0] A,B,
		input [3:0] Opcode
	);
	
	always @(Opcode or A or B)
	begin
	
		case(Opcode)
		
			4'b0000 : // state 0000 : Out <= 0
			begin
				Out <= 32'b0;
			end 
			
			4'b0001: // state 0001 : Out <= A
			begin
				Out <= A;
			end
			
			4'b0010: // state 0010 : Out <= B
			begin
				Out <= B;
			end
			
			4'b0011: // state 0011 : Out <= ~A
			begin
				Out <= ~A;
			end
			
			4'b0100 : // state 0100 : Out <= A + 1
			begin
				Out <= A + 1;
			end 
			
			4'b0101 : // state 0101 : Out <= B + 1
			begin
				Out <= B + 1;
			end
			
			4'b0111 : // state 0111 : Out <= A + B
			begin
				Out <= A + B;
			end
			
			4'b1000 : // state 1000 : Out <= A - B
			begin
				Out <= A - B;
			end
			
			4'b1001 : // state 1001 : Out <= A & B
			begin
				Out <= A & B;
			end
			
			4'b1010 : // state 1010 : Out <= A | B
			begin
				Out <= A | B;
			end
			
			4'b1011 : //state 1011 : Out <= A ^ B
			begin
				Out <= A ^ B;
			end
			
			4'b1100 : // state 1100 : Out <= A shl B
			begin
				Out <= A << B;
			end
			
			4'b1101 : // state 1101 : Out <= A shr B
			begin
				Out <= A >> B;
			end
			
			4'b1110 : // state 1110 : Out <= Byte Swap
			begin
				Out <= {{A[7:0]},
						  {A[15:8]},
						  {A[23:16]},
						  {A[31:24]}
						  };
			end
			
			4'b1111 : // state 1111 : Out <= Parity A
			begin
				Out <= ^A;
			end
			
			default : Out <= 32'bx;
		endcase
	end
endmodule
