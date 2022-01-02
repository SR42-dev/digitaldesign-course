module and1(input wire a,b,output wire w, x, y, z);
assign w=a&b;
assign x=a|b;
assign y=~(a&b);
assign z=~(a|b);
endmodule
