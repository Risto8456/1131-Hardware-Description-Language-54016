// `timescale 1ns / 1ps

module sort4_pipe_tb;
    reg [7:0] x0, x1, x2, x3;
    reg clk, rst;
    wire [7:0] y0, y1, y2, y3;

    sort4_pipe m0(clk, rst, x0, x1, x2, x3, y0, y1, y2, y3);

    // 時脈信號產生器
    initial begin
        clk = 0;
        forever #10 clk = ~clk;  // 時脈週期為 20ns
    end

    // 測試邏輯
    initial begin
        rst = 1; #5;
        rst = 0;

        // 測試樣本輸入
        #20 x0 = 38; x1 = 94; x2 = 61; x3 = 50;
        #20 x0 = 24; x1 = 15; x2 = 82; x3 = 65;
        #20 x0 = 89; x1 = 20; x2 = 63; x3 = 51;
        #20 x0 = 72; x1 = 24; x2 = 36; x3 = 77;
        #20 x0 = 50; x1 = 69; x2 = 13; x3 = 30;
        #20 x0 = 23; x1 = 60; x2 = 30; x3 = 11;
        #20 x0 = 45; x1 = 54; x2 = 22; x3 = 56;
        #20 x0 = 71; x1 = 42; x2 = 90; x3 = 89;

        #80 $finish;
    end

    // 監視和驗證輸出
    always @(posedge clk) begin
        if (!rst) begin
            $display("Inputs: x0 = %3d, x1 = %3d, x2 = %3d, x3 = %3d", x0, x1, x2, x3);
            $display("Output: y0 = %3d, y1 = %3d, y2 = %3d, y3 = %3d", y0, y1, y2, y3);

            // 檢查排序是否正確
            if (y0 <= y1 && y1 <= y2 && y2 <= y3)
                $display("Pass!");
            else
                $display("Fail!");
        end
    end
endmodule
