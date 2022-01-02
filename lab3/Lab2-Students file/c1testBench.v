module TB;
reg aa,bb,cc;
wire ss,cy;
fulladd add1(.a(aa), .b(bb), .cin(cc), .sum(ss), .cout(cy));
initial
begin
$dumpfile("dump.vcd");
$dumpvars(0, TB);
end

initial begin $monitor(aa,bb,cc,ss,cy);
aa = 1'b0;
bb = 1'b0;
cc=1'b0;
#5
aa = 1'b0;
bb = 1'b1;
cc=1'b1;
#5
aa = 1'b1;
bb = 1'b0;
cc=1'b0;
#5
aa = 1'b1;
bb = 1'b1;
cc=1'b0;
#5
aa = 1'b0;
bb = 1'b0;
cc=1'b1;
end
endmodule


