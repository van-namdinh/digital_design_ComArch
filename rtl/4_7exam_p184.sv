/*
 * Project name   :
 * File name      : 4_7exam_p184.sv
 * Created date   : Th06 23 2019
 * Author         : Van-Nam DINH 
 * Last modified  : Th06 23 2019 11:02
 * Desc           :
 */

// example 4.7 FULL ADDER

module fulladder(
    input   logic   a,b,cin,
    output  logic   s,cout);

    logic   p,g;

    assign p = a^b;
    assign q = a&b;

    assign s = p^cin;
    assign cout = g | (p & cin);
endmodule     
