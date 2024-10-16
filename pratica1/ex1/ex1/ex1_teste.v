`timescale 1ns/1ns
`include "ex1.v"

module ex1_teste;

    reg a, b;
    wire verde, vermelho;
    ex1 uut(a, b, verde, vermelho);

    initial begin
        $dumpfile("ex1_teste.vcd");
        $dumpvars(0, ex1_teste);

        a = 0;
        b = 0; #20;
        a = 0; 
        b = 1; #20;
        a = 1;
        b = 0; #20;
        a = 1;
        b = 1; #20;

        $display("Teste completo");
    end

endmodule