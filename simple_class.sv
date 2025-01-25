class student;
  int r_no;
  function void display(int r_no);
    this.r_no=r_no;
    $display("%d",this.r_no);
    
  endfunction
endclass;

module tb;
student s1;
 initial begin
    s1=new();
    s1.display(1);
 end
endmodule
