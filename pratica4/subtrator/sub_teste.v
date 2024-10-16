`timescale 1ns/1ns
`include "subt.v"

module sub_teste;

reg a, b;
wire c, s;
subtrator uut(a, b, c, s);

initial begin
     $dumpfile("subt.vcd");
     $dumpvars(0, sub_teste);

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