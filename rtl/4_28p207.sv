/*
 * Project name   :
 * File name      : 4_28p207.sv
 * Created date   : Th07 01 2019
 * Author         : Van-Nam DINH 
 * Last modified  : Th07 01 2019 13:48
 * Desc           :
 */

// Example 4.28: Full adder using nonblocking assignments

module fulladder(
    input   logic   a,b,cin,
    output  logic   s, cout);

    logic p,g;
    always_comb
    begin
        p <= a^b; //nonblocking
        g <= a&b; //nonblocking

        s <= p ^ cin;
        cout <= g | (p&cin);
    end
endmodule

//NOTE If the sensitivity list of the always statement in HDL example 4.28 were written as always @(a,b,cin) rather than always_comb, then the statement would not reevaluate when p or g changes. In that case, s would be incorrectly left at 0, not 1.
