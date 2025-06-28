module register_8bit(
    input clk,         // 時脈信號
    input rst,         // 非同步重置信號
    input [7:0] D,     // 8 位元輸入數據
    output reg [7:0] Q // 8 位元輸出數據
);

// D flip-flop的行為模型
always @(posedge clk or posedge rst) begin
    if (rst) begin
        Q <= 8'b0; // 當 rst 為高時，Q 重置為 0
    end else begin
        Q <= D; // 在時脈的正緣觸發時，將 D 的值載入 Q
    end
end

endmodule
