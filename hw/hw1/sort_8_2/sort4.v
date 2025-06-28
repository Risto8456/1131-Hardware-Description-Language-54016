module sort4(x0, x1, x2, x3, y0, y1, y2, y3);
	input [7:0] x0, x1, x2, x3;
	output [7:0] y0, y1, y2, y3;
	wire [7:0] mn0, mn1, mx0, mx1, mid0, mid1;

	sort2 inst0(x0, x1, mn0, mx0);
	sort2 inst1(x2, x3, mn1, mx1);
	sort2 inst2(mn0, mn1, y0, mid0);
	sort2 inst3(mx0, mx1, mid1, y3);
	sort2 inst4(mid0, mid1, y1, y2);
endmodule