`timescale 1ns / 1ns		//仿真时间单位/时间精度
module testbench();		//信号声明
	reg f0,clk,p,sta;
	wire f1,f2;
	
	parameter T = 20;	//初始周期20ns
	initial		//复位
	begin
		clk = 0;
		p 	 = 0;
		sta = 0;
		#10000000	//10ms
		p   = 1;
		#5000000	//5ms
		sta = 1;
	end
	initial
	begin//20组f0,f0周期1ms，频率1000Hz
		f0=1;
		#250000
		f0=0;
		#750000
		f0=1;
		#150000
		f0=0;
		#850000
		f0=1;
		#200000
		f0=0;
		#800000
		f0=1;
		#180000
		f0=0;
		#820000
		f0=1;
		#250000
		f0=0;
		#750000
		f0=1;
		#150000
		f0=0;
		#850000
		f0=1;
		#200000
		f0=0;
		#800000
		f0=1;
		#180000
		f0=0;
		#820000
		f0=1;
		#250000
		f0=0;
		#750000
		f0=1;
		#150000
		f0=0;
		#850000
		f0=1;
		#200000
		f0=0;
		#800000
		f0=1;
		#180000
		f0=0;
		#820000
		f0=1;
		#250000
		f0=0;
		#750000
		f0=1;
		#150000
		f0=0;
		#850000
		f0=1;
		#200000
		f0=0;
		#800000
		f0=1;
		#180000
		f0=0;
		#820000
		f0=1;
		#250000
		f0=0;
		#750000
		f0=1;
		#150000
		f0=0;
		#850000
		f0=1;
		#200000
		f0=0;
		#800000
		f0=1;
		#180000
		f0=0;
	end
	always #(T/2)
		clk=~clk;
	dcl_1778_6 divider(.clk(clk),.f0(f0),.f1(f1));
endmodule
