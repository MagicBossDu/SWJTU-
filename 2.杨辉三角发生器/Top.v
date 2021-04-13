module dcl_1778_2(clk,en,Q,codeout);   	//模块名为。括号中为所有端口信号名。
input clk,en;          						 //输入信号clk，en；
output [6:0] codeout;  							//输出信号位7位的codeout；
output [2:0] Q;      						 //输出信号为3位的Q； 
dcl_1778_2_1 (clk,en,Q);   						 //调用子模块 7进制计数器
dcl_1778_2_2 (Q,codeout);  							//调用子模块  7位BCD
endmodule