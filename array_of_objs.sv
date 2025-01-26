`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.01.2025 09:47:34
// Design Name: 
// Module Name: array_of_objs
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
string name;
function new(int r_no,string name);
this.r_no=r_no;
this.name=name;
endfunction

function void display();
$display("Student Roll no: %d Name: %s",this.r_no,this.name);
endfunction
endclass

module array_of_objs;
student s[5];
string name[5]='{"apple","ball","cat","dog","eye"};
initial begin
for(int i=0;i<5;i++)
begin
s[i]=new(i+1,name[i]);
s[i].display();
end
end
endmodule
