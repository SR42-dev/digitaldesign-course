module tb;
reg t_a;
reg t_b;
wire t_w,t_x,t_y,t_z;
//instatiate
and1 a1(.a(t_a),.b(t_b),.w(t_w),.x(t_x),.y(t_y),.z(t_z));
initial begin $dumpfile("dump1.vcd");
$dumpvars(0,tb);
end
initial begin $monitor(t_a,t_b,t_w,t_x,t_y,t_z); //displays the content of the register
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

