module r_dd_16b(
    input [19:0] dcb,
    output [15:0] bin
);
    wire [35:0] s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16; //to have operations done on
    wire [35:0] a0,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15; //to have operations done on
    assign s0[35:16] = dcb;
    assign s0[15:0] = 16'b0;
    assign a0 = s0 >> 1;
    assign s1[15:0] = a0[15:0];
    r_double_dabble dd_1_1(.a(a0[35:32]), .res(s1[35:32]));
    r_double_dabble dd_1_2(.a(a0[31:28]), .res(s1[31:28]));
    r_double_dabble dd_1_3(.a(a0[27:24]), .res(s1[27:24]));
    r_double_dabble dd_1_4(.a(a0[23:20]), .res(s1[23:20]));
    r_double_dabble dd_1_5(.a(a0[19:16]), .res(s1[19:16]));

    assign a1 = s1 >> 1;
    assign s2[15:0] = a1[15:0];
    r_double_dabble dd_2_1(.a(a1[35:32]), .res(s2[35:32]));
    r_double_dabble dd_2_2(.a(a1[31:28]), .res(s2[31:28]));
    r_double_dabble dd_2_3(.a(a1[27:24]), .res(s2[27:24]));
    r_double_dabble dd_2_4(.a(a1[23:20]), .res(s2[23:20]));
    r_double_dabble dd_2_5(.a(a1[19:16]), .res(s2[19:16]));

    assign a2 = s2 >> 1;
    assign s3[15:0] = a2[15:0];
    r_double_dabble dd_3_1(.a(a2[35:32]), .res(s3[35:32]));
    r_double_dabble dd_3_2(.a(a2[31:28]), .res(s3[31:28]));
    r_double_dabble dd_3_3(.a(a2[27:24]), .res(s3[27:24]));
    r_double_dabble dd_3_4(.a(a2[23:20]), .res(s3[23:20]));
    r_double_dabble dd_3_5(.a(a2[19:16]), .res(s3[19:16]));

    assign a3 = s3 >> 1;
    assign s4[15:0] = a3[15:0];
    r_double_dabble dd_4_1(.a(a3[35:32]), .res(s4[35:32]));
    r_double_dabble dd_4_2(.a(a3[31:28]), .res(s4[31:28]));
    r_double_dabble dd_4_3(.a(a3[27:24]), .res(s4[27:24]));
    r_double_dabble dd_4_4(.a(a3[23:20]), .res(s4[23:20]));
    r_double_dabble dd_4_5(.a(a3[19:16]), .res(s4[19:16]));

    assign a4 = s4 >> 1;
    assign s5[15:0] = a4[15:0];
    r_double_dabble dd_5_1(.a(a4[35:32]), .res(s5[35:32]));
    r_double_dabble dd_5_2(.a(a4[31:28]), .res(s5[31:28]));
    r_double_dabble dd_5_3(.a(a4[27:24]), .res(s5[27:24]));
    r_double_dabble dd_5_4(.a(a4[23:20]), .res(s5[23:20]));
    r_double_dabble dd_5_5(.a(a4[19:16]), .res(s5[19:16]));

    assign a5 = s5 >> 1;
    assign s6[15:0] = a5[15:0];
    r_double_dabble dd_6_1(.a(a5[35:32]), .res(s6[35:32]));
    r_double_dabble dd_6_2(.a(a5[31:28]), .res(s6[31:28]));
    r_double_dabble dd_6_3(.a(a5[27:24]), .res(s6[27:24]));
    r_double_dabble dd_6_4(.a(a5[23:20]), .res(s6[23:20]));
    r_double_dabble dd_6_5(.a(a5[19:16]), .res(s6[19:16]));

    assign a6 = s6 >> 1;
    assign s7[15:0] = a6[15:0];
    r_double_dabble dd_7_1(.a(a6[35:32]), .res(s7[35:32]));
    r_double_dabble dd_7_2(.a(a6[31:28]), .res(s7[31:28]));
    r_double_dabble dd_7_3(.a(a6[27:24]), .res(s7[27:24]));
    r_double_dabble dd_7_4(.a(a6[23:20]), .res(s7[23:20]));
    r_double_dabble dd_7_5(.a(a6[19:16]), .res(s7[19:16]));

    assign a7 = s7 >> 1;
    assign s8[15:0] = a7[15:0];
    r_double_dabble dd_8_1(.a(a7[35:32]), .res(s8[35:32]));
    r_double_dabble dd_8_2(.a(a7[31:28]), .res(s8[31:28]));
    r_double_dabble dd_8_3(.a(a7[27:24]), .res(s8[27:24]));
    r_double_dabble dd_8_4(.a(a7[23:20]), .res(s8[23:20]));
    r_double_dabble dd_8_5(.a(a7[19:16]), .res(s8[19:16]));

    assign a8 = s8 >> 1;
    assign s9[15:0] = a8[15:0];
    r_double_dabble dd_9_1(.a(a8[35:32]), .res(s9[35:32]));
    r_double_dabble dd_9_2(.a(a8[31:28]), .res(s9[31:28]));
    r_double_dabble dd_9_3(.a(a8[27:24]), .res(s9[27:24]));
    r_double_dabble dd_9_4(.a(a8[23:20]), .res(s9[23:20]));
    r_double_dabble dd_9_5(.a(a8[19:16]), .res(s9[19:16]));

    assign a9 = s9 >> 1;
    assign s10[15:0] = a9[15:0];
    r_double_dabble dd_10_1(.a(a9[35:32]), .res(s10[35:32]));
    r_double_dabble dd_10_2(.a(a9[31:28]), .res(s10[31:28]));
    r_double_dabble dd_10_3(.a(a9[27:24]), .res(s10[27:24]));
    r_double_dabble dd_10_4(.a(a9[23:20]), .res(s10[23:20]));
    r_double_dabble dd_10_5(.a(a9[19:16]), .res(s10[19:16]));

    assign a10 = s10 >> 1;
    assign s11[15:0] = a10[15:0];
    r_double_dabble dd_11_1(.a(a10[35:32]), .res(s11[35:32]));
    r_double_dabble dd_11_2(.a(a10[31:28]), .res(s11[31:28]));
    r_double_dabble dd_11_3(.a(a10[27:24]), .res(s11[27:24]));
    r_double_dabble dd_11_4(.a(a10[23:20]), .res(s11[23:20]));
    r_double_dabble dd_11_5(.a(a10[19:16]), .res(s11[19:16]));

    assign a11 = s11 >> 1;
    assign s12[15:0] = a11[15:0];
    r_double_dabble dd_12_1(.a(a11[35:32]), .res(s12[35:32]));
    r_double_dabble dd_12_2(.a(a11[31:28]), .res(s12[31:28]));
    r_double_dabble dd_12_3(.a(a11[27:24]), .res(s12[27:24]));
    r_double_dabble dd_12_4(.a(a11[23:20]), .res(s12[23:20]));
    r_double_dabble dd_12_5(.a(a11[19:16]), .res(s12[19:16]));

    assign a12 = s12 >> 1;
    assign s13[15:0] = a12[15:0];
    r_double_dabble dd_13_1(.a(a12[35:32]), .res(s13[35:32]));
    r_double_dabble dd_13_2(.a(a12[31:28]), .res(s13[31:28]));
    r_double_dabble dd_13_3(.a(a12[27:24]), .res(s13[27:24]));
    r_double_dabble dd_13_4(.a(a12[23:20]), .res(s13[23:20]));
    r_double_dabble dd_13_5(.a(a12[19:16]), .res(s13[19:16]));

    assign a13 = s13 >> 1;
    assign s14[15:0] = a13[15:0];
    r_double_dabble dd_14_1(.a(a13[35:32]), .res(s14[35:32]));
    r_double_dabble dd_14_2(.a(a13[31:28]), .res(s14[31:28]));
    r_double_dabble dd_14_3(.a(a13[27:24]), .res(s14[27:24]));
    r_double_dabble dd_14_4(.a(a13[23:20]), .res(s14[23:20]));
    r_double_dabble dd_14_5(.a(a13[19:16]), .res(s14[19:16]));

    assign a14 = s14 >> 1;
    assign s15[15:0] = a14[15:0];
    r_double_dabble dd_15_1(.a(a14[35:32]), .res(s15[35:32]));
    r_double_dabble dd_15_2(.a(a14[31:28]), .res(s15[31:28]));
    r_double_dabble dd_15_3(.a(a14[27:24]), .res(s15[27:24]));
    r_double_dabble dd_15_4(.a(a14[23:20]), .res(s15[23:20]));
    r_double_dabble dd_15_5(.a(a14[19:16]), .res(s15[19:16]));

    assign a15 = s15 >> 1;
    assign s16[15:0] = a15[15:0];
    r_double_dabble dd_16_1(.a(a15[35:32]), .res(s16[35:32]));
    r_double_dabble dd_16_2(.a(a15[31:28]), .res(s16[31:28]));
    r_double_dabble dd_16_3(.a(a15[27:24]), .res(s16[27:24]));
    r_double_dabble dd_16_4(.a(a15[23:20]), .res(s16[23:20]));
    r_double_dabble dd_16_5(.a(a15[19:16]), .res(s16[19:16]));

    assign bin = s16[15:0];
endmodule