module tb_ripple_carry_adder;
    reg [3:0] a, b; 
    reg cin;        
    wire [3:0] sum; 
    wire cout;      

    ripple_carry_adder dut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );


    initial begin

        $monitor("Time=%0t | a=%b b=%b cin=%b | sum=%b cout=%b", $time, a, b, cin, sum, cout);

        a = 4'b1111; b = 4'b0001; cin = 1'b0; #10;

        $finish;
    end
endmodule

