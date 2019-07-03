/*
 * Project name   :
 * File name      : 4_25p202.sv
 * Created date   : Th06 23 2019
 * Author         : Van-Nam DINH 
 * Last modified  : Th06 23 2019 14:40
 * Desc           :
 */

// example 4.25 3:8 DECODER

module decoder3_8(
    input   logic[2:0]  a,
    output  logic[7:0]  y);

always_comb
    case(a)
        3'b000:     y=8'b0000_0001;
        3'b001:     y=8'b0000_0010;
        3'b010:     y=8'b0000_0100;
        3'b011:     y=8'b0000_1000;
        3'b100:     y=8'b0001_0000;
        3'b101:     y=8'b0010_0000;
        3'b110:     y=8'b0100_0000;
        3'b111:     y=8'b1000_0000;
        default:    y=8'bxxxx_xxxx;
    endcase
endmodule
