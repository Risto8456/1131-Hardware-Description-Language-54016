module alu(A, B, op, Y);
	input 	[5:0] 	A, B; 	// 輸入操作數 A、B，6 位元
	input 	[3:0] 	op;		// 運算操作碼，4 位元
	output 	[5:0] 	Y; 		// 輸出結果，6 位元
	reg 	[5:0] 	Y;
	
	// 當 A、B 或 op 的值改變時，always 區塊會執行
	always @ (A or B or op)
		case(op)
			4'h0 : Y = A; 				// '操作碼 0 : 直接輸出 A
			4'h1 : Y = B; 				// '操作碼 1 : 直接輸出 B
			4'h2 : Y = A + 1; 			// '操作碼 2 : A 加 1
			4'h3 : Y = B + 1; 			// '操作碼 3 : B 加 1
			4'h4 : Y = A - 1; 			// '操作碼 4 : A 減 1
			4'h5 : Y = B - 1; 			// '操作碼 5 : B 減 1
			4'h6 : Y = A + B; 			// '操作碼 6 : A 與 B 相加
			4'h7 : Y = A - B; 			// '操作碼 7 : A 減去 B
			4'h8 : Y = A & B; 			// '操作碼 8 : A 與 B 的位元邏輯 AND
			4'h9 : Y = A | B; 			// '操作碼 9 : A 與 B 的位元邏輯 OR
			4'hA : Y = A ^ B; 			// '操作碼 A : A 與 B 的位元邏輯 XOR
			4'hB : Y = ~A; 				// '操作碼 B : A 的位元邏輯取反
			4'hC : Y = A << 1; 			// '操作碼 C : A 左移 1 位
			4'hD : Y = A >> 1; 			// '操作碼 D : A 右移 1 位
			4'hE : Y = (A > B) ? A : B;	// '操作碼 E : 比較 A 和 B, 輸出較大值
			4'hF : Y = (A > B) ? B : A;	// '操作碼 F : 比較 A 和 B, 輸出較小值
			default : Y = 6'b0;			// '預設輸出 0
		endcase
endmodule