module top (
    input [7:0] sw,
    output [5:0] led
);

    light light_inst(
        .A(sw[0]),
        .B(sw[1]),
        .Y(led[0])
    );
    
    wire c1;
    
    adder adder_inst(
        .A(sw[2]),
        .B(sw[3]),
        .Y(led[1]),
        .Carry(led[2])
    );
    
    full_adder full_adder1_inst(
        .A(sw[4]),
        .B(sw[6]),
        .Cin(0),
        .Y(led[3]),
        .Cout(c1)
    );
    
    full_adder full_adder2_inst(
        .A(sw[5]),
        .B(sw[7]),
        .Cin(c1),
        .Y(led[4]),
        .Cout(led[5])
    );


endmodule

