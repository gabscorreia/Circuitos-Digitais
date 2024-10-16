module completo (a, b, cin, s, cout);
    input a, b, cin;
    output s, cout;

    assign s= a^b^cin;
    assign cout= b & cin | a & cin | a & b; 

endmodule