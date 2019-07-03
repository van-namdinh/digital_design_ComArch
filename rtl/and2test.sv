/*
 * Project name   :
 * File name      : and2test.sv
 * Created date   : Th07 02 2019
 * Author         : Van-Nam DINH 
 * Last modified  : Th07 02 2019 18:51
 * Desc           :
 */

module and2(
    input logic a,b,
    output logic y);
assign y = a & b;
endmodule
