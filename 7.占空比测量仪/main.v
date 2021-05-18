//测量周期和高电平时间，输出10ns的倍数
module main(c0,ft,tH,T);		//main模块，改成学号命名法
//c0 PLL产生的100MHz; ft 被测信号; tH 高电平时间; T 周期
input c0,ft;
output reg [9:0]tH;	//记录高电平时间
reg [9:0]t_H;			//记录高电平时间		为啥只有高电平是对的
output reg [9:0]T;	//T在20到500之间
reg [9:0]cnt;			//cnt在20到500之间
reg [9:0]T_1_2;
reg a,b,c,d;
reg if1,if2,if3,if4;
//100KHz		0.00001s			1000c0	10000ns
//2MHz		0.0000005s		40c0		400ns
//50MHz		0.00000002s		2c0		20ns
//100MHz		0.00000001s		1c0		10ns
//最后一位一直是0
always@(posedge c0)
begin
	a=b;
	b=c;
	c=d;
	d=ft;		//a,b和c不断记录前一时刻和后一时刻的ft的值，用于判断上升沿
	if(~a & d)	//ft到达上升沿
	begin
		if1=1;
	end
	if(~a & c)
	begin
		if2=1;
		cnt=1;
		t_H=2;
	end
	if(ft)
	begin
		if3=1;
		t_H=t_H+1;
		cnt=cnt+1'd1;
	end
	else
	if(~ft & cnt>0)
		if4=1;
		cnt=cnt+1'd1;
end

always@(posedge ft)
begin
	tH<=t_H;
	T<=cnt-T_1_2+1;
end
always@(negedge ft)
	T_1_2=cnt/2;
endmodule