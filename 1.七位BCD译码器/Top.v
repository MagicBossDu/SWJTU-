module decode4_7(codeout,indec);
input[3:0] indec; //说明数组宽度为4的输入信号
output [6:0] codeout; //说明数组宽度为7的输出信号
reg [6:0] codeout; //说明输出变量数据类型
always @(indec) //用always块语句描述逻辑
begin
case (indec)
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
default: codeout=7‘bx; //说明其他输入情况的取值
endcase
end
endmodule