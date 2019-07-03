/*
 * Project name   :
 * File name      : 4_29p209.sv
 * Created date   : Th07 01 2019
 * Author         : Van-Nam DINH 
 * Last modified  : Th07 01 2019 14:25
 * Desc           :
 */

// Example 4.29 Bad synchronizer with blocking assignments
//Bad implementation of a synchronizer using blocking assignment

module syncbad(
    input   logic i_clk,
    input   logic i_d,
    output  logic o_q);

    logic n1;

    always_ff @(posedge i_clk)
    begin
        n1 = i_d; //blocking
        o_q = n1; //blocking
    end
endmodule
