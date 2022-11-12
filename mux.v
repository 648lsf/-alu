/*数据选择器*/
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
	
	/*	FOR TESTING:
	assign d0 = 0;
	assign d1 = 0;
	assign d2 = 0;
	assign d2 = 0;
	assign d4 = 1;
	assign d5 = 1;
	assign d6 = 1;
	assign d7 = 0;
	assign d8 = 1;
	assign s0 = 1;
	assign s1 = 1;
	assign s2 = 1;
	
	initial
		begin
		$monitor($time,,"d7=%b, d6=%b, d5=%b, d4=%b, d3=%b, d2=%b, d1=%b, d0=%b, s2=%b, s1=%b, s0=%b, f=%b", d7, d6, d5, d4, d3, d2, d1, d0, s2, s1, s0, f);
		$display($time,,"d7=%b, d6=%b, d5=%b, d4=%b, d3=%b, d2=%b, d1=%b, d0=%b, s2=%b, s1=%b, s0=%b, f=%b", d7, d6, d5, d4, d3, d2, d1, d0, s2, s1, s0, f);
		$display($time,,"d7=%b, d6=%b, d5=%b, d4=%b, d3=%b, d2=%b, d1=%b, d0=%b, s2=%b, s1=%b, s0=%b, f=%b", d7, d6, d5, d4, d3, d2, d1, d0, s2, s1, s0, f);
		end
	*/
endmodule

module mux4to1(d0, d1, d2, d3, s0, s1, f);
	input d0, d1, d2, d3, s0, s1;
	output f;
	
	mux2to1 mux0 (d0, d1, s0, w1);
	mux2to1 mux1 (d2, d3, s0, w2);
	mux2to1 mux2 (w1, w2, s1, f);

	/* FOR TESTING:
	assign d0 = 0;
	assign d1 = 0;
	assign d2 = 0;
	assign d3 = 1;
	assign s0 = 1;
	assign s1 = 1;
	
	initial
		begin
		$monitor($time,,"d3=%b, d2=%b, d1=%b, d0=%b, s1=%b, s0=%b, f=%b", d3, d2, d1, d0, s1, s0, f);
		$display($time,,"d3=%b, d2=%b, d1=%b, d0=%b, s1=%b, s0=%b, f=%b", d3, d2, d1, d0, s1, s0, f);
		$display($time,,"d3=%b, d2=%b, d1=%b, d0=%b, s1=%b, s0=%b, f=%b", d3, d2, d1, d0, s1, s0, f);
		end
	*/
endmodule

module mux2to1(d0, d1, s0, f);
	input d0, d1, s0;
	output f;
	
	and(w17, d1, s0);
	not(w15, s0);
	and(w18, w15, d0);
	or(f, w17, w18);
	
	/* FOR TESTING:
	assign d0 = 0;
	assign d1 = 1;
	assign s0 = 1;
	
	initial
		begin
		$monitor($time,,"d1=%b, d0=%b, s0=%b f=%b",d1,d0,s0, f);
		$display($time,,"d1=%b, d0=%b, s0=%b f=%b",d1,d0,s0, f);
		$display($time,,"d1=%b, d0=%b, s0=%b f=%b",d1,d0,s0, f);
		end
	*/
endmodule