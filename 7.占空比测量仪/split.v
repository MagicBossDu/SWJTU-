//把数拆开
module split(Q,q1,q2,q3,q4);		//split模块，改成学号命名
input [15:0]Q;
output reg [3:0]q1;
output reg [3:0]q2;
output reg [3:0]q3;
output reg [3:0]q4;

always@(Q)
begin
	q1=Q/1000;            //提取千位
	q2=(Q%1000)/100;      //提取百位
	q3=(Q%100)/10;        //提取十位
	q4=Q%10;              //提取个位
end
endmodule