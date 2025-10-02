module full_adder (
    input A, B, Cin,
    output Y, Cout
);

    assign Y = (~A & ~B & Cin) | (~A & B & ~Cin) | (A & B & Cin) | (A & ~B & ~Cin);
    assign Cout = (A & B) | (B & Cin) | (A & Cin);


endmodule