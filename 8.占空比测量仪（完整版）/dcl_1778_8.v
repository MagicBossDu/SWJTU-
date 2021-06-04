module dcl_1778_8(ft,clk,clr,SEG,fout,codeout,dot,tH,T,q1,q2,q3,q4);
//Q为占空比的一百倍,T为周期，tH为高电平时长，q1,q2,q3,q4分别为Q的个位，十位，百位，千位，
input ft,clk,clr;
output reg [9:0]tH=10'b1;
output reg [9:0]T=10'b1;
reg [31:0]rtH=31'b1;
reg [31:0]rT=31'b1;
reg [31:0]x;
reg [3:0]Y;
output fout;
reg [17:0]t;
reg [15:0]Q;
reg [31:0]tempa;  
reg [31:0]tempb;  
reg [63:0]temp_a;  
reg [63:0]temp_b;  
reg [31:0]rQ;
output reg [3:0]q1;
output reg [3:0]q2;
output reg [3:0]q3;
output reg [3:0]q4;
reg [15:0]TQ;
output reg [7:0]SEG;
output reg [6:0]codeout;
output reg dot;

PLL cnnt(clk,fout);

always@(posedge fout)
begin
	if(ft&(rtH==rT))
	begin
		rtH<=rtH+31'b1;
		rT<=rT+31'b1;
	end
	else
	begin
		if(~ft&(rtH<=rT))
		begin
			rtH<=rtH;
			rT<=rT+31'b1;
		end
		else
		begin
			rtH<=31'b1;
			rT<=31'b1;
		end
	end
	x=rtH*10000;
end

integer i;  
  
always @(x or rT)  
begin  
    tempa <= x;  
    tempb <= rT;  
end  
  
always @(tempa or tempb)  
begin  
    temp_a = {32'h00000000,tempa};  
    temp_b = {tempb,32'h00000000};   
    for(i = 0;i < 32;i = i + 1)  
        begin  
            temp_a = {temp_a[62:0],1'b0};  
            if(temp_a[63:32] >= tempb)  
                temp_a = temp_a - temp_b + 1'b1;  
            else  
                temp_a = temp_a;  
        end  
  
    rQ <= temp_a[31:0];   
end  

always@(posedge ft)
begin
	tH=rtH;
	T=rT;
	Q=rQ;
	if(clr)
		TQ=T;
	else
		TQ=Q;
	q1=TQ/1000;             //提取千位数
	q2=(TQ%1000)/100;      //提取百位数
	q3=(TQ%100)/10;        //提取十位数
	q4=TQ%10;              //提取个位数
end

always@(posedge clk)
begin
	if(t<=50000)
	begin
		t<=t+1'd1;
		SEG<=8'b00000001;
		Y<=q1;
	end
	else
	begin
		if(t<=100000)
		begin
			t<=t+1'd1;
			SEG<=8'b00000010;
			Y<=q2;
		end
		else
		begin
			if(t<=150000)
			begin
				t<=t+1'd1;
				SEG<=8'b00000100;
				Y<=q3;
			end
			else
			begin
				if(t<=200000)
				begin
					t<=t+1'd1;
					SEG<=8'b00001000;
					Y<=q4;
				end
				else
					t<=1'd0;
			end
		end
	end
end

always@(Y)
begin
	case(Y)
		4'd0: codeout=7'b1111110;    
		4'd1: codeout=7'b0110000;
		4'd2: codeout=7'b1101101;
		4'd3: codeout=7'b1111001;
		4'd4: codeout=7'b0110011;
		4'd5: codeout=7'b1011011;
		4'd6: codeout=7'b1011111;
		4'd7: codeout=7'b1110000;
		4'd8: codeout=7'b1111111;
		4'd9: codeout=7'b1111011;
		default: codeout=7'bx;  
	endcase
end

always@(SEG)
begin
	if(SEG==8'b00000100)
		dot<=1'd1;
	else
		dot<=1'd0;
end
endmodule
