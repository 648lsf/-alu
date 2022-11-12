/*************************************************alu设计******************************/
//以下设计均是门级设计//
// 实现的功能有：32位超前加法器，32位无符号数的左移，32位无符号数从右开始的截断，32位数的逻辑与，32位数的逻辑或，32位数的逻辑非，32位数的逻辑异或
/*      operation             运算
          000                 adder32 相加
          001                 shiftbitleft 左移
          010                 truncatiob  截断
          011                 and 逻辑与
          100                 or  逻辑或
          101                 no  逻辑非
          110                 xor32 逻辑异或
          111                 未使用 */
/*对于前仿真产生的波形图保存在tb_alu.vcd里面        */



module alu(f,x,y,z,operation,overflow);
input [31:0]x;//x表示运算数1
input [31:0]y;//y表示运算数2
input [4:0]z; //表示移位数或则截断数
input [2:0]operation; //表示功能选择
output [31:0]f;
output overflow;

wire overflow;

wire [31:0]f1;
wire [31:0]f2;
wire [31:0]f3;
wire [31:0]f4;
wire [31:0]f5;
wire [31:0]f6;
wire [31:0]f7;
adder32 addresult(x,y,f1,overflow);
shiftbitleft shiftresult(f2,x,z);
right_truncation truncationresult(f3,x,z);
bitwiseand andresult(x,y,f4);
bitwiseor orresult(x,y,f5);
no noresult(f6,x);
xor32 xoresult(f7,x,y);
out outputselector(f1,f2,f3,f4,f5,f6,f7,operation,f);










endmodule
module out (f1,f2,f3,f4,f5,f6,f7,operation,s);
input [31:0]f1;
input [31:0]f2;
input [31:0]f3;
input [31:0]f4;
input [31:0]f5;
input [31:0]f6;
input [31:0]f7;
input [2:0]operation;
output [31:0]s;

wire zero;
assign zero=1'b0;

