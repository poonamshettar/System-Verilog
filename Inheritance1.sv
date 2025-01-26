`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.01.2025 10:00:37
// Design Name: 
// Module Name: Inheritance1
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

class Parent;
  string name;
  string family_name;
  function new(string name, string family_name);
    this.name = name;
    this.family_name = family_name;
  endfunction
endclass

class child extends Parent;
  string name;
  string parent_name;
  function new(string parent_name, string f_name, string name);
    super.new(parent_name, f_name);
    this.name = name;
    this.parent_name = parent_name;
  endfunction
endclass

module Inheritance1;
  initial begin
    child c1 = new("Michael", "Smith", "John");
    $display("Child Name: %s", c1.name);
    $display("Parent Name: %s", c1.parent_name);
    $display("Family Name: %s", c1.family_name);
  end
endmodule
