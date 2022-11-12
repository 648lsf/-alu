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
	
	/* FOR TESTING:
	assign x = 4'b1001;
	assign y = 4'b0011;
	
	initial
		begin
			$monitor($time,,"x=%b, y=%b, f=%b",x,y,f);
		end
	*/
endmodule
/* ========================================================= */
/*                 32BIT BITWISE AND MODULE                 */
/* ========================================================= */
module bitwiseand(x,y,f);
	input [31:0] x, y;
	output [31:0] f;
	
	and(f[0],x[0],y[0]);
	and(f[1],x[1],y[1]);
	and(f[2],x[2],y[2]);
	and(f[3],x[3],y[3]);
	and(f[4],x[4],y[4]);
	and(f[5],x[5],y[5]);
	and(f[6],x[6],y[6]);
	and(f[7],x[7],y[7]);
	and(f[8],x[8],y[8]);
	and(f[9],x[9],y[9]);
	and(f[10],x[10],y[10]);
	and(f[11],x[11],y[11]);
	and(f[12],x[12],y[12]);
	and(f[13],x[13],y[13]);
	and(f[14],x[14],y[14]);
	and(f[15],x[15],y[15]);
	and(f[16],x[16],y[16]);
	and(f[17],x[17],y[17]);
	and(f[18],x[18],y[18]);
	and(f[19],x[19],y[19]);
	and(f[20],x[20],y[20]);
	and(f[21],x[21],y[21]);
	and(f[22],x[22],y[22]);
	and(f[23],x[23],y[23]);
	and(f[24],x[24],y[24]);
	and(f[25],x[25],y[25]);
	and(f[26],x[26],y[26]);
	and(f[27],x[27],y[27]);
	and(f[28],x[28],y[28]);
	and(f[29],x[29],y[29]);
	and(f[30],x[30],y[30]);
	and(f[31],x[31],y[31]);
	
   
	// assign x = 4'b1001;
	// assign y = 4'b0011;
	
	// initial
	// 	begin
	// 		$monitor($time,,"x=%b, y=%b, f=%b",x,y,f);
	// 	end
	
endmodule
