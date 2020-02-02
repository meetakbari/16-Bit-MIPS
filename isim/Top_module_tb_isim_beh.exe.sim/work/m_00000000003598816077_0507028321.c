/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "E:/SecondYear/CO_Lab/MIPS/Register_Bank_Block.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};
static unsigned int ng3[] = {2U, 0U};
static unsigned int ng4[] = {3U, 0U};
static int ng5[] = {0, 0};



static void Always_48_0(char *t0)
{
    char t7[8];
    char t16[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    unsigned int t17;
    int t18;
    unsigned int t19;
    int t20;
    int t21;
    unsigned int t22;
    unsigned int t23;
    int t24;
    int t25;

LAB0:    t1 = (t0 + 4768U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(48, ng0);
    t2 = (t0 + 5832);
    *((int *)t2) = 1;
    t3 = (t0 + 4800);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(49, ng0);

LAB5:    xsi_set_current_line(50, ng0);
    t4 = (t0 + 3528);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t8 = (t0 + 3528);
    t9 = (t8 + 72U);
    t10 = *((char **)t9);
    t11 = (t0 + 3528);
    t12 = (t11 + 64U);
    t13 = *((char **)t12);
    t14 = (t0 + 1688U);
    t15 = *((char **)t14);
    xsi_vlog_generic_get_array_select_value(t7, 16, t6, t10, t13, 2, 1, t15, 5, 2);
    t14 = (t0 + 3688);
    xsi_vlogvar_assign_value(t14, t7, 0, 0, 16);
    xsi_set_current_line(51, ng0);
    t2 = (t0 + 3528);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3528);
    t6 = (t5 + 72U);
    t8 = *((char **)t6);
    t9 = (t0 + 3528);
    t10 = (t9 + 64U);
    t11 = *((char **)t10);
    t12 = (t0 + 1848U);
    t13 = *((char **)t12);
    xsi_vlog_generic_get_array_select_value(t7, 16, t4, t8, t11, 2, 1, t13, 5, 2);
    t12 = (t0 + 3848);
    xsi_vlogvar_assign_value(t12, t7, 0, 0, 16);
    xsi_set_current_line(52, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    t2 = (t0 + 3528);
    t4 = (t0 + 3528);
    t5 = (t4 + 72U);
    t6 = *((char **)t5);
    t8 = (t0 + 3528);
    t9 = (t8 + 64U);
    t10 = *((char **)t9);
    t11 = (t0 + 2008U);
    t12 = *((char **)t11);
    xsi_vlog_generic_convert_array_indices(t7, t16, t6, t10, 2, 1, t12, 5, 2);
    t11 = (t7 + 4);
    t17 = *((unsigned int *)t11);
    t18 = (!(t17));
    t13 = (t16 + 4);
    t19 = *((unsigned int *)t13);
    t20 = (!(t19));
    t21 = (t18 && t20);
    if (t21 == 1)
        goto LAB6;

LAB7:    goto LAB2;

LAB6:    t22 = *((unsigned int *)t7);
    t23 = *((unsigned int *)t16);
    t24 = (t22 - t23);
    t25 = (t24 + 1);
    xsi_vlogvar_assign_value(t2, t3, 0, *((unsigned int *)t16), t25);
    goto LAB7;

}

static void Cont_56_1(char *t0)
{
    char t3[8];
    char t4[8];
    char t6[8];
    char t36[8];
    char t41[8];
    char t42[8];
    char t45[8];
    char t74[8];
    char t79[8];
    char t80[8];
    char t82[8];
    char t111[8];
    char t116[8];
    char t117[8];
    char t119[8];
    char t148[8];
    char *t1;
    char *t2;
    char *t5;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    char *t33;
    char *t34;
    char *t35;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    char *t43;
    char *t44;
    char *t46;
    char *t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    char *t60;
    char *t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    char *t67;
    char *t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    char *t72;
    char *t73;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    char *t81;
    char *t83;
    char *t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    unsigned int t96;
    char *t97;
    char *t98;
    unsigned int t99;
    unsigned int t100;
    unsigned int t101;
    unsigned int t102;
    unsigned int t103;
    char *t104;
    char *t105;
    unsigned int t106;
    unsigned int t107;
    unsigned int t108;
    char *t109;
    char *t110;
    unsigned int t112;
    unsigned int t113;
    unsigned int t114;
    unsigned int t115;
    char *t118;
    char *t120;
    char *t121;
    unsigned int t122;
    unsigned int t123;
    unsigned int t124;
    unsigned int t125;
    unsigned int t126;
    unsigned int t127;
    unsigned int t128;
    unsigned int t129;
    unsigned int t130;
    unsigned int t131;
    unsigned int t132;
    unsigned int t133;
    char *t134;
    char *t135;
    unsigned int t136;
    unsigned int t137;
    unsigned int t138;
    unsigned int t139;
    unsigned int t140;
    char *t141;
    char *t142;
    unsigned int t143;
    unsigned int t144;
    unsigned int t145;
    char *t146;
    char *t147;
    unsigned int t149;
    unsigned int t150;
    unsigned int t151;
    unsigned int t152;
    char *t153;
    char *t154;
    char *t155;
    char *t156;
    char *t157;
    unsigned int t158;
    unsigned int t159;
    char *t160;
    unsigned int t161;
    unsigned int t162;
    char *t163;
    unsigned int t164;
    unsigned int t165;
    char *t166;

LAB0:    t1 = (t0 + 5016U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 2168U);
    t5 = *((char **)t2);
    t2 = ((char*)((ng1)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t2 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB7;

LAB4:    if (t18 != 0)
        goto LAB6;

LAB5:    *((unsigned int *)t6) = 1;

LAB7:    memset(t4, 0, 8);
    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 & 1U);
    if (t27 != 0)
        goto LAB8;

LAB9:    if (*((unsigned int *)t22) != 0)
        goto LAB10;

LAB11:    t29 = (t4 + 4);
    t30 = *((unsigned int *)t4);
    t31 = *((unsigned int *)t29);
    t32 = (t30 || t31);
    if (t32 > 0)
        goto LAB12;

LAB13:    t37 = *((unsigned int *)t4);
    t38 = (~(t37));
    t39 = *((unsigned int *)t29);
    t40 = (t38 || t39);
    if (t40 > 0)
        goto LAB14;

LAB15:    if (*((unsigned int *)t29) > 0)
        goto LAB16;

LAB17:    if (*((unsigned int *)t4) > 0)
        goto LAB18;

LAB19:    memcpy(t3, t41, 8);

LAB20:    t153 = (t0 + 5960);
    t154 = (t153 + 56U);
    t155 = *((char **)t154);
    t156 = (t155 + 56U);
    t157 = *((char **)t156);
    memset(t157, 0, 8);
    t158 = 65535U;
    t159 = t158;
    t160 = (t3 + 4);
    t161 = *((unsigned int *)t3);
    t158 = (t158 & t161);
    t162 = *((unsigned int *)t160);
    t159 = (t159 & t162);
    t163 = (t157 + 4);
    t164 = *((unsigned int *)t157);
    *((unsigned int *)t157) = (t164 | t158);
    t165 = *((unsigned int *)t163);
    *((unsigned int *)t163) = (t165 | t159);
    xsi_driver_vfirst_trans(t153, 0, 15);
    t166 = (t0 + 5848);
    *((int *)t166) = 1;

LAB1:    return;
LAB6:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB7;

LAB8:    *((unsigned int *)t4) = 1;
    goto LAB11;

LAB10:    t28 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t28) = 1;
    goto LAB11;

LAB12:    t33 = (t0 + 3688);
    t34 = (t33 + 56U);
    t35 = *((char **)t34);
    memcpy(t36, t35, 8);
    goto LAB13;

LAB14:    t43 = (t0 + 2168U);
    t44 = *((char **)t43);
    t43 = ((char*)((ng2)));
    memset(t45, 0, 8);
    t46 = (t44 + 4);
    t47 = (t43 + 4);
    t48 = *((unsigned int *)t44);
    t49 = *((unsigned int *)t43);
    t50 = (t48 ^ t49);
    t51 = *((unsigned int *)t46);
    t52 = *((unsigned int *)t47);
    t53 = (t51 ^ t52);
    t54 = (t50 | t53);
    t55 = *((unsigned int *)t46);
    t56 = *((unsigned int *)t47);
    t57 = (t55 | t56);
    t58 = (~(t57));
    t59 = (t54 & t58);
    if (t59 != 0)
        goto LAB24;

LAB21:    if (t57 != 0)
        goto LAB23;

LAB22:    *((unsigned int *)t45) = 1;

LAB24:    memset(t42, 0, 8);
    t61 = (t45 + 4);
    t62 = *((unsigned int *)t61);
    t63 = (~(t62));
    t64 = *((unsigned int *)t45);
    t65 = (t64 & t63);
    t66 = (t65 & 1U);
    if (t66 != 0)
        goto LAB25;

LAB26:    if (*((unsigned int *)t61) != 0)
        goto LAB27;

LAB28:    t68 = (t42 + 4);
    t69 = *((unsigned int *)t42);
    t70 = *((unsigned int *)t68);
    t71 = (t69 || t70);
    if (t71 > 0)
        goto LAB29;

LAB30:    t75 = *((unsigned int *)t42);
    t76 = (~(t75));
    t77 = *((unsigned int *)t68);
    t78 = (t76 || t77);
    if (t78 > 0)
        goto LAB31;

LAB32:    if (*((unsigned int *)t68) > 0)
        goto LAB33;

LAB34:    if (*((unsigned int *)t42) > 0)
        goto LAB35;

LAB36:    memcpy(t41, t79, 8);

LAB37:    goto LAB15;

LAB16:    xsi_vlog_unsigned_bit_combine(t3, 32, t36, 32, t41, 32);
    goto LAB20;

LAB18:    memcpy(t3, t36, 8);
    goto LAB20;

LAB23:    t60 = (t45 + 4);
    *((unsigned int *)t45) = 1;
    *((unsigned int *)t60) = 1;
    goto LAB24;

LAB25:    *((unsigned int *)t42) = 1;
    goto LAB28;

LAB27:    t67 = (t42 + 4);
    *((unsigned int *)t42) = 1;
    *((unsigned int *)t67) = 1;
    goto LAB28;

LAB29:    t72 = (t0 + 1048U);
    t73 = *((char **)t72);
    memcpy(t74, t73, 8);
    goto LAB30;

LAB31:    t72 = (t0 + 2168U);
    t81 = *((char **)t72);
    t72 = ((char*)((ng3)));
    memset(t82, 0, 8);
    t83 = (t81 + 4);
    t84 = (t72 + 4);
    t85 = *((unsigned int *)t81);
    t86 = *((unsigned int *)t72);
    t87 = (t85 ^ t86);
    t88 = *((unsigned int *)t83);
    t89 = *((unsigned int *)t84);
    t90 = (t88 ^ t89);
    t91 = (t87 | t90);
    t92 = *((unsigned int *)t83);
    t93 = *((unsigned int *)t84);
    t94 = (t92 | t93);
    t95 = (~(t94));
    t96 = (t91 & t95);
    if (t96 != 0)
        goto LAB41;

LAB38:    if (t94 != 0)
        goto LAB40;

LAB39:    *((unsigned int *)t82) = 1;

LAB41:    memset(t80, 0, 8);
    t98 = (t82 + 4);
    t99 = *((unsigned int *)t98);
    t100 = (~(t99));
    t101 = *((unsigned int *)t82);
    t102 = (t101 & t100);
    t103 = (t102 & 1U);
    if (t103 != 0)
        goto LAB42;

LAB43:    if (*((unsigned int *)t98) != 0)
        goto LAB44;

LAB45:    t105 = (t80 + 4);
    t106 = *((unsigned int *)t80);
    t107 = *((unsigned int *)t105);
    t108 = (t106 || t107);
    if (t108 > 0)
        goto LAB46;

LAB47:    t112 = *((unsigned int *)t80);
    t113 = (~(t112));
    t114 = *((unsigned int *)t105);
    t115 = (t113 || t114);
    if (t115 > 0)
        goto LAB48;

LAB49:    if (*((unsigned int *)t105) > 0)
        goto LAB50;

LAB51:    if (*((unsigned int *)t80) > 0)
        goto LAB52;

LAB53:    memcpy(t79, t116, 8);

LAB54:    goto LAB32;

LAB33:    xsi_vlog_unsigned_bit_combine(t41, 32, t74, 32, t79, 32);
    goto LAB37;

LAB35:    memcpy(t41, t74, 8);
    goto LAB37;

LAB40:    t97 = (t82 + 4);
    *((unsigned int *)t82) = 1;
    *((unsigned int *)t97) = 1;
    goto LAB41;

LAB42:    *((unsigned int *)t80) = 1;
    goto LAB45;

LAB44:    t104 = (t80 + 4);
    *((unsigned int *)t80) = 1;
    *((unsigned int *)t104) = 1;
    goto LAB45;

LAB46:    t109 = (t0 + 1208U);
    t110 = *((char **)t109);
    memcpy(t111, t110, 8);
    goto LAB47;

LAB48:    t109 = (t0 + 2168U);
    t118 = *((char **)t109);
    t109 = ((char*)((ng4)));
    memset(t119, 0, 8);
    t120 = (t118 + 4);
    t121 = (t109 + 4);
    t122 = *((unsigned int *)t118);
    t123 = *((unsigned int *)t109);
    t124 = (t122 ^ t123);
    t125 = *((unsigned int *)t120);
    t126 = *((unsigned int *)t121);
    t127 = (t125 ^ t126);
    t128 = (t124 | t127);
    t129 = *((unsigned int *)t120);
    t130 = *((unsigned int *)t121);
    t131 = (t129 | t130);
    t132 = (~(t131));
    t133 = (t128 & t132);
    if (t133 != 0)
        goto LAB58;

LAB55:    if (t131 != 0)
        goto LAB57;

LAB56:    *((unsigned int *)t119) = 1;

LAB58:    memset(t117, 0, 8);
    t135 = (t119 + 4);
    t136 = *((unsigned int *)t135);
    t137 = (~(t136));
    t138 = *((unsigned int *)t119);
    t139 = (t138 & t137);
    t140 = (t139 & 1U);
    if (t140 != 0)
        goto LAB59;

LAB60:    if (*((unsigned int *)t135) != 0)
        goto LAB61;

LAB62:    t142 = (t117 + 4);
    t143 = *((unsigned int *)t117);
    t144 = *((unsigned int *)t142);
    t145 = (t143 || t144);
    if (t145 > 0)
        goto LAB63;

LAB64:    t149 = *((unsigned int *)t117);
    t150 = (~(t149));
    t151 = *((unsigned int *)t142);
    t152 = (t150 || t151);
    if (t152 > 0)
        goto LAB65;

LAB66:    if (*((unsigned int *)t142) > 0)
        goto LAB67;

LAB68:    if (*((unsigned int *)t117) > 0)
        goto LAB69;

LAB70:    memcpy(t116, t146, 8);

LAB71:    goto LAB49;

LAB50:    xsi_vlog_unsigned_bit_combine(t79, 32, t111, 32, t116, 32);
    goto LAB54;

LAB52:    memcpy(t79, t111, 8);
    goto LAB54;

LAB57:    t134 = (t119 + 4);
    *((unsigned int *)t119) = 1;
    *((unsigned int *)t134) = 1;
    goto LAB58;

LAB59:    *((unsigned int *)t117) = 1;
    goto LAB62;

LAB61:    t141 = (t117 + 4);
    *((unsigned int *)t117) = 1;
    *((unsigned int *)t141) = 1;
    goto LAB62;

LAB63:    t146 = (t0 + 1368U);
    t147 = *((char **)t146);
    memcpy(t148, t147, 8);
    goto LAB64;

LAB65:    t146 = ((char*)((ng5)));
    goto LAB66;

LAB67:    xsi_vlog_unsigned_bit_combine(t116, 32, t148, 32, t146, 32);
    goto LAB71;

LAB69:    memcpy(t116, t148, 8);
    goto LAB71;

}

static void Cont_61_2(char *t0)
{
    char t3[8];
    char t4[8];
    char t6[8];
    char t36[8];
    char t41[8];
    char t42[8];
    char t45[8];
    char t74[8];
    char t79[8];
    char t80[8];
    char t82[8];
    char t111[8];
    char t116[8];
    char t117[8];
    char t119[8];
    char t148[8];
    char *t1;
    char *t2;
    char *t5;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    char *t33;
    char *t34;
    char *t35;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    char *t43;
    char *t44;
    char *t46;
    char *t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    char *t60;
    char *t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    char *t67;
    char *t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    char *t72;
    char *t73;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    char *t81;
    char *t83;
    char *t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    unsigned int t96;
    char *t97;
    char *t98;
    unsigned int t99;
    unsigned int t100;
    unsigned int t101;
    unsigned int t102;
    unsigned int t103;
    char *t104;
    char *t105;
    unsigned int t106;
    unsigned int t107;
    unsigned int t108;
    char *t109;
    char *t110;
    unsigned int t112;
    unsigned int t113;
    unsigned int t114;
    unsigned int t115;
    char *t118;
    char *t120;
    char *t121;
    unsigned int t122;
    unsigned int t123;
    unsigned int t124;
    unsigned int t125;
    unsigned int t126;
    unsigned int t127;
    unsigned int t128;
    unsigned int t129;
    unsigned int t130;
    unsigned int t131;
    unsigned int t132;
    unsigned int t133;
    char *t134;
    char *t135;
    unsigned int t136;
    unsigned int t137;
    unsigned int t138;
    unsigned int t139;
    unsigned int t140;
    char *t141;
    char *t142;
    unsigned int t143;
    unsigned int t144;
    unsigned int t145;
    char *t146;
    char *t147;
    unsigned int t149;
    unsigned int t150;
    unsigned int t151;
    unsigned int t152;
    char *t153;
    char *t154;
    char *t155;
    char *t156;
    char *t157;
    unsigned int t158;
    unsigned int t159;
    char *t160;
    unsigned int t161;
    unsigned int t162;
    char *t163;
    unsigned int t164;
    unsigned int t165;
    char *t166;

LAB0:    t1 = (t0 + 5264U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 2328U);
    t5 = *((char **)t2);
    t2 = ((char*)((ng1)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t2 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB7;

LAB4:    if (t18 != 0)
        goto LAB6;

LAB5:    *((unsigned int *)t6) = 1;

LAB7:    memset(t4, 0, 8);
    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 & 1U);
    if (t27 != 0)
        goto LAB8;

LAB9:    if (*((unsigned int *)t22) != 0)
        goto LAB10;

LAB11:    t29 = (t4 + 4);
    t30 = *((unsigned int *)t4);
    t31 = *((unsigned int *)t29);
    t32 = (t30 || t31);
    if (t32 > 0)
        goto LAB12;

LAB13:    t37 = *((unsigned int *)t4);
    t38 = (~(t37));
    t39 = *((unsigned int *)t29);
    t40 = (t38 || t39);
    if (t40 > 0)
        goto LAB14;

LAB15:    if (*((unsigned int *)t29) > 0)
        goto LAB16;

LAB17:    if (*((unsigned int *)t4) > 0)
        goto LAB18;

LAB19:    memcpy(t3, t41, 8);

LAB20:    t153 = (t0 + 6024);
    t154 = (t153 + 56U);
    t155 = *((char **)t154);
    t156 = (t155 + 56U);
    t157 = *((char **)t156);
    memset(t157, 0, 8);
    t158 = 65535U;
    t159 = t158;
    t160 = (t3 + 4);
    t161 = *((unsigned int *)t3);
    t158 = (t158 & t161);
    t162 = *((unsigned int *)t160);
    t159 = (t159 & t162);
    t163 = (t157 + 4);
    t164 = *((unsigned int *)t157);
    *((unsigned int *)t157) = (t164 | t158);
    t165 = *((unsigned int *)t163);
    *((unsigned int *)t163) = (t165 | t159);
    xsi_driver_vfirst_trans(t153, 0, 15);
    t166 = (t0 + 5864);
    *((int *)t166) = 1;

LAB1:    return;
LAB6:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB7;

LAB8:    *((unsigned int *)t4) = 1;
    goto LAB11;

LAB10:    t28 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t28) = 1;
    goto LAB11;

LAB12:    t33 = (t0 + 3848);
    t34 = (t33 + 56U);
    t35 = *((char **)t34);
    memcpy(t36, t35, 8);
    goto LAB13;

LAB14:    t43 = (t0 + 2328U);
    t44 = *((char **)t43);
    t43 = ((char*)((ng2)));
    memset(t45, 0, 8);
    t46 = (t44 + 4);
    t47 = (t43 + 4);
    t48 = *((unsigned int *)t44);
    t49 = *((unsigned int *)t43);
    t50 = (t48 ^ t49);
    t51 = *((unsigned int *)t46);
    t52 = *((unsigned int *)t47);
    t53 = (t51 ^ t52);
    t54 = (t50 | t53);
    t55 = *((unsigned int *)t46);
    t56 = *((unsigned int *)t47);
    t57 = (t55 | t56);
    t58 = (~(t57));
    t59 = (t54 & t58);
    if (t59 != 0)
        goto LAB24;

LAB21:    if (t57 != 0)
        goto LAB23;

LAB22:    *((unsigned int *)t45) = 1;

LAB24:    memset(t42, 0, 8);
    t61 = (t45 + 4);
    t62 = *((unsigned int *)t61);
    t63 = (~(t62));
    t64 = *((unsigned int *)t45);
    t65 = (t64 & t63);
    t66 = (t65 & 1U);
    if (t66 != 0)
        goto LAB25;

LAB26:    if (*((unsigned int *)t61) != 0)
        goto LAB27;

LAB28:    t68 = (t42 + 4);
    t69 = *((unsigned int *)t42);
    t70 = *((unsigned int *)t68);
    t71 = (t69 || t70);
    if (t71 > 0)
        goto LAB29;

LAB30:    t75 = *((unsigned int *)t42);
    t76 = (~(t75));
    t77 = *((unsigned int *)t68);
    t78 = (t76 || t77);
    if (t78 > 0)
        goto LAB31;

LAB32:    if (*((unsigned int *)t68) > 0)
        goto LAB33;

LAB34:    if (*((unsigned int *)t42) > 0)
        goto LAB35;

LAB36:    memcpy(t41, t79, 8);

LAB37:    goto LAB15;

LAB16:    xsi_vlog_unsigned_bit_combine(t3, 32, t36, 32, t41, 32);
    goto LAB20;

LAB18:    memcpy(t3, t36, 8);
    goto LAB20;

LAB23:    t60 = (t45 + 4);
    *((unsigned int *)t45) = 1;
    *((unsigned int *)t60) = 1;
    goto LAB24;

LAB25:    *((unsigned int *)t42) = 1;
    goto LAB28;

LAB27:    t67 = (t42 + 4);
    *((unsigned int *)t42) = 1;
    *((unsigned int *)t67) = 1;
    goto LAB28;

LAB29:    t72 = (t0 + 1048U);
    t73 = *((char **)t72);
    memcpy(t74, t73, 8);
    goto LAB30;

LAB31:    t72 = (t0 + 2328U);
    t81 = *((char **)t72);
    t72 = ((char*)((ng3)));
    memset(t82, 0, 8);
    t83 = (t81 + 4);
    t84 = (t72 + 4);
    t85 = *((unsigned int *)t81);
    t86 = *((unsigned int *)t72);
    t87 = (t85 ^ t86);
    t88 = *((unsigned int *)t83);
    t89 = *((unsigned int *)t84);
    t90 = (t88 ^ t89);
    t91 = (t87 | t90);
    t92 = *((unsigned int *)t83);
    t93 = *((unsigned int *)t84);
    t94 = (t92 | t93);
    t95 = (~(t94));
    t96 = (t91 & t95);
    if (t96 != 0)
        goto LAB41;

LAB38:    if (t94 != 0)
        goto LAB40;

LAB39:    *((unsigned int *)t82) = 1;

LAB41:    memset(t80, 0, 8);
    t98 = (t82 + 4);
    t99 = *((unsigned int *)t98);
    t100 = (~(t99));
    t101 = *((unsigned int *)t82);
    t102 = (t101 & t100);
    t103 = (t102 & 1U);
    if (t103 != 0)
        goto LAB42;

LAB43:    if (*((unsigned int *)t98) != 0)
        goto LAB44;

LAB45:    t105 = (t80 + 4);
    t106 = *((unsigned int *)t80);
    t107 = *((unsigned int *)t105);
    t108 = (t106 || t107);
    if (t108 > 0)
        goto LAB46;

LAB47:    t112 = *((unsigned int *)t80);
    t113 = (~(t112));
    t114 = *((unsigned int *)t105);
    t115 = (t113 || t114);
    if (t115 > 0)
        goto LAB48;

LAB49:    if (*((unsigned int *)t105) > 0)
        goto LAB50;

LAB51:    if (*((unsigned int *)t80) > 0)
        goto LAB52;

LAB53:    memcpy(t79, t116, 8);

LAB54:    goto LAB32;

LAB33:    xsi_vlog_unsigned_bit_combine(t41, 32, t74, 32, t79, 32);
    goto LAB37;

LAB35:    memcpy(t41, t74, 8);
    goto LAB37;

LAB40:    t97 = (t82 + 4);
    *((unsigned int *)t82) = 1;
    *((unsigned int *)t97) = 1;
    goto LAB41;

LAB42:    *((unsigned int *)t80) = 1;
    goto LAB45;

LAB44:    t104 = (t80 + 4);
    *((unsigned int *)t80) = 1;
    *((unsigned int *)t104) = 1;
    goto LAB45;

LAB46:    t109 = (t0 + 1208U);
    t110 = *((char **)t109);
    memcpy(t111, t110, 8);
    goto LAB47;

LAB48:    t109 = (t0 + 2328U);
    t118 = *((char **)t109);
    t109 = ((char*)((ng4)));
    memset(t119, 0, 8);
    t120 = (t118 + 4);
    t121 = (t109 + 4);
    t122 = *((unsigned int *)t118);
    t123 = *((unsigned int *)t109);
    t124 = (t122 ^ t123);
    t125 = *((unsigned int *)t120);
    t126 = *((unsigned int *)t121);
    t127 = (t125 ^ t126);
    t128 = (t124 | t127);
    t129 = *((unsigned int *)t120);
    t130 = *((unsigned int *)t121);
    t131 = (t129 | t130);
    t132 = (~(t131));
    t133 = (t128 & t132);
    if (t133 != 0)
        goto LAB58;

LAB55:    if (t131 != 0)
        goto LAB57;

LAB56:    *((unsigned int *)t119) = 1;

LAB58:    memset(t117, 0, 8);
    t135 = (t119 + 4);
    t136 = *((unsigned int *)t135);
    t137 = (~(t136));
    t138 = *((unsigned int *)t119);
    t139 = (t138 & t137);
    t140 = (t139 & 1U);
    if (t140 != 0)
        goto LAB59;

LAB60:    if (*((unsigned int *)t135) != 0)
        goto LAB61;

LAB62:    t142 = (t117 + 4);
    t143 = *((unsigned int *)t117);
    t144 = *((unsigned int *)t142);
    t145 = (t143 || t144);
    if (t145 > 0)
        goto LAB63;

LAB64:    t149 = *((unsigned int *)t117);
    t150 = (~(t149));
    t151 = *((unsigned int *)t142);
    t152 = (t150 || t151);
    if (t152 > 0)
        goto LAB65;

LAB66:    if (*((unsigned int *)t142) > 0)
        goto LAB67;

LAB68:    if (*((unsigned int *)t117) > 0)
        goto LAB69;

LAB70:    memcpy(t116, t146, 8);

LAB71:    goto LAB49;

LAB50:    xsi_vlog_unsigned_bit_combine(t79, 32, t111, 32, t116, 32);
    goto LAB54;

LAB52:    memcpy(t79, t111, 8);
    goto LAB54;

LAB57:    t134 = (t119 + 4);
    *((unsigned int *)t119) = 1;
    *((unsigned int *)t134) = 1;
    goto LAB58;

LAB59:    *((unsigned int *)t117) = 1;
    goto LAB62;

LAB61:    t141 = (t117 + 4);
    *((unsigned int *)t117) = 1;
    *((unsigned int *)t141) = 1;
    goto LAB62;

LAB63:    t146 = (t0 + 1368U);
    t147 = *((char **)t146);
    memcpy(t148, t147, 8);
    goto LAB64;

LAB65:    t146 = ((char*)((ng5)));
    goto LAB66;

LAB67:    xsi_vlog_unsigned_bit_combine(t116, 32, t148, 32, t146, 32);
    goto LAB71;

LAB69:    memcpy(t116, t148, 8);
    goto LAB71;

}

static void Cont_66_3(char *t0)
{
    char t3[8];
    char t4[8];
    char *t1;
    char *t2;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    unsigned int t30;
    unsigned int t31;
    char *t32;
    unsigned int t33;
    unsigned int t34;
    char *t35;

LAB0:    t1 = (t0 + 5512U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(66, ng0);
    t2 = (t0 + 2488U);
    t5 = *((char **)t2);
    memset(t4, 0, 8);
    t2 = (t5 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB4;

LAB5:    if (*((unsigned int *)t2) != 0)
        goto LAB6;

LAB7:    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t14 = *((unsigned int *)t12);
    t15 = (t13 || t14);
    if (t15 > 0)
        goto LAB8;

LAB9:    t18 = *((unsigned int *)t4);
    t19 = (~(t18));
    t20 = *((unsigned int *)t12);
    t21 = (t19 || t20);
    if (t21 > 0)
        goto LAB10;

LAB11:    if (*((unsigned int *)t12) > 0)
        goto LAB12;

LAB13:    if (*((unsigned int *)t4) > 0)
        goto LAB14;

LAB15:    memcpy(t3, t22, 8);

LAB16:    t16 = (t0 + 6088);
    t23 = (t16 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    memset(t26, 0, 8);
    t27 = 65535U;
    t28 = t27;
    t29 = (t3 + 4);
    t30 = *((unsigned int *)t3);
    t27 = (t27 & t30);
    t31 = *((unsigned int *)t29);
    t28 = (t28 & t31);
    t32 = (t26 + 4);
    t33 = *((unsigned int *)t26);
    *((unsigned int *)t26) = (t33 | t27);
    t34 = *((unsigned int *)t32);
    *((unsigned int *)t32) = (t34 | t28);
    xsi_driver_vfirst_trans(t16, 0, 15);
    t35 = (t0 + 5880);
    *((int *)t35) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t4) = 1;
    goto LAB7;

LAB6:    t11 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t11) = 1;
    goto LAB7;

LAB8:    t16 = (t0 + 1528U);
    t17 = *((char **)t16);
    goto LAB9;

LAB10:    t16 = (t0 + 3128U);
    t22 = *((char **)t16);
    goto LAB11;

LAB12:    xsi_vlog_unsigned_bit_combine(t3, 16, t17, 16, t22, 16);
    goto LAB16;

LAB14:    memcpy(t3, t17, 8);
    goto LAB16;

}


extern void work_m_00000000003598816077_0507028321_init()
{
	static char *pe[] = {(void *)Always_48_0,(void *)Cont_56_1,(void *)Cont_61_2,(void *)Cont_66_3};
	xsi_register_didat("work_m_00000000003598816077_0507028321", "isim/Top_module_tb_isim_beh.exe.sim/work/m_00000000003598816077_0507028321.didat");
	xsi_register_executes(pe);
}
