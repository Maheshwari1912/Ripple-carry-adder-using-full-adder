// Full Adder Module
module full_adder (
    input logic A, B, Cin,
    output logic Sum, Cout
);
    assign Sum = A ^ B ^ Cin;
    assign Cout = (A & B) | (B & Cin) | (A & Cin);
endmodule

// N-bit Ripple Carry Adder
module ripple_carry_adder #(parameter N = 4) (
    input logic [N-1:0] A, B,
    input logic Cin,
    output logic [N-1:0] Sum,
    output logic Cout
);
    logic [N:0] carry;
    assign carry[0] = Cin;  // Initial carry input

    genvar i;
    generate
        for (i = 0; i < N; i = i + 1) begin : FA_STAGE
            full_adder FA (
                .A(A[i]),
                .B(B[i]),
                .Cin(carry[i]),
                .Sum(Sum[i]),
                .Cout(carry[i+1])
            );
        end
    endgenerate

    assign Cout = carry[N];  // Final carry output
endmodule
