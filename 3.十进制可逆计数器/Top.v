module dcl_1778_3(clk,clr,x,Q,co,codeout);
input clk,clr,x;
output co;
output [3:0]Q;
output [6:0]codeout;

dcl_1778_3_1(clk,clr,x,co,Q);
dcl_1778_3_2(Q,codeout);

endmodule