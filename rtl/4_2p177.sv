/*
 * Project name   :
 * File name      : 4_2p177.sv
 * Created date   : Th06 23 2019
 * Author         : Van-Nam DINH 
 * Last modified  : Th06 23 2019 10:10
 * Desc           :
 */

//Example 4.2 INVERTER


module inv(
    input   logic [3:0] a,
    output  logic [3:0] y);

    assign y = ~a;
endmodule
