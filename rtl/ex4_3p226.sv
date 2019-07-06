/*
 * Project name   :
 * File name      : ex4_3p226.sv
 * Created date   : Th07 06 2019
 * Author         : Van-Nam DINH 
 * Last modified  : Th07 06 2019 08:57
 * Desc           :
 */

// exerciser 4.3 Write an HDL module that computes a four-input XOR function.
// The input is a3:a0 and the output is y

module xor4(
    input   logic[3:0] a,
    output  logic       y);
always_comb
assign y = ^a;
endmodule
