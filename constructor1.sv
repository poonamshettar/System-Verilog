`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.01.2025 09:26:52
// Design Name: 
// Module Name: oop2
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

class student;
int r_no;
function new(int r_no);
this.r_no=r_no;
$display("Student Roll_no %d",this.r_no);
endfunction
endclass

module oop2;
  student s1;
  initial begin
  s1=new(1);
  end
endmodule
