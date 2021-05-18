`timescale 1ns/1ns
module testbench();
reg	CLK,ft;
wire	[9:0]T;
wire 		c0;
wire  [3:0]num;
wire  [3:0]codeout;
wire	[3:0]q1,q2,q3,q4;
wire	[7:0]SEG;
wire 			CLKL;
initial
begin

	CLK=0;
	//写个200KHz的信号，占空比20%
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
	#40000
	
	ft=1;
	#10000
	ft=0;
		
end

always #5
	CLK=~CLK;
//下面这个Top改成顶层模块的名字
Top cycle_testing(.inclk0(CLK),.ft(ft),.T(T),.c0(c0),.num(num),.codeout(codeout),.q1(q1),.q2(q2),.q3(q3),.q4(q4),.SEG(SEG),.CLKL(CLKL));
endmodule