module flipflop_D (D, clk, preset, clear, Q, QNot);

    input D, clk, preset, clear;
    output reg Q, QNot; 

    always @(negedge clk) begin
        case ({preset, clear})
            2'b01: Q = 0; 
            2'b10: Q = 1; 
            2'b00: begin  
                if (D) Q = 1;
                if (~D) Q = 0;
            end
            default: Q = 1'bX;
    endcase
        QNot = ~Q;
    end

endmodule