`timescale 1ns/1ns
`include "ex2.v"

module ex2_teste;

    reg a, b, c;
    wire s1, s2, s3;
    ex2 uut(a, b, c, s1, s2, s3);

    initial begin
        $dumpfile("ex2.vcd");
        $dumpvars(0, ex2_teste);

        a = 0;
        b = 0; 
        c = 0;#20;

        a = 0;
        b = 0; 
        c = 1;#20;

        a = 0;
        b = 1; 
        c = 0;#20;

        a = 0;
        b = 1; 
        c = 1;#20;

        a = 1;
        b = 0; 
        c = 0;#20;

        a = 1;
        b = 0; 
        c = 1;#20;

        a = 1;
        b = 1; 
        c = 0;#20;

        a = 1;
        b = 1; 
        c = 1;#20;

        $display("Teste completo");
    end

endmodule