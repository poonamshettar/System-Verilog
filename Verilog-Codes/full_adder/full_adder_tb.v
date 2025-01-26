// `include "full_adder.v"
module testbench;
  reg a, b, c;
  wire s, co;
  full_adder f (
      s,
      co,
      a,
      b,
      c
  );
  initial begin
    $monitor($time, "a=%b b=%b c=%b sum=%b cout=%b", a, b, c, s, co);
    $dumpfile("full_adder.vcd");
    $dumpvars(0, testbench);
    #5 a = 0;
    b = 0;
    c = 1;
    #5 b = 1;
    #5 a = 1;
    #5 a = 0;
    b = 0;
    c = 0;
    #5 $finish;
  end
endmodule
