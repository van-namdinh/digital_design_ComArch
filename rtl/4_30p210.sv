/*
 * Project name   :
 * File name      : 4_30p210.sv
 * Created date   : Th07 01 2019
 * Author         : Van-Nam DINH 
 * Last modified  : Th07 01 2019 14:35
 * Desc           :
 */

// Example 4.30 Divide-by-3 Finite State Machine (FSM)

module dividedby3FSM(
    input   logic   clk,
    input   logic   reset,
    output  logic   y);

    typedef enum logic [1:0] {S0, S1, S2} statetype;
    statetype [1:0] state, nextstate;

    //State register
    always_ff @(posedge clk, posedge reset)
        if(reset) State <= S0;
        else    State <= nextstate;

    // next state logic
    always_comb
        case(State)
            S0:         nextstate <= S1;
            S1:         nextstate <= S2;
            S2:         nextstate <= S0;
            default:    nextstate <= S0;
        endcase

    // Output logic
    assign y = (State == S0);
endmodule    
