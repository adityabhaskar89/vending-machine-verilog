module vending_machine_tb;
	reg clk;
  	reg[2:0] in;
  	reg[2:0] p;
	reg rst;
	wire out;
  	wire[2:0] change;
vending_machine_8989 uut(
	.clk(clk),
	.rst(rst),
	.in(in),
  	.p(p),
	.out(out),
	.change(change)
);
initial begin
    $dumpfile("vending_machine_8989.vcd");
	$dumpvars(0,vending_machine_tb);
	rst = 1;
	clk = 0;
  	#4 rst = 0;
  	p = 3'b001;
	#5 in = 3'b010;
  	#10 in = 0;
	#25 $finish;
end
always #3 clk = ~clk;
endmodule
