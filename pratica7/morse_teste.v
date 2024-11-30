`timescale 10ns/1ns
`include "morse.v"

module morse_teste;


    reg in, reset, clk;
    wire [7:0] out;
    morse uut(in, out, reset, clk);

    initial begin
        $dumpfile("morse.vcd");
        $dumpvars(0, morse_teste);

        in = 1;

        // LETRA A
        reset = 1; #10
        reset = 0; #10
        in = 1; #10     // .
        in = 0; #10 #10 // -

        // LETRA B
        reset = 1; #10 #10
        reset = 0; #10 #10
        in = 0; #10// -
        in = 1; #10 #10 // .
        #10 #10 // .
        #10 #10 // .

        // LETRA C
        in = 0; // -
        reset = 1; #10 #10
        reset = 0; #10 #10
        in = 1; #10 // .
        in = 0; #10 #10// -
        in = 1; #10 #10 // .
        
        // LETRA D (-..)
        reset = 1; #10;
        reset = 0; #10;
        in = 0; #10;     // Traço (-)
        in = 1; #10 #10; // Ponto (.)
        in = 1; #10 #10; // Ponto (.)

        // LETRA E (.)
        reset = 1; #10;
        reset = 0; #10;
        in = 1; #10;     // Ponto (.)

        // LETRA F (..-.)
        reset = 1; #10;
        reset = 0; #10;
        in = 1; #10;     // Ponto (.)
        in = 1; #10 #10; // Ponto (.)
        in = 0; #10 #10; // Traço (-)
        in = 1; #10 #10; // Ponto (.)

        // LETRA G (--.)
        reset = 1; #10;
        reset = 0; #10;
        in = 0; #10;     // Traço (-)
        in = 0; #10 #10; // Traço (-)
        in = 1; #10 #10; // Ponto (.)

        // LETRA H (....)
        reset = 1; #10;
        reset = 0; #10;
        in = 1; #10;     // Ponto (.)
        in = 1; #10 #10; // Ponto (.)
        in = 1; #10 #10; // Ponto (.)
        in = 1; #10 #10; // Ponto (.)

        // LETRA I (..)
        reset = 1; #10;
        reset = 0; #10;
        in = 1; #10;     // Ponto (.)
        in = 1; #10 #10; // Ponto (.)

        // LETRA J (.---)
        reset = 1; #10;
        reset = 0; #10;
        in = 1; #10;     // Ponto (.)
        in = 0; #10 #10; // Traço (-)
        in = 0; #10 #10; // Traço (-)
        in = 0; #10 #10; // Traço (-)

        // LETRA K (-.-)
        reset = 1; #10;
        reset = 0; #10;
        in = 0; #10;     // Traço (-)
        in = 1; #10 #10; // Ponto (.)
        in = 0; #10 #10; // Traço (-)

        // LETRA L (.-..)
        reset = 1; #10;
        reset = 0; #10;
        in = 1; #10;     // Ponto (.)
        in = 0; #10 #10; // Traço (-)
        in = 1; #10 #10; // Ponto (.)
        in = 1; #10 #10; // Ponto (.)

        // LETRA M (--)
        reset = 1; #10;
        reset = 0; #10;
        in = 0; #10;     // Traço (-)
        in = 0; #10 #10; // Traço (-)

        // LETRA N (-.)
        reset = 1; #10;
        reset = 0; #10;
        in = 0; #10;     // Traço (-)
        in = 1; #10 #10; // Ponto (.)

        // LETRA O (---)
        reset = 1; #10;
        reset = 0; #10;
        in = 0; #10;     // Traço (-)
        in = 0; #10 #10; // Traço (-)
        in = 0; #10 #10; // Traço (-)

        // LETRA P (.--.)
        reset = 1; #10;
        reset = 0; #10;
        in = 1; #10;     // Ponto (.)
        in = 0; #10 #10; // Traço (-)
        in = 0; #10 #10; // Traço (-)
        in = 1; #10 #10; // Ponto (.)

        // LETRA Q (--.-)
        reset = 1; #10;
        reset = 0; #10;
        in = 0; #10;     // Traço (-)
        in = 0; #10 #10; // Traço (-)
        in = 1; #10 #10; // Ponto (.)
        in = 0; #10 #10; // Traço (-)

        // LETRA R (.-.)
        reset = 1; #10;
        reset = 0; #10;
        in = 1; #10;     // Ponto (.)
        in = 0; #10 #10; // Traço (-)
        in = 1; #10 #10; // Ponto (.)

        // LETRA S (...)
        reset = 1; #10;
        reset = 0; #10;
        in = 1; #10;     // Ponto (.)
        in = 1; #10 #10; // Ponto (.)
        in = 1; #10 #10; // Ponto (.)

        // LETRA T (-)
        reset = 1; #10;
        reset = 0; #10;
        in = 0; #10;     // Traço (-)

        // LETRA U (..-)
        reset = 1; #10;
        reset = 0; #10;
        in = 1; #10;     // Ponto (.)
        in = 1; #10 #10; // Ponto (.)
        in = 0; #10 #10; // Traço (-)

        // LETRA V (...-)
        reset = 1; #10;
        reset = 0; #10;
        in = 1; #10;     // Ponto (.)
        in = 1; #10 #10; // Ponto (.)
        in = 1; #10 #10; // Ponto (.)
        in = 0; #10 #10; // Traço (-)

        // LETRA W (.--)
        reset = 1; #10;
        reset = 0; #10;
        in = 1; #10;     // Ponto (.)
        in = 0; #10 #10; // Traço (-)
        in = 0; #10 #10; // Traço (-)

        // LETRA X (-..-)
        reset = 1; #10;
        reset = 0; #10;
        in = 0; #10;     // Traço (-)
        in = 1; #10 #10; // Ponto (.)
        in = 1; #10 #10; // Ponto (.)
        in = 0; #10 #10; // Traço (-)

        // LETRA Y (-.--)
        reset = 1; #10;
        reset = 0; #10;
        in = 0; #10;     // Traço (-)
        in = 1; #10 #10; // Ponto (.)
        in = 0; #10 #10; // Traço (-)
        in = 0; #10 #10; // Traço (-)

        // LETRA Z (--..)
        reset = 1; #10;
        reset = 0; #10;
        in = 0; #10;     // Traço (-)
        in = 0; #10 #10; // Traço (-)
        in = 1; #10 #10; // Ponto (.)
        in = 1; #10 #10; // Ponto (.)
        
        #10
        $finish;
    end

    initial begin
        clk = 1;
        forever #10 clk = ~clk;
    end
    
endmodule