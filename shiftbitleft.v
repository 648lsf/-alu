/*32 位移位运算 */
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
module mux8to1(d0, d1, d2, d3, d4, d5, d6, d7, s0, s1, s2, f);
	input d0, d1, d2, d3, d4, d5, d6, d7, s0, s1, s2;
	output f;
	
	mux4to1 mux0 (d0, d1, d2, d3, s0, s1, w1);
	mux4to1 mux1 (d4, d5, d6, d7, s0, s1, w2);
	mux2to1 mux2 (w1, w2, s2, f);
endmodule

module mux4to1(d0, d1, d2, d3, s0, s1, f);
	input d0, d1, d2, d3, s0, s1;
	output f;
	
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
