/*
 * Project name   :
 * File name      : 4_37p221.sv
 * Created date   : Th07 02 2019
 * Author         : Van-Nam DINH 
 * Last modified  : Th07 02 2019 14:57
 * Desc           :
 */

// Example 4.37 TESTBENCH
module testbench();
logic   a,b,c,y;

// initiate device under test DUT = design under test
sillyfunction dut(a,b,c,y);

// apply inputs one at a time 
initial begin
    a=0; b=0; c = 0; #10;
    c=1;                #10;
    b=1; c = 0;         #10;
    c=1;                #10;
    a=1; b=0; c=10;     #10;
    c=1;                #10;
    b=1; c=0;           #10;
    c=1;                #10;
end
endmodule
