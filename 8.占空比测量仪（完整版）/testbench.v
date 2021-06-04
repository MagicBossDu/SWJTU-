`timescale 1ns / 1ns
module testbench();
reg clk;
reg ft;
reg clr;
wire [7:0]SEG;
wire fout;
wire [6:0]codeout;
wire dot;
wire [9:0]tH;
wire [9:0]T;
wire [3:0]q1,q2,q3,q4;

initial
begin
	clk=0;
	clr=0;
	//写个200KHz的信号，占空比20%
	ft=1;
	#10000
	ft=0;
	#40000
	clr=1;
	ft=1;
	#10000
	ft=0;
	#40000
	
	ft=1;
	#10000
	ft=0;
	#40000
	
	ft=1;
	#10000
	ft=0;
	#40000
	
	ft=1;
	#10000
	ft=0;
	#40000
	
	ft=1;
	#10000
	ft=0;
	#40000
	
	ft=1;
	#10000
	ft=0;
	#40000
	ft=1;
	#10000
	ft=0;
	#40000
	
	ft=1;
	#10000
	ft=0;
	#40000
	
	ft=1;
	#10000
	ft=0;
	#40000
	ft=1;
	#10000
	ft=0;
	#40000
	
	ft=1;
	#10000
	ft=0;
	#40000
	
	ft=1;
	#10000
	ft=0;
	#40000
	
	ft=1;
	#10000
	ft=0;
	#40000
	
	ft=1;
	#10000
	ft=0;
	#40000
	
	ft=1;
	#10000
	ft=0;
	#40000
	
	ft=1;
	#10000
	ft=0;
	#40000
	
	ft=1;
	#10000
	ft=0;
	#40000
	
	ft=1;
	#10000
	ft=0;
	#40000
	
	ft=1;
	#10000
	ft=0;
	#40000
	
	ft=1;
	#10000
	ft=0;
	#40000
	
	ft=1;
	#10000
	ft=0;
	#40000
	
	ft=1;
	#10000
	ft=0;
	#40000
	
	ft=1;
	#10000
	ft=0;
	#40000
	
	ft=1;
	#10000
	ft=0;
	#40000
	
	ft=1;
	#10000
	ft=0;
	#40000
	
	ft=1;
	#10000
	ft=0;
	#40000
	
	ft=1;
	#10000
	ft=0;
	#40000
	
	ft=1;
	#10000
	ft=0;
	#40000
	
	ft=1;
	#10000
	ft=0;
	#40000
	
	ft=1;
	#10000
	ft=0;
	#40000
	
	ft=1;
	#10000
	ft=0;

end

always #10 clk=~clk;

dcl_1778_8 test(
	.ft(ft),
	.clk(clk),
	.clr(clr),
	.SEG(SEG),
	.fout(fout),
	.codeout(codeout),
	.dot(dot),
	.tH(tH),
	.T(T),
	.q1(q1),
	.q2(q2),
	.q3(q3),
	.q4(q4)
);

endmodule