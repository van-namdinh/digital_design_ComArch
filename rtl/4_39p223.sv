/*
 * Project name   :
 * File name      : 4_39p223.sv
 * Created date   : Th07 03 2019
 * Author         : Van-Nam DINH 
 * Last modified  : Th07 03 2019 14:04
 * Desc           :
 */

// example 4.39 testbench with test vector file
module testbench3();
    logic   clk, reset;
    logic   a,b,c,y, yexpected;
    logic[31:0]     vectornum, errors;
    logic[3:0]      testvectors[10000:0];

    //instantiate device under test
    sillyfunction dut(a,b,c,y);

    //generate clock
    always
    begin
        clk = 1; #5;    clk = 0; #5;
    end

    // at start of test, load vectors and pulse reset
    initial
    begin
        $readmemb("example.tv", testvectors);
        vectornum = 0; errors = 0;
        reset = 1; #27; reset = 0;
    end

    // apply test vectors on rising edge of clk
    always @(posedge clk)
    begin
        #1; {a,b,c,yexpected} = testvectors[vectornum];
    end

    // check results on falling edge of clk
    always @(negedge clk)
        if(~reset) begin //slkip during reset
            if(y !== yexpected) begin // check result
                $display("Error: inputs = %b", {a,b,c});
                $display("output = %b (%b expected)", y, yexpected);
                errors = errors + 1;
            end

            vectornum = vectornum + 1;
            if(testvectors[vectornum] === 4'bx)begin
                $display("%d tests completed with %d errors", vectornum, errors);
//                $finish;
            end
        end
endmodule
