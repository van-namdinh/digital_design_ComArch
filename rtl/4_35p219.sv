/*
 * Project name   :
 * File name      : 4_35p219.sv
 * Created date   : Th07 01 2019
 * Author         : Van-Nam DINH 
 * Last modified  : Th07 01 2019 16:39
 * Desc           :
 */

// Example 4.35 Parameterrized N:2^N decoder

module decoder #(parameter N = 3) (
    input   logic[N-1:0]    a,
    output  logic[2**N-1:0] y);

always_comb
begin
    y = 0;
    y[a] = 1;
end
endmodule

//NOTE 2**N indicates 2^N
