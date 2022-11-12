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
          110                 xnor32 逻辑异或
          111                 未使用 */
/*对于前仿真的截图，以及波形文件保存在        */



module alu(f,x,y,operation);
input [31:0]x;
input [31:0]y;
input [2:0]operation;


endmodule