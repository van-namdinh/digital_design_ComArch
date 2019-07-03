/*
 * Project name   :
 * File name      : 4_22p199.sv
 * Created date   : Th06 23 2019
 * Author         : Van-Nam DINH 
 * Last modified  : Th06 23 2019 13:55
 * Desc           :
 */

// exmaple 4.22: INVERTER USING always/process

module inv(
    input   logic[3:0]  a,
    output  logic[3:0]  y);
always_comb
    y=~a;
endmodule
