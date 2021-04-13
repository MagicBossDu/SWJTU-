module dcl_1778_4(clk_in,sel,clk_out);//改成你自己的
input  	  clk_in,sel;
output reg clk_out;
reg [15:0] cnt;


always@(posedge clk_in)
if(!sel)		//sel低电平取学号后4位
begin				  // 1后面9个0
	if(cnt < 5625) // 1000000000÷学号后4位÷20*20% 高
	begin
		cnt <= cnt+1;
		clk_out <= 1;
	end					  
	else if(cnt < 28120) // 1000000000÷学号后4位÷20
	begin
		cnt <= cnt+1;
		clk_out <= 0;
	end
	else
		cnt <= 0;
end
else		 //sel高电平取学号后5位
begin
	if(cnt < 849) // 1000000000÷学号后5位÷20*20% 高
	begin
		cnt <= cnt + 1;
		clk_out <= 1;
	end
	else if(cnt < 4244) // 1000000000÷学号后5位÷20
	begin
		cnt <= cnt + 1;
		clk_out <= 0;
	end
	else
		cnt <= 0;
end
endmodule
