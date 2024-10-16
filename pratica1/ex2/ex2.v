module ex2(a, b, c, s1, s2, s3);

    input a, b, c;
    output s1, s2, s3;

    assign s1 = a;
    assign s2 = ~a & b;
    assign s3 = ~a & ~b & c;

endmodule