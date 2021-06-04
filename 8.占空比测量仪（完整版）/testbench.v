`timescale 1ns / 1ns
module testbench();
reg 	 	  clk;
reg		  rst_n;
reg	  	  wave;
reg        switch;
wire [3:0] seg;
wire [7:0] codeout;
wire 		  led;

initial
begin
	clk=0;
	//写个200KHz的信号，占空比20%
	wave=1;
	#10000
	wave=0;
	#40000
	
	wave=1;
	#10000
	wave=0;
	#40000
	
	wave=1;
	#10000
	wave=0;
	#40000
	
	wave=1;
	#10000
	wave=0;
	#40000
	
	wave=1;
	#10000
	wave=0;
	#40000
	
	wave=1;
	#10000
	wave=0;
	#40000
	
	wave=1;
	#10000
	wave=0;
	#40000
	wave=1;
	#10000
	wave=0;
	#40000
	
	wave=1;
	#10000
	wave=0;
	#40000
	
	wave=1;
	#10000
	wave=0;
	#40000
	wave=1;
	#10000
	wave=0;
	#40000
	
	wave=1;
	#10000
	wave=0;
	#40000
	
	wave=1;
	#10000
	wave=0;
	#40000
	
	wave=1;
	#10000
	wave=0;
	#40000
	
	wave=1;
	#10000
	wave=0;
	#40000
	
	wave=1;
	#10000
	wave=0;
	#40000
	
	wave=1;
	#10000
	wave=0;
	#40000
	
	wave=1;
	#10000
	wave=0;
	#40000
	
	wave=1;
	#10000
	wave=0;
	#40000
	
	wave=1;
	#10000
	wave=0;
	#40000
	
	wave=1;
	#10000
	wave=0;
	#40000
	
	wave=1;
	#10000
	wave=0;
	#40000
	
	wave=1;
	#10000
	wave=0;
	#40000
	
	wave=1;
	#10000
	wave=0;
	#40000
	
	wave=1;
	#10000
	wave=0;
	#40000
	
	wave=1;
	#10000
	wave=0;
	#40000
	
	wave=1;
	#10000
	wave=0;
	#40000
	
	wave=1;
	#10000
	wave=0;
	#40000
	
	wave=1;
	#10000
	wave=0;
	#40000
	
	wave=1;
	#10000
	wave=0;
	#40000
	
	wave=1;
	#10000
	wave=0;
	#40000
	
	wave=1;
	#10000
	wave=0;
end

initial
begin
	rst_n=1;
	switch=0;
	#1000000
	switch=1;
end

always #10 clk=~clk;

dcl_1778_8_jxy test(
	.clk(clk),
	.rst_n(rst_n),
	.wave(wave),
	.switch(switch),
	.seg(seg),
	.codeout(codeout),
	.led(led)
);

endmodule