mux8to1 mux1(f1[0],f2[0],f3[0],f4[0],f5[0],f6[0],f7[0],zero,operation[0],operation[1],operation[2],s[0]);
mux8to1 mux2(f1[1],f2[1],f3[1],f4[1],f5[1],f6[1],f7[1],zero,operation[0],operation[1],operation[2],s[1]);
mux8to1 mux3(f1[2],f2[2],f3[2],f4[2],f5[2],f6[2],f7[2],zero,operation[0],operation[1],operation[2],s[2]);
mux8to1 mux4(f1[3],f2[3],f3[3],f4[3],f5[3],f6[3],f7[3],zero,operation[0],operation[1],operation[2],s[3]);
mux8to1 mux5(f1[4],f2[4],f3[4],f4[4],f5[4],f6[4],f7[4],zero,operation[0],operation[1],operation[2],s[4]);
mux8to1 mux6(f1[5],f2[5],f3[5],f4[5],f5[5],f6[5],f7[5],zero,operation[0],operation[1],operation[2],s[5]);
mux8to1 mux7(f1[6],f2[6],f3[6],f4[6],f5[6],f6[6],f7[6],zero,operation[0],operation[1],operation[2],s[6]);
mux8to1 mux8(f1[7],f2[7],f3[7],f4[7],f5[7],f6[7],f7[7],zero,operation[0],operation[1],operation[2],s[7]);
mux8to1 mux9(f1[8],f2[8],f3[8],f4[8],f5[8],f6[8],f7[8],zero,operation[0],operation[1],operation[2],s[8]);
mux8to1 mux10(f1[9],f2[9],f3[9],f4[9],f5[9],f6[9],f7[9],zero,operation[0],operation[1],operation[2],s[9]);
mux8to1 mux11(f1[10],f2[10],f3[10],f4[10],f5[10],f6[10],f7[10],zero,operation[0],operation[1],operation[2],s[10]);
mux8to1 mux12(f1[11],f2[11],f3[11],f4[11],f5[11],f6[11],f7[11],zero,operation[0],operation[1],operation[2],s[11]);
mux8to1 mux13(f1[12],f2[12],f3[12],f4[12],f5[12],f6[12],f7[12],zero,operation[0],operation[1],operation[2],s[12]);
mux8to1 mux14(f1[13],f2[13],f3[13],f4[13],f5[13],f6[13],f7[13],zero,operation[0],operation[1],operation[2],s[13]);
mux8to1 mux15(f1[14],f2[14],f3[14],f4[14],f5[14],f6[14],f7[14],zero,operation[0],operation[1],operation[2],s[14]);
mux8to1 mux16(f1[15],f2[15],f3[15],f4[15],f5[15],f6[15],f7[15],zero,operation[0],operation[1],operation[2],s[15]);
mux8to1 mux17(f1[16],f2[16],f3[16],f4[16],f5[16],f6[16],f7[16],zero,operation[0],operation[1],operation[2],s[16]);
mux8to1 mux18(f1[17],f2[17],f3[17],f4[17],f5[17],f6[17],f7[17],zero,operation[0],operation[1],operation[2],s[17]);
mux8to1 mux19(f1[18],f2[18],f3[18],f4[18],f5[18],f6[18],f7[18],zero,operation[0],operation[1],operation[2],s[18]);
mux8to1 mux20(f1[19],f2[19],f3[19],f4[19],f5[19],f6[19],f7[19],zero,operation[0],operation[1],operation[2],s[19]);
mux8to1 mux21(f1[20],f2[20],f3[20],f4[20],f5[20],f6[20],f7[20],zero,operation[0],operation[1],operation[2],s[20]);
mux8to1 mux22(f1[21],f2[21],f3[21],f4[21],f5[21],f6[21],f7[21],zero,operation[0],operation[1],operation[2],s[21]);
mux8to1 mux23(f1[22],f2[22],f3[22],f4[22],f5[22],f6[22],f7[22],zero,operation[0],operation[1],operation[2],s[22]);
mux8to1 mux24(f1[23],f2[23],f3[23],f4[23],f5[23],f6[23],f7[23],zero,operation[0],operation[1],operation[2],s[23]);
mux8to1 mux25(f1[24],f2[24],f3[24],f4[24],f5[24],f6[24],f7[24],zero,operation[0],operation[1],operation[2],s[24]);
mux8to1 mux26(f1[25],f2[25],f3[25],f4[25],f5[25],f6[25],f7[25],zero,operation[0],operation[1],operation[2],s[25]);
mux8to1 mux27(f1[26],f2[26],f3[26],f4[26],f5[26],f6[26],f7[26],zero,operation[0],operation[1],operation[2],s[26]);
mux8to1 mux28(f1[27],f2[27],f3[27],f4[27],f5[27],f6[27],f7[27],zero,operation[0],operation[1],operation[2],s[27]);
mux8to1 mux29(f1[28],f2[28],f3[28],f4[28],f5[28],f6[28],f7[28],zero,operation[0],operation[1],operation[2],s[28]);
mux8to1 mux30(f1[29],f2[29],f3[29],f4[29],f5[29],f6[29],f7[29],zero,operation[0],operation[1],operation[2],s[29]);
mux8to1 mux31(f1[30],f2[30],f3[30],f4[30],f5[30],f6[30],f7[30],zero,operation[0],operation[1],operation[2],s[30]);
mux8to1 mux32(f1[31],f2[31],f3[31],f4[31],f5[31],f6[31],f7[31],zero,operation[0],operation[1],operation[2],s[31]);
   

    
endmodule
module mux8to1(d0, d1, d2, d3, d4, d5, d6, d7, s0, s1, s2, f);
	input d0, d1, d2, d3, d4, d5, d6, d7, s0, s1, s2;
	output f;
	wire w1,w2;
	mux4to1 mux0 (d0, d1, d2, d3, s0, s1, w1);
	mux4to1 mux1 (d4, d5, d6, d7, s0, s1, w2);
	mux2to1 mux2 (w1, w2, s2, f);
