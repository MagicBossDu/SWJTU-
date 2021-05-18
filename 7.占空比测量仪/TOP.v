module Top(inclk0,ft,T,codeout,SEG);
//CLK 50MHz; ft 被测信号; T 周期
input inclk0,ft;		//50MHz; 被测信号
output [9:0]T;		//周期T在20到500之间
wire c0;		//100Mhz,1000Hz
wire CLKL;
wire [3:0]q1;
wire [3:0]q2;
wire [3:0]q3;
wire [3:0]q4;
output reg [7:0]SEG;
reg [2:0]cnt;
wire [6:0]codeout1,codeout2,codeout3,codeout4;
output reg [6:0]codeout;
wire c0;

PLL PLL(inclk0,c0);	//产生100MHz信号 	请把这行的第一个PLL改成PLL模块的名字
main main(c0,ft,tH,T);	//测出高电平信号和总周期，数值为10ns的倍数----请把这行的第一个main改成main模块里的名字（main模块改学号命名）
split split(T*10,q1,q2,q3,q4);	//请把这行的第一个split改成split模块里的名字（split模块改学号命名）
decode decode1(q1,codeout1);		//请把这行的第一个decode改成decode模块里的名字（decode模块改学号命名）
decode decode2(q2,codeout2);		//请把这行的第一个decode改成decode模块里的名字（decode模块改学号命名）
decode decode3(q3,codeout3);		//请把这行的第一个decode改成decode模块里的名字（decode模块改学号命名）
decode decode4(q4,codeout4);		//请把这行的第一个decode改成decode模块里的名字（decode模块改学号命名）
fre fre(inclk0,CLKL);		//分频用于数码管扫描输出的信号---请把这行的第一个fre改成fre模块里的名字（fre模块改学号命名）
always @ (posedge CLKL)
begin
	if(cnt<5)
	begin
		case(cnt)
		3'd1:
		begin	
			SEG<=4'b00001000;
			codeout<=codeout1;
		end
		3'd2:
		begin	
			SEG<=4'b00000100;
			codeout<=codeout2;
		end
		3'd3:
		begin	
			SEG<=4'b00000010;
			codeout<=codeout3;
		end
		3'd4:
		begin	
			SEG<=4'b00000001;
			codeout<=codeout4;
		end
		endcase
		cnt<=cnt+1;
	end
	else
	begin
		SEG<=4'b00001000;
		codeout<=codeout1;
		cnt<=2;
	end
end

endmodule
