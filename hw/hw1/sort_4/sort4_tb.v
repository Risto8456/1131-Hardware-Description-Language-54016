module sort4_tb;
    reg     [7:0]   x0, x1, x2, x3;
    wire    [7:0]   y0, y1, y2, y3;

    sort4 m0(x0, x1, x2, x3, y0, y1, y2, y3);

    initial begin
        #10 x0 = 8'd34; x1 = 8'd9;  x2 = 8'd12; x3 = 8'd27;
        #10 $display("Inputs: x0 = %3d, x1 = %3d, x2 = %3d, x3 = %3d", x0, x1, x2, x3);
        #10 $display("Output: y0 = %3d, y1 = %3d, y2 = %3d, y3 = %3d", y0, y1, y2, y3);

        #10 x0 = 8'd10; x1 = 8'd56; x2 = 8'd30; x3 = 8'd18;
        #10 $display("Inputs: x0 = %3d, x1 = %3d, x2 = %3d, x3 = %3d", x0, x1, x2, x3);
        #10 $display("Output: y0 = %3d, y1 = %3d, y2 = %3d, y3 = %3d", y0, y1, y2, y3);

        #10 x0 = 8'd67; x1 = 8'd46; x2 = 8'd55; x3 = 8'd20;
        #10 $display("Inputs: x0 = %3d, x1 = %3d, x2 = %3d, x3 = %3d", x0, x1, x2, x3);
        #10 $display("Output: y0 = %3d, y1 = %3d, y2 = %3d, y3 = %3d", y0, y1, y2, y3);

        #10 $finish;
    end
endmodule

