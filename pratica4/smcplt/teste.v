`timescale 1ns/1ns
`include "smcplt.v"


module teste;

reg a, b, cin;
wire s, cout;
completo uut(a, b, cin, s, cout);

initial begin
     $dumpfile("smcplt.vcd");
     $dumpvars(0, teste);

        a = 0;
        b = 0;#20; 
        cin = 

        a = 0;
        b = 1;#20; 
        cin=

        a = 1;
        b = 0;#20; 
        cin =

        a = 1;
        b = 1;#20; 
        cin = 

        
        $display("Teste completo");
    end

endmodule