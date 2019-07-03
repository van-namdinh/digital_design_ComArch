/*
 * Project name   :
 * File name      : 4_16p192.sv
 * Created date   : Th06 23 2019
 * Author         : Van-Nam DINH 
 * Last modified  : Th06 23 2019 12:07
 * Desc           :
 */

// Example 4.16 ACCESSING PARTS OF BUSSES

module mux2_8(
    input   logic[7:0] d0,d1,
    input   logic       s,
    output  logic[7:0] y);

    mux2 lsbmux(d0[3:0],d1[3:0],s,y[3:0]);
    mux2_msbmux(d0[7:4],d1[7:4],s,y[7:4]);
endmodule
