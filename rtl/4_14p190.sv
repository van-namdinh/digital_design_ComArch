/*
 * Project name   :
 * File name      : 4_14p190.sv
 * Created date   : Th06 23 2019
 * Author         : Van-Nam DINH 
 * Last modified  : Th06 23 2019 11:57
 * Desc           :
 */

// example 4.14 STRUCTURAL MODEL OF 4:1 MULTIPLEXER

module mux4(
    input   logic[3:0]  d0, d1,d2,d3,
    input   logic [1:0] s,
    output  logic[3:0] y);

    logic[3:0] low, high;

    mux2 lowmux(d0,d1,s[0], low);
    mux2 highmux(d2,d3,s[0], high);
    mux2 finalmux(low, high, s[1], y);
endmodule
