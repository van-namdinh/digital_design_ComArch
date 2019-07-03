/*
 * Project name   :
 * File name      : 4_20p197.sv
 * Created date   : Th06 23 2019
 * Author         : Van-Nam DINH 
 * Last modified  : Th06 23 2019 13:47
 * Desc           :
 */

// example 4.20 SYNCHRONIZER

module sync(
    input   logic   i_clk,
    input   logic   i_d,
    output  logic   o_q);

logic n1;

always_ff @(posedge i_clk)
    begin
        n1 <= i_d;  //nonblocking
        o_q <= n1;  //nonblocking
    end
endmodule
