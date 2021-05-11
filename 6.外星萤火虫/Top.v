module Top(f0,clk,f1);
input f0,clk;	//f0：虫后信号 clk：50MHz
output reg f1;	//f1：哨虫/信虫 
reg [13:0]Q;//计数器需要计数15000次换算成二进制为14位

always@(posedge clk)
begin
	if(f0&Q<=15000)
	begin
		Q<=Q+16'd1;
		f1<=1'd1;
	end
	else if(f0&Q>=15000)
	begin
		Q<=Q+16'd1;
		f1<=1'd0;
	end
	else
	begin
		if(!f0&Q>0&Q<=15000)
		begin
			Q<=Q+16'd1;
			f1<=1'd1;
		end
		else
		begin
			Q<=16'd0;
			f1<=1'd0;
		end
	end
end
