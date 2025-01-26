module ALU (
    a,
    b,
    cin,
    result,
    sel,
    cout
);
  input [3:0] a, b;
  input cin;
  input [2:0] sel;
  output reg cout;
  output reg [3:0] result;
  always @(*) begin
    case (sel)
      3'b000: begin
        {cout, result} = a + b + cin;
      end
      3'b001: begin
        {cout, result} = a - b - cin;
      end
      3'b010: begin
        result = a & b;
        cout   = 0;
      end
      3'b011: begin
        result = a | b;
        cout   = 0;
      end
      3'b100: begin
        result = a ^ b;
        cout   = 0;
      end
      3'b101: begin
        result = ~a;
        cout   = 0;
      end
      3'b110: begin
        result = a << 1;
        cout   = a[3];
      end
      3'b111: begin
        result = a >> 1;
        cout   = a[0];
      end
      default: begin
        result = 4'b0000;
        cout   = 0;
      end
    endcase
  end
endmodule
