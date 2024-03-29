/*
 * Project name   :
 * File name      : 4_27p205.sv
 * Created date   : Th06 23 2019
 * Author         : Van-Nam DINH 
 * Last modified  : Th06 23 2019 15:01
 * Desc           :
 */

// example 4.27 PRIORITY CIRCUIT USING DON'T CARES

module priority_casez(
    input  logic[3:0]   a,
    output logic[3:0]   y);
    
    always_comb
        casez(a)
            4'b1???:    y <= 4'b1000;
            4'b01??:    y <= 4'b0100;
            4'b001?:    y <= 4'b0010;
            4'b0001:    y <= 4'b0001;
            default:    y <= 4'b0000;
        endcase
endmodule
// The casez satement acts like a case statement except that it also recognizes ? as don't care

