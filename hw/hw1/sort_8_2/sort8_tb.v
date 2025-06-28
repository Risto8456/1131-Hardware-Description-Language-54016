module sort8_tb;
    reg     [7:0]   x0, x1, x2, x3, x4, x5, x6, x7;
    wire    [7:0]   y0, y1, y2, y3, y4, y5, y6, y7;

	sort8 m0(x0, x1, x2, x3, x4, x5, x6, x7, y0, y1, y2, y3, y4, y5, y6, y7);
	
    initial begin
        #10 x0 = 8'd28; x1 = 8'd34;	x2 = 8'd15; x3 = 8'd34; x4 = 8'd12; x5 = 8'd27; x6 = 8'd8;  x7 = 8'd55;
        #10 $display("Inputs: x0 = %3d, x1 = %3d, x2 = %3d, x3 = %3d, x4 = %3d, x5 = %3d, x6 = %3d, x7 = %3d", x0, x1, x2, x3, x4, x5, x6, x7);
        #40 $display("Output: y0 = %3d, y1 = %3d, y2 = %3d, y3 = %3d, y4 = %3d, y5 = %3d, y6 = %3d, y7 = %3d", y0, y1, y2, y3, y4, y5, y6, y7);
        
        #10 x0 = 8'd10; x1 = 8'd13;	x2 = 8'd56; x3 = 8'd21; x4 = 8'd30; x5 = 8'd69; x6 = 8'd18;  x7 = 8'd24;
        #10 $display("Inputs: x0 = %3d, x1 = %3d, x2 = %3d, x3 = %3d, x4 = %3d, x5 = %3d, x6 = %3d, x7 = %3d", x0, x1, x2, x3, x4, x5, x6, x7);
        #40 $display("Output: y0 = %3d, y1 = %3d, y2 = %3d, y3 = %3d, y4 = %3d, y5 = %3d, y6 = %3d, y7 = %3d", y0, y1, y2, y3, y4, y5, y6, y7);
        
        #10 x0 = 8'd15; x1 = 8'd8;	x2 = 8'd47; x3 = 8'd67; x4 = 8'd46; x5 = 8'd12; x6 = 8'd55;  x7 = 8'd20;
        #10 $display("Inputs: x0 = %3d, x1 = %3d, x2 = %3d, x3 = %3d, x4 = %3d, x5 = %3d, x6 = %3d, x7 = %3d", x0, x1, x2, x3, x4, x5, x6, x7);
        #40 $display("Output: y0 = %3d, y1 = %3d, y2 = %3d, y3 = %3d, y4 = %3d, y5 = %3d, y6 = %3d, y7 = %3d", y0, y1, y2, y3, y4, y5, y6, y7);
        
        #10 $finish;
    end
endmodule



