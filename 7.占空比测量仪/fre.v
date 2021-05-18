/*分频用于数码管扫描输出*/
module fre(inclk0,CLKL);		//fre模块，改成学号命名法
input inclk0;
output reg CLKL;
reg [19:0]cnt;

always@(inclk0)
begin
	if(cnt<100000)
	begin
		CLKL<=1'd1;
		cnt<=cnt+1'd1;
	end
	else if(cnt<200000)
	begin
		CLKL<=1'd0;
		cnt<=cnt+1;
	end
	else
		cnt<=0;
end
endmodule