/*
 * Project name   :
 * File name      : 4_10p187.sv
 * Created date   : Th06 23 2019
 * Author         : Van-Nam DINH 
 * Last modified  : Th06 23 2019 11:08
 * Desc           :
 */

// example 4.10: TRISTATE BUFFER

module tristate(
    input   logic[3:0]  a,
    input   logic       en,
    output  tri     [3:0] y);
//    output  logic [3:0] y);

    assign y = en?a:4'bz;
endmodule
