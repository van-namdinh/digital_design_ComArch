/*
 * Project name   :
 * File name      : 4_17p194.sv
 * Created date   : Th06 23 2019
 * Author         : Van-Nam DINH 
 * Last modified  : Th06 23 2019 12:15
 * Desc           :
 */

// example 4.17 REGISTER

module flop(
    input   logic   clk,
    input   logic[3:0]  i_d,
    output  logic[3:0]  o_q);

always_ff @(posedge clk)
    o_q <= i_d;
endmodule