endmodule

module mux4to1(d0, d1, d2, d3, s0, s1, f);
	input d0, d1, d2, d3, s0, s1;
	output f;
	wire w1,w2;
	mux2to1 mux0 (d0, d1, s0, w1);
	mux2to1 mux1 (d2, d3, s0, w2);
	mux2to1 mux2 (w1, w2, s1, f);
endmodule

module mux2to1(d0, d1, s0, f);
	input d0, d1, s0;
	output f;
	
	and(w17, d1, s0);
	not(w15, s0);
	and(w18, w15, d0);
	or(f, w17, w18);
endmodule

module adder32(A,
               B,
               S,
               C32);
    input [31:0] A;
    input [31:0] B;
    output [31:0] S;
    output C32;
    
    wire px1,gx1,px2,gx2;
    wire c16;
    wire zero;
    assign zero=1'b0;
    
    CLA_16 CLA1(
    .A(A[15:0]),
    .B(B[15:0]),
    .c0(zero),
    .S(S[15:0]),
    .px(px1),
    .gx(gx1)
    );
    
    CLA_16 CLA2(
    .A(A[31:16]),
    .B(B[31:16]),
    .c0(c16),
    .S(S[31:16]),
    .px(px2),
    .gx(gx2)
    );
    xor (c16,gx1,0);
    wire px2c16;
    and (px2c16,px2,c16);
    xor (C32,gx2,px2c16);
    
    
endmodule
    
    
module adder(X,
	Y,
	Cin,
	F,
	Cout);
	
	input X,Y,Cin;
	output F,Cout;
	xor (F,X,Y,Cin);
	wire XxorY,XxorYandCin,XY;
	xor (XxorY,X,Y);
	and (XxorYandCin,XxorY,Cin);
	and (XY,X,Y);
	or (Cout,XxorYandCin,XY);
	
endmodule

module CLA(c0,c1,c2,c3,c4,p1,p2,p3,p4,g1,g2,g3,g4);
	
	input c0,g1,g2,g3,g4,p1,p2,p3,p4;
	output c1,c2,c3,c4;
	wire p1c0,p2g1,p2p1c0,p3g2,p3p2g1,p3p2p1c0,p4g3,p4p3g2,p4p3p2g1,p4p3p2p1c0;
	and(p1c0,p1,c0),
	(p2g1,p2,g1),
	(p2p1c0,p2,p1c0),
	(p3g2,p3,g2),
	(p3p2g1,p3,p2g1),
	(p3p2p1c0,p3,p2p1c0),
	(p4g3,p4,g3),
	(p4p3g2,p4,p3g2),
	(p4p3p2g1,p4,p3p2g1);
	xor (c1,g1,p1c0),
	(c2,g2,p2g1,p2p1c0),
	(c3,g3,p3g2,p3p2g1,p3p2p1c0),
	(c4,g4,p4g3,p4p3g2,p4p3p2g1);
	
endmodule
	
