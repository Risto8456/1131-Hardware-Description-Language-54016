module sort4(x0, x1, x2, x3, y0, y1, y2, y3);
	input [7:0] x0, x1, x2, x3;
	output [7:0] y0, y1, y2, y3;
	wire [7:0] a0, a1, a2, a3, b0, b1, b2, b3;

	sort2 inst0(x0, x1, a0, a1);
	sort2 inst1(x2, x3, a3, a2);
	sort2 inst2(a0, a2, b0, b2);
	sort2 inst3(a1, a3, b1, b3);
	sort2 inst4(b0, b1, y0, y1);
	sort2 inst5(b2, b3, y2, y3);
endmodule