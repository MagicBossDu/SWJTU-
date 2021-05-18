//译码器
module decode(codein,codeout);		//decode模块，改成学号命名
input [3:0]codein;
output reg [6:0] codeout;
always @(codein) 
begin
	case (codein)
		4'd0 : codeout=7'b1111110; 
		4'd1 : codeout=7'b0110000;
		4'd2 : codeout=7'b1101101;
		4'd3 : codeout=7'b1111001;
		4'd4 : codeout=7'b0110011;
		4'd5 : codeout=7'b1011011;
		4'd6 : codeout=7'b1011111;
		4'd7 : codeout=7'b1110000;
		4'd8 : codeout=7'b1111111;
		4'd9 : codeout=7'b1111011;
		default: codeout=7'bx; //说明其他输入情况的取值
	endcase
end
endmodule