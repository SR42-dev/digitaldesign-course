module tb;
reg t_a;
reg t_b;
wire t_x,t_y;
//instatiate
and1 a1(.a(t_a),.b(t_b),.y(t_x),.x(t_y));
initial begin $dumpfile("dump.vcd");
$dumpvars(0,tb);
end
initial begin $monitor(t_a,t_b,t_x,t_y); //displays the content of the register
t_a=1'b0;//1 bit input
t_b=1'b0;
#10 //time nanosecs
t_a=1'b0;//1 bit input
t_b=1'b1;
#10 //time nanosecs
t_a=1'b1;//1 bit input
t_b=1'b0;
#10 //time nanosecs
t_a=1'b1;//1 bit input
t_b=1'b1;
#10 //time nanosecs
t_a=0;//inorder to see the last input
t_b=0;
end
endmodule

