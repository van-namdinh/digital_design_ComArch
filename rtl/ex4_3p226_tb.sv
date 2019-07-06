/*
 * Project name   :
 * File name      : ex4_3p226_tb.sv
 * Created date   : Th07 06 2019
 * Author         : Van-Nam DINH 
 * Last modified  : Th07 06 2019 09:01
 * Desc           :
 */

module tb_ex4_3();
logic   [3:0] a;
logic y;
xor4 dut(a[3:0],y);
initial 
begin
    a[3]=0;a[2]=0; a[1]=0; a[0] =0; #10;
    assert (y===0) else $error("0000 failed.");
    a[0] = 1; #10;
    assert (y===1) else $error("0001 failed.");
    a[1] = 1; a[0] = 0; #10;
    assert (y===1) else $error("0010 failed.");
    a[0] = 1; #10;
    assert (y===0) else $error("0011 failed.");
    a[2]=1 ;a[1] = 0; a[0] = 0; #10;
    assert (y===1) else $error("0100 failed.");
    a[0] = 1; #10;
    assert (y===0) else $error("0101 failed.");
    a[1] = 1; a[0] = 0; #10;
    assert (y===0) else $error("0110 failed.");
    a[0] = 1; #10;
    assert (y===1) else $error("0111 failed.");
    a[3]=1 ; a[2]=0 ;a[1] = 0; a[0] = 0; #10;
    assert (y===1) else $error("1000 failed.");
    a[0] = 1; #10;
    assert (y===0) else $error("1001 failed.");
    a[1] = 1; a[0] = 0; #10;
    assert (y===0) else $error("1010 failed.");
    a[0] = 1; #10;
    assert (y===1) else $error("1011 failed.");
    a[2]=1 ;a[1] = 0; a[0] = 0; #10;
    assert (y===0) else $error("1100 failed.");
    a[0] = 1; #10;
    assert (y===1) else $error("1101 failed.");
    a[1] = 1; a[0] = 0; #10;
    assert (y===1) else $error("1110 failed.");
    a[0] = 1; #10;
    assert (y===0) else $error("1111 failed.");
end
endmodule
