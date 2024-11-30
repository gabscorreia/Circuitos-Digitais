`timescale 1ns/1ns
`include "flipflop_d.v"

module flpD_teste;

    reg  D, clk, preset, clear;
    wire Q, QNot;
    flipflop_D uut( D, clk, preset, clear, Q, QNot);

    initial begin
        $dumpfile("flpD_teste.vcd");
        $dumpvars(0, flpD_teste);

        {preset,clear,D} = 3'b000; #20;
        {preset,clear,D} = 3'b001; #20;
        {preset,clear,D} = 3'b010; #20;
        {preset,clear,D} = 3'b011; #20;
        {preset,clear,D} = 3'b100; #20;
        {preset,clear,D} = 3'b101; #20;
        {preset,clear,D} = 3'b110; #20;
        {preset,clear,D} = 3'b111; #20;

        $display("Teste completo");
        $finish;
    end

    initial begin
        clk = 0;
        forever #10 clk = ~clk ;
    end

endmodule