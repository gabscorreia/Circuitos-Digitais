`timescale 1ns/1ns
`include "mux_comportamental.v"

module comportamental;

    reg [3:0] D;
    reg [1:0] S;
    wire Y;
    COMPORTAMENTAL uut(D, S, Y);

    initial begin
        $dumpfile("comp_teste.vcd");
        $dumpvars(1);

        D[0] = 1; 
        S[0] = 0;
        S[1] = 0;#20;

        D[1] = 1;
        S[0] = 0;
        S[1] = 1;#20;

        D[2] = 1;
        S[0] = 1;
        S[1] = 0;#20;

        D[3] = 1;
        S[0] = 1;
        S[1] = 1;#20;

        $display("Teste completo");
    end

endmodule