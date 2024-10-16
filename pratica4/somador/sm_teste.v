`timescale 1ns/1ns
`include "somador.v"

module sm_teste;

reg a, b;
wire c, s;
somador uut(a, b, c, s);

initial begin
     $dumpfile("somador.vcd");
     $dumpvars(0, sm_teste);

        a = 0;
        b = 0;#20; 
      

        a = 0;
        b = 1;#20; 
      

        a = 1;
        b = 0;#20; 
    

        a = 1;
        b = 1;#20; 
      

        
        $display("Teste completo");
    end

endmodule