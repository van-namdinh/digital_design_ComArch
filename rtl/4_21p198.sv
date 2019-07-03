/*
 * Project name   :
 * File name      : 4_21p198.sv
 * Created date   : Th06 23 2019
 * Author         : Van-Nam DINH 
 * Last modified  : Th06 23 2019 13:53
 * Desc           :
 */

// example 4.21: D LATCH page 198

module latch(
    input   logic   i_clk,
    input   logic[3:0]  i_d,
    output  logic[3:0]  o_q);

always_latch
    if(i_clk) o_q <= i_d;
endmodule
