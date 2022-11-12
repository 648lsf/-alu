`include "alu.v"
`timescale 1ps/1ps
module tb_alu;
reg [31:0]x;
reg [31:0]y;
reg [4:0]z;
wire [31:0]result;
wire overflow;
reg [2:0]operation;
integer i,j,m,n;
alu test(result,x,y,z,operation,overflow);




initial begin
    $dumpfile("tb_alu.vcd");
    $dumpvars(0, tb_alu);
end

initial begin
//   for(i=0;i<8;i++)
//   begin
//     #10 operation=i;
//     for(j=0;j<32;j++)
//     begin
//         #10 z=j;
//         for(n=0;n<5;n++)
//         begin

//          #10 x={$random}%256; y={$random}%256;
//         end
        
// end
//   end
#10 x=32'b11111111111111111111111111111111;y=32'b11111111111111111111111111111111;z=5'b10000;operation=3'b000;
#10 x=32'b10;y=32'b11111111111111111111111111111110;z=5'b10000;operation=3'b000;
end
initial begin
    $monitor("运算数x=%b, 运算数y=%b, 移位操作或截取操作数z=%b,功能选择数operation=%b,结果result=%b,溢出overflow=%b",x,y,z,operation,result,overflow);
end

endmodule
`default_nettype wire