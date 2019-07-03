/*
 * Project name   :
 * File name      : 4_4p180.sv
 * Created date   : Th06 23 2019
 * Author         : Van-Nam DINH 
 * Last modified  : Th06 23 2019 10:08
 * Desc           :
 */

module and8(    input   logic [7:0] a,
                output  logic       y);
            assign  y = &a;
            //&a is much easier to write than
            // assign y = a[7]&a[6]&...a[0];
endmodule
