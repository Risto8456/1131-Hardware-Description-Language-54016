module sort8(x0, x1, x2, x3, x4, x5, x6, x7, y0, y1, y2, y3, y4, y5, y6, y7);
	input [7:0] x0, x1, x2, x3, x4, x5, x6, x7;
	output [7:0] y0, y1, y2, y3, y4, y5, y6, y7;
	wire [7:0] mx0, mx1, mx2, mx3;
	wire [7:0] mn0, mn1, mn2, mn3;
	wire [7:0] mid0, mid1, mid2, mid3;
	
	sort4 inst0(x0, x1, x2, x3, mn0, mn1, mx0, mx1);
	sort4 inst1(x4, x5, x6, x7, mn2, mn3, mx2, mx3);
	sort4 inst2(mx0, mx1, mx2, mx3, mid0, mid1, y6, y7);
	sort4 inst3(mn0, mn1, mn2, mn3, y0, y1, mid2, mid3);
	sort4 inst4(mid0, mid1, mid2, mid3, y2, y3, y4, y5);
endmodule
