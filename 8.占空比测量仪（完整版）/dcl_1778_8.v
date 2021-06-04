module Top(
	input	 				clk,
	input					rst_n,
	input					wave,
	input             switch,
	output   reg[3:0] seg = 0,
   output   reg[7:0] codeout = 0,
	output   reg      led
);

wire fout; 
reg [13:0]   num = 0;
reg [3:0]   d1,d2,d3,d4;
reg [13:0]	 T = 0;   
reg [13:0]  duty_cycle = 0;
pll_test cnnt(clk,fout);
reg  state;
localparam high_state=1'd0;
localparam low_state=1'd1;
reg [25:0]   high_cnt;
reg [25:0]   low_cnt;
reg [25:0]   high_time;
reg [25:0]   low_time;
reg [3:0]    dat;
reg [1:0]    curseg = 0;
integer segcnt = 0;

always@(posedge fout or negedge rst_n)
	if(!rst_n)
		begin
			state<=high_state;
			high_cnt<=26'd0;
			low_cnt<=26'd0;
			high_time<=26'd0;
			low_time<=26'd0;
		end
	else begin
		case(state)
			high_state:	begin
								if(wave==1)
									begin
										high_cnt<=high_cnt+1'b1;
										state<=high_state;
									end
								else begin
									high_cnt<=26'd0;
									high_time<=high_cnt;
									state<=low_state;
								end
							end
			low_state :	begin
								if(wave==0)
									begin
										low_cnt<=low_cnt+1'b1;
										state<=low_state;
									end
								else begin
									low_time<=low_cnt;
									low_cnt<=26'd0;
									state<=high_state;
								end
				
							end
			default:state<=high_state;
		endcase


T<=((high_time+1)*4'd10+(low_time+1)*4'd10);
duty_cycle<=high_time*10000/(high_time+low_time); //有两位小数但没有小数点
end

always @(posedge fout)
begin
	segcnt <= segcnt + 1;
		
	if (segcnt == 10000)
	begin
		segcnt <= 0;
		curseg <= curseg + 1;
	end
end

always@(posedge fout)
begin
	if(!switch) begin
		num <= T;
		codeout[0] = 0;
	end
	else begin
		num <= duty_cycle;
		case (curseg)
			2'b00: codeout[0] = 0;
			2'b01: codeout[0] = 1;
			2'b10: codeout[0] = 0;
			2'b11: codeout[0] = 0; 
		endcase
	end
	if(num < 10000)
	begin
	led <= 0;
   d1 <= num/1000;
	d2 <= num/100%10;
	d3 <= num/10%10;
	d4 <= num%10;
	end
	else   led <= 1;
end
			
always @(posedge fout)
begin
	seg = 4'b0000;
	case (curseg)
		2'b00: 	begin dat = d1; seg = 4'b1000; end
		2'b01: 	begin dat = d2; seg = 4'b0100; end
		2'b10: 	begin dat = d3; seg = 4'b0010; end
		2'b11: 	begin dat = d4; seg = 4'b0001; end
		default: begin dat = 4'bx; seg = 4'bx;  end
	endcase
end

always @(posedge fout)
begin
	case(dat)
		4'd0    : codeout = 7'b1111110;
		4'd1    : codeout = 7'b0110000;
		4'd2    : codeout = 7'b1101101;
		4'd3    : codeout = 7'b1111001;
		4'd4    : codeout = 7'b0110011;
		4'd5    : codeout = 7'b1011011;
		4'd6    : codeout = 7'b1011111;
		4'd7    : codeout = 7'b1110000;
		4'd8    : codeout = 7'b1111111;
		4'd9    : codeout = 7'b1111011;
		default : codeout = 7'b1001111; 
	endcase
end

endmodule
