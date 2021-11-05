VERILOGHDL CODE
module mux2x1(a,b,s,y);
  input a,b,s;
  output y;
  wire sbar,o1,o2;
  not(sbar,s);
  and(o1,sbar,a);
  and(o2,s,b);
  or(y,o1,o2);
endmodule




TESTBENCH CODE
`timescale 1ns/1ps
module mux2x1_tb;
  reg a,b,s;
  wire y;
   mux2x1 ins1(a,b,s,y);
  initial
begin
  $dumpfile("mux2x1.vcd");
 $dumpvars(1);
end
initial
begin
     a=1'b0; b=1'b1;
     s=1'b0;
  #5 s=1'b1;
  #5 s=1'b0;
end
initial
  $monitor("simtime=%0g, a=%b, b=%b, s=%b, y=%b", $time, a,b,s,y);
endmodule
  
