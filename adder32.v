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