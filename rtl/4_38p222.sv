/*
 * Project name   :
 * File name      : 4_38p222.sv
 * Created date   : Th07 02 2019
 * Author         : Van-Nam DINH 
 * Last modified  : Th07 02 2019 18:12
 * Desc           :
 */

// Example 4.38 SELF-CHECKING TESTBENCH
module testbench2();
logic   a,b,c,y;

// instantiate device under test
sillyfunction dut(a,b,c,y);

// apply inputs one at a time 
// checking results

initial begin
    a = 0; b = 0; c = 0;    #10;
    assert(y===0) else $error("000 failed.");
    c = 1;                  #10
    assert(y===1) else $error("001 failed.");
    b = 1; c = 0;           #10
    assert(y===1) else $error("010 failed.");
    c = 1;                  #10;
    assert(y===1) else $error("011 failed.");
    a = 1; b = 0; c = 0;    #10;
    assert(y===0) else $error("100 failed.");
    c = 1;                  #10;
    assert(y===0) else $error("101 failed.");
    b = 1; c = 0;           #10;
    assert(y===1) else $error("110 failed.");
    c = 1;                  #10;
    assert(y===1) else $error("111 failed.");
end
endmodule
