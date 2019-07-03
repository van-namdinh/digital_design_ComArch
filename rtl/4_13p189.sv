/*
 * Project name   :
 * File name      : 4_13p189.sv
 * Created date   : Th06 23 2019
 * Author         : Van-Nam DINH 
 * Last modified  : Th06 23 2019 11:49
 * Desc           :
 */

// example 4.13 LOGIC GATES WITH DELAYS

`timescale 1ns/1ps

module example(
    input   logic   a,b,c,
    output  logic   y);

    logic ab, bb, cb, n1, n2, n3;

    assign #1 {ab, bb, cb} = ~{a,b,c};
    assign #2   n1 = ab & bb & cb;
    assign #2   n2 = a & bb & cb;
    assign #2   n3 = a & bb & c;
    assign #4   y= n1 | n2 | n3;
endmodule