module adder_4(x,y,c0,c4,F,Gm,Pm);
	input [3:0] x;
	input [3:0] y;
	input c0;
	output c4,Gm,Pm;
	output [3:0] F;
	
	wire p1,p2,p3,p4,g1,g2,g3,g4;
	wire c1,c2,c3;
	adder adder1(
	.X(x[0]),
	.Y(y[0]),
	.Cin(c0),
	.F(F[0]),
	.Cout()
	);
	
	adder adder2(
	.X(x[1]),
	.Y(y[1]),
	.Cin(c1),
	.F(F[1]),
	.Cout()
	);
	
	adder adder3(
	.X(x[2]),
	.Y(y[2]),
	.Cin(c2),
	.F(F[2]),
	.Cout()
	);
	
	adder adder4(
	.X(x[3]),
	.Y(y[3]),
	.Cin(c3),
	.F(F[3]),
	.Cout()
	);
	
	CLA CLA(
	.c0(c0),
	.c1(c1),
	.c2(c2),
	.c3(c3),
	.c4(c4),
	.p1(p1),
	.p2(p2),
	.p3(p3),
	.p4(p4),
	.g1(g1),
	.g2(g2),
	.g3(g3),
	.g4(g4)
	);
	
	xor (p1,x[0],y[0]),
	(p2,x[1],y[1]),
	(p3,x[2],y[2]),
	(p4,x[3],y[3]);
	
	and (g1,x[0],y[0]),
	(g2,x[1],y[1]),
	(g3,x[2],y[2]),
	(g4,x[3],y[3]);
	
	wire p4g3,p4p3g2,p4p3p2g1;
	and(Pm,p1,p2,p3,p4),
	(p4g3,p4,g3),
	(p4p3g2,p4,p3,g2),
	(p4p3p2g1,p4,p3,p2,g1);
	xor (Gm,g4,p4g3,p4p3g2,p4p3p2g1);
	
	
endmodule
	
module CLA_16(A,B,c0,S,px,gx);
	input [15:0] A;
	input [15:0] B;
	input c0;
	output gx,px;
	output [15:0] S;
	
	wire c4,c8,c12;
	wire Pm1,Gm1,Pm2,Gm2,Pm3,Gm3,Pm4,Gm4;
	
	adder_4 adder1(
	.x(A[3:0]),
	.y(B[3:0]),
	.c0(c0),
	.c4(),
	.F(S[3:0]),
	.Gm(Gm1),
	.Pm(Pm1)
	);
	
	adder_4 adder2(
	.x(A[7:4]),
	.y(B[7:4]),
	.c0(c4),
	.c4(),
	.F(S[7:4]),
	.Gm(Gm2),
	.Pm(Pm2)
	);
	
	adder_4 adder3(
	.x(A[11:8]),
	.y(B[11:8]),
	.c0(c8),
	.c4(),
	.F(S[11:8]),
	.Gm(Gm3),
	.Pm(Pm3)
	);
	
	adder_4 adder4(
	.x(A[15:12]),
	.y(B[15:12]),
	.c0(c12),
	.c4(),
	.F(S[15:12]),
	.Gm(Gm4),
	.Pm(Pm4)
	);
	wire Pm1c0,Pm2Gm1,Pm2Pm1c0,Pm3Gm2,Pm3Pm2Gm1,Pm3Pm2Pm1c0;
	and (Pm1c0,Pm1,c0),
	(Pm2Gm1,Pm2,Gm1),
	(Pm2Pm1c0,Pm2,Pm1,c0),
	(Pm3Gm2,Pm3,Gm2),
	(Pm3Pm2Gm1,Pm3,Pm2,Gm1),
	(Pm3Pm2Pm1c0,Pm3,Pm2,Pm1,c0);
	xor (c4,Gm1,Pm1c0),
	(c8,Gm2,Pm2Gm1,Pm2Pm1c0),
	(c12,Gm3,Pm3Gm2,Pm3Pm2Gm1,Pm3Pm2Pm1c0);
	
	wire Pm4Gm3,Pm4Pm3Gm2,Pm4Pm3Pm2Gm1;
	and (px,Pm1,Pm2,Pm3,Pm4),
	(Pm4Gm3,Pm4,Gm3),
	(Pm4Pm3Gm2,Pm4,Pm3,Gm2),
	(Pm4Pm3Pm2Gm1,Pm4,Pm3,Pm2,Gm1);
	xor (gx,Gm4,Pm4Gm3,Pm4Pm3Gm2,Pm4Pm3Pm2Gm1);
	
