module testbench;
  reg [3:0] a, b;
  reg [2:0] sel;
  reg cin;
  wire [3:0] result;
  wire cout;
  ALU uut (
      .a(a),
      .b(b),
      .cin(cin),
      .cout(cout),
      .result(result),
      .sel(sel)
  );

  initial begin
    $monitor($time, " select=%b a=%b b=%b cin=%b result=%b cout=%b", sel, a, b, cin, result, cout);
  end

  initial begin
    a   = 4'b1010;
    b   = 4'b0101;
    cin = 0;
    sel = 3'b000;
  end

  always #10 sel = sel + 1'b1;
  initial #80 $stop;
endmodule