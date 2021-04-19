module 顶层文件(clk,clr,x,Q,co,codeout);
input clk,clr,x;
output co;
output [3:0]Q;
output [6:0]codeout;

模块1(clk,clr,x,co,Q);
模块2(Q,codeout);

endmodule