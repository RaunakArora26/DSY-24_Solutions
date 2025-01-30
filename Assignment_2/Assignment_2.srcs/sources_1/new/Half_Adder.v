
module Half_Adder(
    input a,
    input b,
    output carry,
    output sum
    );
    
    assign sum = a^b;
    assign carry = a&b;
endmodule