/*32 位异或运算*/
module xnor32 (out,x,y);
input [31:0]x;
input [31:0]y;
output [31:0]out;
xnor(out[0],x[0],y[0]);
xnor(out[1],x[1],y[1]);
xnor(out[2],x[2],y[2]);
xnor(out[3],x[3],y[3]);
xnor(out[4],x[4],y[4]);
xnor(out[5],x[5],y[5]);
xnor(out[6],x[6],y[6]);
xnor(out[7],x[7],y[7]);
xnor(out[8],x[8],y[8]);
xnor(out[9],x[9],y[9]);
xnor(out[10],x[10],y[10]);
xnor(out[11],x[11],y[11]);
xnor(out[12],x[12],y[12]);
xnor(out[13],x[13],y[13]);
xnor(out[14],x[14],y[14]);
xnor(out[15],x[15],y[15]);
xnor(out[16],x[16],y[16]);
xnor(out[17],x[17],y[17]);
xnor(out[18],x[18],y[18]);
xnor(out[19],x[19],y[19]);
xnor(out[20],x[20],y[20]);
xnor(out[21],x[21],y[21]);
xnor(out[22],x[22],y[22]);
xnor(out[23],x[23],y[23]);
xnor(out[24],x[24],y[24]);
xnor(out[25],x[25],y[25]);
xnor(out[26],x[26],y[26]);
xnor(out[27],x[27],y[27]);
xnor(out[28],x[28],y[28]);
xnor(out[29],x[29],y[29]);
xnor(out[30],x[30],y[30]);
xnor(out[31],x[31],y[31]);

endmodule