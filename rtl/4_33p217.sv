/*
 * Project name   :
 * File name      : 4_33p217.sv
 * Created date   : Th07 01 2019
 * Author         : Van-Nam DINH 
 * Last modified  : Th07 01 2019 15:53
 * Desc           :
 */

// Esample 4.33 (a) Unsigned multiplexer (b) signed multiplexer

// 4.33(a) unsigned multiplexer

module multiplexer(
    input   logic   [3:0] a,b,
    output  logic   [7:0] y);

    assign y = a*b;
endmodule


//4.33(b) signed multiplexer

module multiplexer(
    input   logic   signed [3:0] a,b,
    output  logic   signed [7:0] y);

    assign y = a*b;
endmodule
