module ex3 (P, W, M, S, A);

    input P, W, M, S;
    output A;

    assign A = M | S & (P | W);

endmodule