/*
 * Project name   :
 * File name      : 4_23p200.sv
 * Created date   : Th06 23 2019
 * Author         : Van-Nam DINH 
 * Last modified  : Th06 23 2019 14:03
 * Desc           :
 */

// example 4.23:    full adder using always/process

module fulladder(
    input       logic       a,b,cin,
    output      logic       s, cout);

    logic p,g;

    always_comb
    begin
        p = a ^ b;          //blocking
        g = a & b;          //blocking 

        s = p ^ cin;        //blocking
        g = g | (p & cin);  //blocking
    end
endmodule
