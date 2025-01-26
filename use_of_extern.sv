`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.01.2025 17:47:32
// Design Name: 
// Module Name: use_of_extern
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
class x;
int a;
extern function new(int a);
extern function void display();
endclass

function x::new(int a);
this.a=a;
endfunction

function void x::display();
$display("HI %d",this.a);
endfunction

module use_of_extern;
x x1;
initial begin
x1=new(1);
x1.display();
end
endmodule
