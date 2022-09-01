`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/01/2022 10:27:37 AM
// Design Name: 
// Module Name: Top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Top(Reset,Clock);

input Clock, Reset;
wire [6:0] out7; //seg a, b, ... g
reg [7:0] en_out;

wire [15:0] Instruction;
wire [15:0] PCResult;
wire ClkOut;

ClkDiv ClkDiv(Clk, Reset, ClkOut);
InstructionFetchUnit InstructionFetchUnit(Instruction, Reset, ClkOut);
Two4DigitDisplay Two4DigitDisplay(Clk, Instruction, PCResult);


endmodule
