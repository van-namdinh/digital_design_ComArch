/*
 * Project name   :
 * File name      : 4_26p204.sv
 * Created date   : Th06 23 2019
 * Author         : Van-Nam DINH 
 * Last modified  : Th06 23 2019 14:54
 * Desc           :
 */

// example 4.26     priority circuit

module prioritykt(
    input   logic[3:0] a,
    output  logic[3:0] y);

    always_comb
        if      (a[3])   y <= 4'b1000;
        else if (a[2])   y <= 4'b0100;
        else if (a[1])   y <= 4'b0010;
        else if (a[0])   y <= 4'b0001;
        else             y <= 4'b0000;
endmodule
