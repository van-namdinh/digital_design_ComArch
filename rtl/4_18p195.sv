/*
 * Project name   :
 * File name      : 4_18p195.sv
 * Created date   : Th06 23 2019
 * Author         : Van-Nam DINH 
 * Last modified  : Th06 23 2019 12:18
 * Desc           :
 */

// example 4.18     RESETTABLE REGISTER

module flopr(
    input   logic   i_clk,
    input   logic   i_reset,
    input   logic[3:0]  i_d,
    output  logic[3:0]  o_q);

//asynchronous reset

always_ff @(posedge i_clk, posedge i_reset)
    if(i_reset) o_q <= 4'b0;
    else        o_q <= i_d;
endmodule

module flopr(
    input   logic   i_clk,
    input   logic   i_reset,
    input   logic[3:0]  i_d,
    output  logic[3:0]  o_q);
    
//synchronous reset
always_ff @(posedge i_clk)
    if(i_reset) o_q <= 4'b0;
    else        o_q <= i_d;
endmodule


/*NOTE: Notice that posedge reset is in the sensitivity list on the asynchronously resettable flop, 
but not on the synchronously resettable flop. 
Thus, the asynchronously resettable flop immediately responds to a rising edge on reset, 
but the synchronoously resettable flop responds to reset only one the rising edge of the clock.*/
