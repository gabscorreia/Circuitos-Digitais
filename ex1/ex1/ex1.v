module ex1 (a, b, verde, vermelho);
input a, b;
output reg verde, vermelho;
always @(a or b) begin
    // if (a==1'b1 && b==1'b0 || b==1'b1 && a==1'b1) begin
    //    verde = a;
    //    vermelho = b;
    // end
    // else begin
    //     verde = b;
    //     vermelho = a;
    // end
    verde = a;
    vermelho = ~a;
end
endmodule
