module testbench;
  reg clk;
  wire [2:0] light;
  cyclic_lamp lamp (
      clk,
      light
  );
  always #5 clk = ~clk;
  initial begin
    clk = 1'b0;
  end
  initial begin
    $dumpfile("cyclic_lamp.vcd");
    $dumpvars(0, testbench);
    $monitor($time, "RYG:%b", light);
    #100 $finish;
  end
endmodule
