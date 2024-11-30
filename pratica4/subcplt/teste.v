`timescale 1ns/1ns
`include "subcplt.v"


module teste;

reg a, b, cin;
wire s, cout;
completo uut(a, b, cin, s, cout);

initial begin
     $dumpfile("subcplt.vcd");
     $dumpvars(0, teste);

        a = 0;
        b = 0;#20; 
        cin = 0;

        a = 0;
        b = 1;#20; 
        cin=1;

        a = 1;
        b = 0;#20; 
        cin =0;

        a = 1;
        b = 1;#20; 
        cin = 0;

        
        $display("Teste completo");
    end

endmodule