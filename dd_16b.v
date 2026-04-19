module dd_16b(
    input [15:0] bin,
    output [19:0] dcb
);
    wire [35:0] s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16; //to have operations done on
    wire [35:0] a0,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15; //to have operations done on
    assign s0[15:0] = bin;
    assign s0[35:16] = 20'b0;

    double_dabble dd_1_1(.a(s0[35:32]), .res(a0[35:32]));
    double_dabble dd_1_2(.a(s0[31:28]), .res(a0[31:28]));
    double_dabble dd_1_3(.a(s0[27:24]), .res(a0[27:24]));
    double_dabble dd_1_4(.a(s0[23:20]), .res(a0[23:20]));
    double_dabble dd_1_5(.a(s0[19:16]), .res(a0[19:16]));
    assign s1 = {a0[35:16],s0[15:0]} << 1;

    double_dabble dd_2_1(.a(s1[35:32]), .res(a1[35:32]));
    double_dabble dd_2_2(.a(s1[31:28]), .res(a1[31:28]));
    double_dabble dd_2_3(.a(s1[27:24]), .res(a1[27:24]));
    double_dabble dd_2_4(.a(s1[23:20]), .res(a1[23:20]));
    double_dabble dd_2_5(.a(s1[19:16]), .res(a1[19:16]));
    assign s2 = {a1[35:16],s1[15:0]} << 1;

    double_dabble dd_3_1(.a(s2[35:32]), .res(a2[35:32]));
    double_dabble dd_3_2(.a(s2[31:28]), .res(a2[31:28]));
    double_dabble dd_3_3(.a(s2[27:24]), .res(a2[27:24]));
    double_dabble dd_3_4(.a(s2[23:20]), .res(a2[23:20]));
    double_dabble dd_3_5(.a(s2[19:16]), .res(a2[19:16]));
    assign s3 = {a2[35:16],s2[15:0]} << 1;

    double_dabble dd_4_1(.a(s3[35:32]), .res(a3[35:32]));
    double_dabble dd_4_2(.a(s3[31:28]), .res(a3[31:28]));
    double_dabble dd_4_3(.a(s3[27:24]), .res(a3[27:24]));
    double_dabble dd_4_4(.a(s3[23:20]), .res(a3[23:20]));
    double_dabble dd_4_5(.a(s3[19:16]), .res(a3[19:16]));
    assign s4 = {a3[35:16],s3[15:0]} << 1;

    double_dabble dd_5_1(.a(s4[35:32]), .res(a4[35:32]));
    double_dabble dd_5_2(.a(s4[31:28]), .res(a4[31:28]));
    double_dabble dd_5_3(.a(s4[27:24]), .res(a4[27:24]));
    double_dabble dd_5_4(.a(s4[23:20]), .res(a4[23:20]));
    double_dabble dd_5_5(.a(s4[19:16]), .res(a4[19:16]));
    assign s5 = {a4[35:16],s4[15:0]} << 1;

    double_dabble dd_6_1(.a(s5[35:32]), .res(a5[35:32]));
    double_dabble dd_6_2(.a(s5[31:28]), .res(a5[31:28]));
    double_dabble dd_6_3(.a(s5[27:24]), .res(a5[27:24]));
    double_dabble dd_6_4(.a(s5[23:20]), .res(a5[23:20]));
    double_dabble dd_6_5(.a(s5[19:16]), .res(a5[19:16]));
    assign s6 = {a5[35:16],s5[15:0]} << 1;

    double_dabble dd_7_1(.a(s6[35:32]), .res(a6[35:32]));
    double_dabble dd_7_2(.a(s6[31:28]), .res(a6[31:28]));
    double_dabble dd_7_3(.a(s6[27:24]), .res(a6[27:24]));
    double_dabble dd_7_4(.a(s6[23:20]), .res(a6[23:20]));
    double_dabble dd_7_5(.a(s6[19:16]), .res(a6[19:16]));
    assign s7 = {a6[35:16],s6[15:0]} << 1;

    double_dabble dd_8_1(.a(s7[35:32]), .res(a7[35:32]));
    double_dabble dd_8_2(.a(s7[31:28]), .res(a7[31:28]));
    double_dabble dd_8_3(.a(s7[27:24]), .res(a7[27:24]));
    double_dabble dd_8_4(.a(s7[23:20]), .res(a7[23:20]));
    double_dabble dd_8_5(.a(s7[19:16]), .res(a7[19:16]));
    assign s8 = {a7[35:16],s7[15:0]} << 1;

    double_dabble dd_9_1(.a(s8[35:32]), .res(a8[35:32]));
    double_dabble dd_9_2(.a(s8[31:28]), .res(a8[31:28]));
    double_dabble dd_9_3(.a(s8[27:24]), .res(a8[27:24]));
    double_dabble dd_9_4(.a(s8[23:20]), .res(a8[23:20]));
    double_dabble dd_9_5(.a(s8[19:16]), .res(a8[19:16]));
    assign s9 = {a8[35:16],s8[15:0]} << 1;

    double_dabble dd_10_1(.a(s9[35:32]), .res(a9[35:32]));
    double_dabble dd_10_2(.a(s9[31:28]), .res(a9[31:28]));
    double_dabble dd_10_3(.a(s9[27:24]), .res(a9[27:24]));
    double_dabble dd_10_4(.a(s9[23:20]), .res(a9[23:20]));
    double_dabble dd_10_5(.a(s9[19:16]), .res(a9[19:16]));
    assign s10 = {a9[35:16],s9[15:0]} << 1;

    double_dabble dd_11_1(.a(s10[35:32]), .res(a10[35:32]));
    double_dabble dd_11_2(.a(s10[31:28]), .res(a10[31:28]));
    double_dabble dd_11_3(.a(s10[27:24]), .res(a10[27:24]));
    double_dabble dd_11_4(.a(s10[23:20]), .res(a10[23:20]));
    double_dabble dd_11_5(.a(s10[19:16]), .res(a10[19:16]));
    assign s11 = {a10[35:16],s10[15:0]} << 1;

    double_dabble dd_12_1(.a(s11[35:32]), .res(a11[35:32]));
    double_dabble dd_12_2(.a(s11[31:28]), .res(a11[31:28]));
    double_dabble dd_12_3(.a(s11[27:24]), .res(a11[27:24]));
    double_dabble dd_12_4(.a(s11[23:20]), .res(a11[23:20]));
    double_dabble dd_12_5(.a(s11[19:16]), .res(a11[19:16]));
    assign s12 = {a11[35:16],s11[15:0]} << 1;

    double_dabble dd_13_1(.a(s12[35:32]), .res(a12[35:32]));
    double_dabble dd_13_2(.a(s12[31:28]), .res(a12[31:28]));
    double_dabble dd_13_3(.a(s12[27:24]), .res(a12[27:24]));
    double_dabble dd_13_4(.a(s12[23:20]), .res(a12[23:20]));
    double_dabble dd_13_5(.a(s12[19:16]), .res(a12[19:16]));
    assign s13 = {a12[35:16],s12[15:0]} << 1;

    double_dabble dd_14_1(.a(s13[35:32]), .res(a13[35:32]));
    double_dabble dd_14_2(.a(s13[31:28]), .res(a13[31:28]));
    double_dabble dd_14_3(.a(s13[27:24]), .res(a13[27:24]));
    double_dabble dd_14_4(.a(s13[23:20]), .res(a13[23:20]));
    double_dabble dd_14_5(.a(s13[19:16]), .res(a13[19:16]));
    assign s14 = {a13[35:16],s13[15:0]} << 1;

    double_dabble dd_15_1(.a(s14[35:32]), .res(a14[35:32]));
    double_dabble dd_15_2(.a(s14[31:28]), .res(a14[31:28]));
    double_dabble dd_15_3(.a(s14[27:24]), .res(a14[27:24]));
    double_dabble dd_15_4(.a(s14[23:20]), .res(a14[23:20]));
    double_dabble dd_15_5(.a(s14[19:16]), .res(a14[19:16]));
    assign s15 = {a14[35:16],s14[15:0]} << 1;

    double_dabble dd_16_1(.a(s15[35:32]), .res(a15[35:32]));
    double_dabble dd_16_2(.a(s15[31:28]), .res(a15[31:28]));
    double_dabble dd_16_3(.a(s15[27:24]), .res(a15[27:24]));
    double_dabble dd_16_4(.a(s15[23:20]), .res(a15[23:20]));
    double_dabble dd_16_5(.a(s15[19:16]), .res(a15[19:16]));
    assign s16 = {a15[35:16],s15[15:0]} << 1;


    assign dcb = s16[35:16];
endmodule