endmodule
module shiftbitleft(c,a,b);
output [31:0]c;
input [31:0]a;
input [4:0]b;//表示移位的位数
wire [31:0]d,d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,d11,d12,d13,d14,d15,d16,d17,d18
,d19,d20,d21,d22,d23,d24,d25,d26,d27,d28,d29,d30,d31;
assign d={31'd0,a[0]};
assign d1={30'd0,a[0],a[1]};
assign d2={29'd0,a[0],a[1],a[2]};
assign d3={28'd0,a[0],a[1],a[2],a[3]};
assign d4={27'd0,a[0],a[1],a[2],a[3],a[4]};
assign d5={26'd0,a[0],a[1],a[2],a[3],a[4],a[5]};
assign d6={25'd0,a[0],a[1],a[2],a[3],a[4],a[5],a[6]};
assign d7={24'd0,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7]};
assign d8={23'd0,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8]};
assign d9={22'd0,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9]};
assign d10={21'd0,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10]};
assign d11={20'd0,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11]};
assign d12={19'd0,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12]};
assign d13={18'd0,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13]};
assign d14={17'd0,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14]};
assign d15={16'd0,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15]};
assign d16={15'd0,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15],a[16]};
assign d17={14'd0,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15],a[16],a[17]};
assign d18={13'd0,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15],a[16],a[17],a[18]};
assign d19={12'd0,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15],a[16],a[17],a[18],a[19]};
assign d20={11'd0,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15],a[16],a[17],a[18],a[19],a[20]};
assign d21={10'd0,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15],a[16],a[17],a[18],a[19],a[20],a[21]};
assign d22={9'd0,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15],a[16],a[17],a[18],a[19],a[20],a[21],a[22]};
assign d23={8'd0,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15],a[16],a[17],a[18],a[19],a[20],a[21],a[22],a[23]};
assign d24={7'd0,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15],a[16],a[17],a[18],a[19],a[20],a[21],a[22],a[23],a[24]};
assign d25={6'd0,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15],a[16],a[17],a[18],a[19],a[20],a[21],a[22],a[23],a[24],a[25]};
assign d26={5'd0,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15],a[16],a[17],a[18],a[19],a[20],a[21],a[22],a[23],a[24],a[25],a[26]};
assign d27={4'd0,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15],a[16],a[17],a[18],a[19],a[20],a[21],a[22],a[23],a[24],a[25],a[26],a[27]};
assign d28={3'd0,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15],a[16],a[17],a[18],a[19],a[20],a[21],a[22],a[23],a[24],a[25],a[26],a[27],a[28]};
assign d29={2'd0,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15],a[16],a[17],a[18],a[19],a[20],a[21],a[22],a[23],a[24],a[25],a[26],a[27],a[28],a[29]};
assign d30={1'd0,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15],a[16],a[17],a[18],a[19],a[20],a[21],a[22],a[23],a[24],a[25],a[26],a[27],a[28],a[29],a[30]};
assign d31={a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],a[8],a[9],a[10],a[11],a[12],a[13],a[14],a[15],a[16],a[17],a[18],a[19],a[20],a[21],a[22],a[23],a[24],a[25],a[26],a[27],a[28],a[29],a[30],a[31]};
mux32 m1(d,b,c[0]);
mux32 m2(d1,b,c[1]);
mux32 m3(d2,b,c[2]);
mux32 m4(d3,b,c[3]);
mux32 m5(d4,b,c[4]);
mux32 m6(d5,b,c[5]);
mux32 m7(d6,b,c[6]);
mux32 m8(d7,b,c[7]);
mux32 m9(d8,b,c[8]);
mux32 m10(d9,b,c[9]);
mux32 m11(d10,b,c[10]);
mux32 m12(d11,b,c[11]);
mux32 m13(d12,b,c[12]);
mux32 m14(d13,b,c[13]);
mux32 m15(d14,b,c[14]);
mux32 m16(d15,b,c[15]);
mux32 m17(d16,b,c[16]);
mux32 m18(d17,b,c[17]);
mux32 m19(d18,b,c[18]);
mux32 m20(d19,b,c[19]);
mux32 m21(d20,b,c[20]);
mux32 m22(d21,b,c[21]);
mux32 m23(d22,b,c[22]);
mux32 m24(d23,b,c[23]);
mux32 m25(d24,b,c[24]);
mux32 m26(d25,b,c[25]);
mux32 m27(d26,b,c[26]);
mux32 m28(d27,b,c[27]);
mux32 m29(d28,b,c[28]);
mux32 m30(d29,b,c[29]);
mux32 m31(d30,b,c[30]);
mux32 m32(d31,b,c[31]);
endmodule
module mux32(x,y,f);
input [31:0]x;
input [4:0]y;
output f;
mux16to1 mux1(x[0],x[1],x[2],x[3],x[4],x[5],x[6],x[7],x[8],x[9],x[10],x[11],x[12],x[13],x[14],x[15],y[0],y[1],y[2],y[3],w1);
mux16to1 mux2(x[16],x[17],x[18],x[19],x[20],x[21],x[22],x[23],x[24],x[25],x[26],x[27],x[28],x[29],x[30],x[31],y[0],y[1],y[2],y[3],w2);
mux2to1 mux3(w1,w2,y[4],f);


endmodule
module mux16to1(d0, d1, d2, d3, d4, d5, d6, d7,d8,d9,d10,d11,d12,d13,d14,d15, s0, s1, s2, s3,f);
input d0, d1, d2, d3, d4, d5, d6, d7, d8, d9, d10, d11, d12, d13, d14,d15;
input s0, s1, s2, s3;
output f;
mux8to1 mux0(d0,d1,d2,d3,d4,d5,d6,d7,s0,s1,s2,w1);
mux8to1 mux1(d8,d9,d10,d11,d12,d13,d14,d15,s0,s1,s2,w2);
mux2to1 mux3(w1,w2,s3,f);




endmodule
module right_truncation(f,x,y);//从低位开始截断
input  [31:0] x;
input  [4:0]y;
output [31:0]f;
wire [31:0]temp;
assign temp=1<<y;
wire temp2;
assign temp2=0;
or or1(w1,temp[31],temp2);
and and1(f[31],x[31],w1);

or or2(w2,temp[30],temp2);
and and2(f[30],x[30],w2);

or or3(w3,temp[29],temp2);
and and3(f[29],x[29],w3);

or or4(w4,temp[28],temp2);
and and4(f[28],x[28],w4);

or or5(w5,temp[27],temp2);
and and5(f[27],x[27],w5);

or or6(w6,temp[26],temp2);
and and6(f[26],x[26],w6);

or or7(w7,temp[25],temp2);
and and7(f[25],x[25],w7);

or or8(w8,temp[24],temp2);
and and8(f[24],x[24],w8);

or or9(w9,temp[23],temp2);
and and9(f[23],x[23],w9);

or or10(w10,temp[22],temp2);
and and10(f[22],x[22],w10);

or or11(w11,temp[21],temp2);
and and11(f[21],x[21],w11);

or or12(w12,temp[20],temp2);
and and12(f[20],x[20],w12);

or or13(w13,temp[19],temp2);
and and13(f[19],x[19],w13);

or or14(w14,temp[18],temp2);
and and14(f[18],x[18],w14);

or or15(w15,temp[17],temp2);
and and15(f[17],x[17],w15);

or or16(w16,temp[16],temp2);
and and16(f[16],x[16],w16);

or or17(w17,temp[15],temp2);
and and17(f[15],x[15],w17);

or or18(w18,temp[14],temp2);
and and18(f[14],x[14],w18);

or or19(w19,temp[13],temp2);
and and19(f[13],x[13],w19);

or or20(w20,temp[12],temp2);
and and20(f[12],x[12],w20);

or or21(w21,temp[11],temp2);
and and21(f[11],x[11],w21);

or or22(w22,temp[10],temp2);
and and22(f[10],x[10],w22);

or or23(w23,temp[9],temp2);
and and23(f[9],x[9],w23);

or or24(w24,temp[8],temp2);
and and24(f[8],x[8],w24);

or or25(w25,temp[7],temp2);
and and25(f[7],x[7],w25);

or or26(w26,temp[6],temp2);
and and26(f[6],x[6],w26);

or or27(w27,temp[5],temp2);
and and27(f[5],x[5],w27);

or or28(w28,temp[4],temp2);
and and28(f[4],x[4],w28);

or or29(w29,temp[3],temp2);
and and29(f[3],x[3],w29);

or or30(w30,temp[2],temp2);
and and30(f[2],x[2],w30);

or or31(w31,temp[1],temp2);
and and31(f[1],x[1],w31);

or or32(w32,temp[0],temp2);
and and32(f[0],x[0],w32);











endmodule
/*32位的与运算*/
module bitwiseand(x,y,f);
	input [31:0] x, y;
	output [31:0] f;
	
	and and1[31:0](f,x,y);
endmodule
module bitwiseor(x,y,f);
	input [31:0] x, y;
	output [31:0] f;
	
	or(f[0],x[0],y[0]);
	or(f[1],x[1],y[1]);
	or(f[2],x[2],y[2]);
	or(f[3],x[3],y[3]);
	or(f[4],x[4],y[4]);
	or(f[5],x[5],y[5]);
	or(f[6],x[6],y[6]);
	or(f[7],x[7],y[7]);
	or(f[8],x[8],y[8]);
	or(f[9],x[9],y[9]);
	or(f[10],x[10],y[10]);
	or(f[11],x[11],y[11]);
	or(f[12],x[12],y[12]);
	or(f[13],x[13],y[13]);
	or(f[14],x[14],y[14]);
	or(f[15],x[15],y[15]);
	or(f[16],x[16],y[16]);
	or(f[17],x[17],y[17]);
	or(f[18],x[18],y[18]);
	or(f[19],x[19],y[19]);
	or(f[20],x[20],y[20]);
	or(f[21],x[21],y[21]);
	or(f[22],x[22],y[22]);
	or(f[23],x[23],y[23]);
	or(f[24],x[24],y[24]);
	or(f[25],x[25],y[25]);
	or(f[26],x[26],y[26]);
	or(f[27],x[27],y[27]);
	or(f[28],x[28],y[28]);
	or(f[29],x[29],y[29]);
	or(f[30],x[30],y[30]);
	or(f[31],x[31],y[31]);
endmodule
module no(out,x);
output [31:0] out;
input [31:0] x;
not not1[31:0](out,x);
endmodule
module xor32 (out,x,y);
input [31:0]x;
input [31:0]y;
output [31:0]out;
xor(out[0],x[0],y[0]);
xor(out[1],x[1],y[1]);
xor(out[2],x[2],y[2]);
xor(out[3],x[3],y[3]);
xor(out[4],x[4],y[4]);
xor(out[5],x[5],y[5]);
xor(out[6],x[6],y[6]);
xor(out[7],x[7],y[7]);
xor(out[8],x[8],y[8]);
xor(out[9],x[9],y[9]);
xor(out[10],x[10],y[10]);
xor(out[11],x[11],y[11]);
xor(out[12],x[12],y[12]);
xor(out[13],x[13],y[13]);
xor(out[14],x[14],y[14]);
xor(out[15],x[15],y[15]);
xor(out[16],x[16],y[16]);
xor(out[17],x[17],y[17]);
xor(out[18],x[18],y[18]);
xor(out[19],x[19],y[19]);
xor(out[20],x[20],y[20]);
xor(out[21],x[21],y[21]);
xor(out[22],x[22],y[22]);
xor(out[23],x[23],y[23]);
xor(out[24],x[24],y[24]);
xor(out[25],x[25],y[25]);
xor(out[26],x[26],y[26]);
xor(out[27],x[27],y[27]);
xor(out[28],x[28],y[28]);
xor(out[29],x[29],y[29]);
xor(out[30],x[30],y[30]);
xor(out[31],x[31],y[31]);
endmodule