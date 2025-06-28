module sort8(x0, x1, x2, x3, x4, x5, x6, x7, y0, y1, y2, y3, y4, y5, y6, y7);
	input [7:0] x0, x1, x2, x3, x4, x5, x6, x7;
	output [7:0] y0, y1, y2, y3, y4, y5, y6, y7;
	wire [7:0] a0, a1, a2, a3;
	wire [7:0] b0, b1, b2, b3;
	wire [7:0] c0, c1, c2, c3;
	wire [7:0] d0, d1, d2, d3;
	wire [7:0] e0, e1;
	
	sort4 inst0(x0, x1, x2, x3, a0, a1, a2, a3);
	sort4 inst1(x4, x5, x6, x7, b0, b1, b2, b3);

	sort2 inst2(a0, b0, y0, c0);
	sort2 inst3(a1, b1, c1, d1);
	sort2 inst4(c0, c1, y1, d0);

	sort2 inst5(a2, b2, d2, c2);
	sort2 inst6(a3, b3, c3, y7);
	sort2 inst7(c2, c3, d3, y6);

	sort2 inst8(d0, d2, y2, e0);
	sort2 inst9(d1, d3, e1, y5);
	sort2 inst10(e0, e1, y3, y4);
endmodule
