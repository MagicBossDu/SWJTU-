module dcl_1778_3_1(clk,clr,x,co,Q);
input clk,clr,x;		//clk时钟，clr使能，x选择计数模式
output co;			//借位或进位
output reg[3:0]Q;
 
always @(posedge clk,negedge clr)
if(~clr)
	Q<=4'd0;
else if(x)			//x==1时十进制加计数
begin
	if(Q==4'd9)  	//Q==9
		Q<=4'd0;
	else				//Q!=9
		Q<=Q+1'd1;
end
else					//x==0时十进制减计数
begin
	if(Q==4'd0)
		Q<=4'd9;
	else
		Q<=Q-1'd1;
end
assign co=(x&(Q==4'd9))|(clr&~x&Q==4'd0);
endmodule