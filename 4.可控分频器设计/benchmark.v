`timescale 1ns / 1ns
module benchmark();
	reg clk_in;
	reg sel;
	
	wire clk_out;
	
	parameter T = 20;	//初始周期20ns
	
	initial
	begin
		clk_in = 0;
		sel = 1;
		#2000000
		sel = 0;
	end
	always #(T / 2) clk_in = ~clk_in;
	
	dcl_1778_4 divider(		// ←←←记得改名
		.clk_in  (clk_in),
		.clk_out (clk_out),
		.sel		(sel)
		);
endmodule