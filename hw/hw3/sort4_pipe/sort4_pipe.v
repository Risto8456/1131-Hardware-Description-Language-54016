module sort4_pipe(
    input clk, 
    input rst,
    input [7:0] x0, x1, x2, x3,
    output [7:0] y0, y1, y2, y3
);
    wire [7:0] mn0, mn1, mx0, mx1, mid0, mid1;
    wire [7:0] x0_r, x1_r, x2_r, x3_r, 
				mn0_r, mn1_r, mx0_r, mx1_r, 
				mid0_r, mid1_r, y0_t, y3_t,
				y0_r, y1_r, y2_r, y3_r;

    // 原始排序模組
    sort2 inst0(x0_r, x1_r, mn0, mx0);
    sort2 inst1(x2_r, x3_r, mn1, mx1);
    sort2 inst2(mn0_r, mn1_r, y0_t, mid0);
    sort2 inst3(mx0_r, mx1_r, mid1, y3_t);
    sort2 inst4(mid0_r, mid1_r, y1_r, y2_r);

    // 添加暫存器以保存中間和最終結果
    register_8bit reg_s0(.clk(clk), .rst(rst), .D(x0), .Q(x0_r));
    register_8bit reg_s1(.clk(clk), .rst(rst), .D(x1), .Q(x1_r));
    register_8bit reg_s2(.clk(clk), .rst(rst), .D(x2), .Q(x2_r));
    register_8bit reg_s3(.clk(clk), .rst(rst), .D(x3), .Q(x3_r));

    register_8bit reg_mn0(.clk(clk), .rst(rst), .D(mn0), .Q(mn0_r));
    register_8bit reg_mn1(.clk(clk), .rst(rst), .D(mn1), .Q(mn1_r));
    register_8bit reg_mx0(.clk(clk), .rst(rst), .D(mx0), .Q(mx0_r));
    register_8bit reg_mx1(.clk(clk), .rst(rst), .D(mx1), .Q(mx1_r));

    register_8bit reg_mid0(.clk(clk), .rst(rst), .D(mid0), .Q(mid0_r));
    register_8bit reg_mid1(.clk(clk), .rst(rst), .D(mid1), .Q(mid1_r));
    register_8bit reg_tmp0(.clk(clk), .rst(rst), .D(y0_t), .Q(y0_r));
    register_8bit reg_tmp1(.clk(clk), .rst(rst), .D(y3_t), .Q(y3_r));
	
    register_8bit reg_y0(.clk(clk), .rst(rst), .D(y0_r), .Q(y0));
    register_8bit reg_y1(.clk(clk), .rst(rst), .D(y1_r), .Q(y1));
    register_8bit reg_y2(.clk(clk), .rst(rst), .D(y2_r), .Q(y2));
    register_8bit reg_y3(.clk(clk), .rst(rst), .D(y3_r), .Q(y3));

endmodule
