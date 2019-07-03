/*
 * Project name   :
 * File name      : tband2.sv
 * Created date   : Th07 02 2019
 * Author         : Van-Nam DINH 
 * Last modified  : Th07 02 2019 18:53
 * Desc           :
 */

module tband2();
logic a,b,y;
and2 dut(a,b,y);
initial begin
    a = 0; b = 0; #10;
    assert (y===0) else $error
    b = 1; #10;
    a = 1; b = 0; #10;
    b = 1; #10;
end
endmodule
