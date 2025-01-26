`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.01.2025 17:35:25
// Design Name: 
// Module Name: parameterized_class
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
class x #(int y=5);
bit [y-1:0] out;
endclass

module parameterized_class;
x #(6)x1;
x x2;
initial 
begin

$display("%d",$bits(x1.out));
$display("%d",$bits(x2.out));
end
endmodule
