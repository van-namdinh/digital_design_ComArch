/*
 * Project name   :
 * File name      : 4_12p188.sv
 * Created date   : Th06 23 2019
 * Author         : Van-Nam DINH 
 * Last modified  : Th06 23 2019 11:30
 * Desc           :
 */

// Example 4.12 BIT SWIZZLING

module bizszizzling(
    input logic[3:0] c,d,
    output logic [7:0] y);

    assign y = {c[2:1], {3{d[0]}}, c[0], 2'b01};
endmodule
