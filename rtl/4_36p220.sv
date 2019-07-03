/*
 * Project name   :
 * File name      : 4_36p220.sv
 * Created date   : Th07 01 2019
 * Author         : Van-Nam DINH 
 * Last modified  : Th07 01 2019 16:46
 * Desc           :
 */

// Example 4.36 parameterized N-INPUT and GATE

module andN #(parameter width = 8) (
    input   logic[width - 1:0]  a,
    output  logic               y);

    genvar i;
    logic [width-1:0] x;

    generate
        assign x[0] = a[0];
        for(i=1; i<width; i=i+1)
        begin: forloop
            assign x[i] = a[i] & x[i-1];
        end
    endgenerate

    assign y = x[width-1];
endmodule
