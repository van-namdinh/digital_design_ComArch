/*
 * Project name   :
 * File name      : 4_19p196.sv
 * Created date   : Th06 23 2019
 * Author         : Van-Nam DINH 
 * Last modified  : Th06 23 2019 12:28
 * Desc           :
 */

// example 4.19 RESETTABLE ENABLED REGISTER

module flopenr(
    input   logic       i_clk,
    input   logic       i_reset,
    input   logic       i_en,
    input   logic[3:0]  i_d,
    output  logic[3:0]  o_q);

    //asynchronous reset
    always_ff @(posedge i_clk, posedge i_reset)
        if(i_reset) o_q <= 4'b0;
        else if(i_en)   o_q <= i_d;
endmodule
