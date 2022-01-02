module tb;
reg t_a;
reg t_b;
wire P,Q,R,S,T;
//instantiate
invert a1(.i(t_a),.o1(P));
and2 a2(.i0(t_a),.i1(t_b),.o2(Q));
or2 a3(.i0(t_a),.i1(t_b),.o3(R));
xor2 a4(.i0(t_a),.i1(t_b),.o4(S));
nand2 a5(.i0(t_a),.i1(t_b),.o5(T));
initial begin $dumpfile("dmp1.vcd");
$dumpvars(0,tb);
end
initial begin $monitor(t_a,t_b,P,Q,R,S,T); //displays the content of the register
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

