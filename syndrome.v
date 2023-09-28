module syndrome(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
      r11,r12,r13,r14,r15,
	 clk,
	 reset,
	 start,
	 S1,S2,S3,S4,S5,S6,S7,S8,S9,S10,
	 S11,S12,S13,S14,S15,S16,S17,S18,S19,S20,
	 S21,S22,S23,S24,S25,S26,S27,S28,S29,S30,
	 S31,S32);//

input [7:0]r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
 	     r11,r12,r13,r14,r15;
input	 clk,
		 start,
		 reset;
output [7:0]S1,S2,S3,S4,S5,S6,S7,S8,S9,S10,
			S11,S12,S13,S14,S15,S16,S17,S18,S19,S20,
			S21,S22,S23,S24,S25,S26,S27,S28,S29,S30,
			S31,S32;
            

wire [7:0]S1,S2,S3,S4,S5,S6,S7,S8,S9,S10,
		S11,S12,S13,S14,S15,S16,S17,S18,S19,S20,
		S21,S22,S23,S24,S25,S26,S27,S28,S29,S30,
		S31,S32;

syndrome_row s1(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
r11,r12,r13,r14,r15,
S1,
clk,
start,
reset);

syndrome_row_2 s2(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
r11,r12,r13,r14,r15,
S2,
clk,
start,
reset);

syndrome_row_3 s3(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
r11,r12,r13,r14,r15,
S3,
clk,
start,
reset);

syndrome_row_4 s4(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
r11,r12,r13,r14,r15,
S4,
clk,
start,
reset);

syndrome_row_5 s5(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
r11,r12,r13,r14,r15,
S5,
clk,
start,
reset);

syndrome_row_6 s6(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
r11,r12,r13,r14,r15,
S6,
clk,
start,
reset);

syndrome_row_7 s7(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
r11,r12,r13,r14,r15,
S7,
clk,
start,
reset);

syndrome_row_8 s8(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
r11,r12,r13,r14,r15,
S8,
clk,
start,
reset);

syndrome_row_9 s9(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
r11,r12,r13,r14,r15,
S9,
clk,
start,
reset);

syndrome_row_10 s10(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
r11,r12,r13,r14,r15,
S10,
clk,
start,
reset);

syndrome_row_11 s11(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
r11,r12,r13,r14,r15,
S11,
clk,
start,
reset);

syndrome_row_12 s12(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
r11,r12,r13,r14,r15,
S12,
clk,
start,
reset);

syndrome_row_13 s13(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
r11,r12,r13,r14,r15,
S13,
clk,
start,
reset);

syndrome_row_14 s14(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
r11,r12,r13,r14,r15,
S14,
clk,
start,
reset);

syndrome_row_15 s15(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
r11,r12,r13,r14,r15,
S15,
clk,
start,
reset);

syndrome_row_16 s16(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
r11,r12,r13,r14,r15,
S16,
clk,
start,
reset);

syndrome_row_17 s17(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
r11,r12,r13,r14,r15,
S17,
clk,
start,
reset);

syndrome_row_18 s18(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
r11,r12,r13,r14,r15,
S18,
clk,
start,
reset);

syndrome_row_19 s19(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
r11,r12,r13,r14,r15,
S19,
clk,
start,
reset);

syndrome_row_20 s20(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
r11,r12,r13,r14,r15,
S20,
clk,
start,
reset);

syndrome_row_21 s21(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
r11,r12,r13,r14,r15,
S21,
clk,
start,
reset);

syndrome_row_22 s22(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
r11,r12,r13,r14,r15,
S22,
clk,
start,
reset);

syndrome_row_23 s23(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
r11,r12,r13,r14,r15,
S23,
clk,
start,
reset);

syndrome_row_24 s24(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
r11,r12,r13,r14,r15,
S24,
clk,
start,
reset);

syndrome_row_25 s25(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
r11,r12,r13,r14,r15,
S25,
clk,
start,
reset);

syndrome_row_26 s26(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
r11,r12,r13,r14,r15,
S26,
clk,
start,
reset);

syndrome_row_27 s27(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
r11,r12,r13,r14,r15,
S27,
clk,
start,
reset);

syndrome_row_28 s28(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
r11,r12,r13,r14,r15,
S28,
clk,
start,
reset);

syndrome_row_29 s29(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
r11,r12,r13,r14,r15,
S29,
clk,
start,
reset);

syndrome_row_30 s30(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
r11,r12,r13,r14,r15,
S30,
clk,
start,
reset);

syndrome_row_31 s31(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
r11,r12,r13,r14,r15,
S31,
clk,
start,
reset);

syndrome_row_32 s32(r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,
r11,r12,r13,r14,r15,
S32,
clk,
start,
reset);







endmodule
