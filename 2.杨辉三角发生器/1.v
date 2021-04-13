module BCD_7(x,codeout);      //七位BCD译码器
input [2:0]x;
output reg[6:0] codeout;
always@(x)
begin
	case(x)
	3'd0: codeout=7'b0000001;
	3'd1: codeout=7'b0000011;
	3'd2: codeout=7'b0000111;
	3'd3: codeout=7'b0001111;
	3'd4: codeout=7'b0011111;
	3'd5: codeout=7'b0111111;
	3'd6: codeout=7'b0000000;
	default codeout=7'bx;
endcase
end
endmodule