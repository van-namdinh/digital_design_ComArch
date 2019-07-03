/*
 * Project name   :
 * File name      : 4_34p218.sv
 * Created date   : Th07 01 2019
 * Author         : Van-Nam DINH 
 * Last modified  : Th07 01 2019 16:03
 * Desc           :
 */

// Example 4.34 parameterized N-bit 2:1 multiplexer

module mux2 #(parameter width = 8) (
    input   logic   [width - 1: 0] d0, d1,
    input   logic                   s,
    output  logic   [width - 1: 0] y);

    assign  y = s ? d1 : d0;
endmodule

module mux4_8(
    input   logic [7:0] d0, d1, d2, d3,
    input   logic [1:0] s,
    output  logic [7:0] y);

    logic [7:0] low, hi;

    mux2 lowmux(d0,d1, s[0], low);
    mux2 himux(d2,d3,s[0], hi);
    mux2 outmux(low,hi,s[1],y);
endmodule

module mux4_12(
    input   logic[11:0]     d0,d1,d2,d3,
    input   logic[1:0]      s,
    output  logic[11:0]     y);

    logic [11:0]    low, hi;

    mux2 #(12) lowmux(d0,d1,s[0], low);
    mux2 #(12) himux(d2,d3,s[0], hi);
    mux2 #(12) outmux(low, hi, s[1],y);
endmodule

//NOTE: Do not confuse the use of the # sign indicating delays with the use of #(...) in defining and overriding parameters
