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

/* This file is designed for use with ISim build 0xc3576ebc */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "D:/vhdl_github_2/cop2/Processor_ISE/div1.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

unsigned char ieee_p_2592010699_sub_1258338084_503743352(char *, char *, unsigned int , unsigned int );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
unsigned char ieee_p_3620187407_sub_4060537613_3965413181(char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_767740470_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_0904834510_3212880686_p_0(char *t0)
{
    char t21[16];
    char t23[16];
    char t29[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    int t15;
    int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned char t20;
    char *t22;
    char *t24;
    char *t25;
    int t26;
    unsigned int t27;
    char *t28;
    unsigned int t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;

LAB0:    xsi_set_current_line(58, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB5;

LAB6:    xsi_set_current_line(105, ng0);
    t1 = (t0 + 7532);
    t5 = (t0 + 4624);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 32U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(106, ng0);
    t1 = (t0 + 7564);
    t5 = (t0 + 4688);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 32U);
    xsi_driver_first_trans_fast_port(t5);

LAB3:    t1 = (t0 + 4352);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 7244);
    t6 = (t0 + 4432);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 32U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(60, ng0);
    t1 = (t0 + 7276);
    t5 = (t0 + 4496);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 32U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(61, ng0);
    t1 = (t0 + 7308);
    t5 = (t0 + 4560);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 32U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(62, ng0);
    t1 = (t0 + 7340);
    t5 = (t0 + 3048U);
    t6 = *((char **)t5);
    t5 = (t6 + 0);
    memcpy(t5, t1, 32U);
    xsi_set_current_line(63, ng0);
    t1 = (t0 + 2928U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((int *)t1) = 31;
    goto LAB3;

LAB5:    xsi_set_current_line(65, ng0);
    t1 = (t0 + 992U);
    t11 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t11 != 0)
        goto LAB7;

LAB9:
LAB8:    xsi_set_current_line(101, ng0);
    t1 = (t0 + 992U);
    t3 = ieee_p_2592010699_sub_1258338084_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB30;

LAB32:
LAB31:    goto LAB3;

LAB7:    xsi_set_current_line(67, ng0);
    t5 = (t0 + 2152U);
    t6 = *((char **)t5);
    t12 = (31 - 30);
    t13 = (t12 * 1U);
    t14 = (0 + t13);
    t5 = (t6 + t14);
    t7 = (t0 + 1352U);
    t8 = *((char **)t7);
    t7 = (t0 + 2928U);
    t9 = *((char **)t7);
    t15 = *((int *)t9);
    t16 = (t15 - 31);
    t17 = (t16 * -1);
    xsi_vhdl_check_range_of_index(31, 0, -1, t15);
    t18 = (1U * t17);
    t19 = (0 + t18);
    t7 = (t8 + t19);
    t20 = *((unsigned char *)t7);
    t22 = ((IEEE_P_2592010699) + 4024);
    t24 = (t23 + 0U);
    t25 = (t24 + 0U);
    *((int *)t25) = 30;
    t25 = (t24 + 4U);
    *((int *)t25) = 0;
    t25 = (t24 + 8U);
    *((int *)t25) = -1;
    t26 = (0 - 30);
    t27 = (t26 * -1);
    t27 = (t27 + 1);
    t25 = (t24 + 12U);
    *((unsigned int *)t25) = t27;
    t10 = xsi_base_array_concat(t10, t21, t22, (char)97, t5, t23, (char)99, t20, (char)101);
    t25 = (t0 + 3048U);
    t28 = *((char **)t25);
    t25 = (t28 + 0);
    t27 = (31U + 1U);
    memcpy(t25, t10, t27);
    xsi_set_current_line(68, ng0);
    t1 = (t0 + 3048U);
    t2 = *((char **)t1);
    t1 = (t0 + 6988U);
    t5 = (t0 + 1192U);
    t6 = *((char **)t5);
    t5 = (t0 + 6860U);
    t3 = ieee_p_3620187407_sub_4060537613_3965413181(IEEE_P_3620187407, t2, t1, t6, t5);
    if (t3 != 0)
        goto LAB10;

LAB12:    xsi_set_current_line(80, ng0);
    t1 = (t0 + 3048U);
    t2 = *((char **)t1);
    t12 = (31 - 31);
    t13 = (t12 * 1U);
    t14 = (0 + t13);
    t1 = (t2 + t14);
    t5 = (t23 + 0U);
    t6 = (t5 + 0U);
    *((int *)t6) = 31;
    t6 = (t5 + 4U);
    *((int *)t6) = 0;
    t6 = (t5 + 8U);
    *((int *)t6) = -1;
    t15 = (0 - 31);
    t17 = (t15 * -1);
    t17 = (t17 + 1);
    t6 = (t5 + 12U);
    *((unsigned int *)t6) = t17;
    t6 = (t0 + 7372);
    t8 = (t29 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 0;
    t9 = (t8 + 4U);
    *((int *)t9) = 31;
    t9 = (t8 + 8U);
    *((int *)t9) = 1;
    t16 = (31 - 0);
    t17 = (t16 * 1);
    t17 = (t17 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t17;
    t9 = ieee_p_3620187407_sub_767740470_3965413181(IEEE_P_3620187407, t21, t1, t23, t6, t29);
    t10 = (t21 + 12U);
    t17 = *((unsigned int *)t10);
    t18 = (1U * t17);
    t3 = (32U != t18);
    if (t3 == 1)
        goto LAB21;

LAB22:    t22 = (t0 + 4496);
    t24 = (t22 + 56U);
    t25 = *((char **)t24);
    t28 = (t25 + 56U);
    t31 = *((char **)t28);
    memcpy(t31, t9, 32U);
    xsi_driver_first_trans_fast(t22);
    xsi_set_current_line(81, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t12 = (31 - 30);
    t13 = (t12 * 1U);
    t14 = (0 + t13);
    t1 = (t2 + t14);
    t6 = ((IEEE_P_2592010699) + 4024);
    t7 = (t23 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 30;
    t8 = (t7 + 4U);
    *((int *)t8) = 0;
    t8 = (t7 + 8U);
    *((int *)t8) = -1;
    t15 = (0 - 30);
    t17 = (t15 * -1);
    t17 = (t17 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t17;
    t5 = xsi_base_array_concat(t5, t21, t6, (char)97, t1, t23, (char)99, (unsigned char)2, (char)101);
    t17 = (31U + 1U);
    t3 = (32U != t17);
    if (t3 == 1)
        goto LAB23;

LAB24:    t8 = (t0 + 4560);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t22 = (t10 + 56U);
    t24 = *((char **)t22);
    memcpy(t24, t5, 32U);
    xsi_driver_first_trans_fast(t8);
    xsi_set_current_line(82, ng0);
    t1 = (t0 + 2928U);
    t2 = *((char **)t1);
    t15 = *((int *)t2);
    t16 = (t15 - 1);
    t1 = (t0 + 2928U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((int *)t1) = t16;
    xsi_set_current_line(85, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t12 = (31 - 30);
    t13 = (t12 * 1U);
    t14 = (0 + t13);
    t1 = (t2 + t14);
    t6 = ((IEEE_P_2592010699) + 4024);
    t7 = (t23 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 30;
    t8 = (t7 + 4U);
    *((int *)t8) = 0;
    t8 = (t7 + 8U);
    *((int *)t8) = -1;
    t15 = (0 - 30);
    t17 = (t15 * -1);
    t17 = (t17 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t17;
    t5 = xsi_base_array_concat(t5, t21, t6, (char)97, t1, t23, (char)99, (unsigned char)2, (char)101);
    t17 = (31U + 1U);
    t3 = (32U != t17);
    if (t3 == 1)
        goto LAB25;

LAB26:    t8 = (t0 + 4624);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t22 = (t10 + 56U);
    t24 = *((char **)t22);
    memcpy(t24, t5, 32U);
    xsi_driver_first_trans_fast_port(t8);
    xsi_set_current_line(86, ng0);
    t1 = (t0 + 3048U);
    t2 = *((char **)t1);
    t12 = (31 - 31);
    t13 = (t12 * 1U);
    t14 = (0 + t13);
    t1 = (t2 + t14);
    t5 = (t0 + 4688);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 32U);
    xsi_driver_first_trans_fast_port(t5);

LAB11:    xsi_set_current_line(90, ng0);
    t1 = (t0 + 2928U);
    t2 = *((char **)t1);
    t15 = *((int *)t2);
    t3 = (t15 < 0);
    if (t3 != 0)
        goto LAB27;

LAB29:
LAB28:    goto LAB8;

LAB10:    xsi_set_current_line(69, ng0);
    t7 = (t0 + 3048U);
    t8 = *((char **)t7);
    t12 = (31 - 31);
    t13 = (t12 * 1U);
    t14 = (0 + t13);
    t7 = (t8 + t14);
    t9 = (t23 + 0U);
    t10 = (t9 + 0U);
    *((int *)t10) = 31;
    t10 = (t9 + 4U);
    *((int *)t10) = 0;
    t10 = (t9 + 8U);
    *((int *)t10) = -1;
    t15 = (0 - 31);
    t17 = (t15 * -1);
    t17 = (t17 + 1);
    t10 = (t9 + 12U);
    *((unsigned int *)t10) = t17;
    t10 = (t0 + 1192U);
    t22 = *((char **)t10);
    t17 = (31 - 31);
    t18 = (t17 * 1U);
    t19 = (0 + t18);
    t10 = (t22 + t19);
    t24 = (t29 + 0U);
    t25 = (t24 + 0U);
    *((int *)t25) = 31;
    t25 = (t24 + 4U);
    *((int *)t25) = 0;
    t25 = (t24 + 8U);
    *((int *)t25) = -1;
    t16 = (0 - 31);
    t27 = (t16 * -1);
    t27 = (t27 + 1);
    t25 = (t24 + 12U);
    *((unsigned int *)t25) = t27;
    t25 = ieee_p_3620187407_sub_767740470_3965413181(IEEE_P_3620187407, t21, t7, t23, t10, t29);
    t28 = (t21 + 12U);
    t27 = *((unsigned int *)t28);
    t30 = (1U * t27);
    t4 = (32U != t30);
    if (t4 == 1)
        goto LAB13;

LAB14:    t31 = (t0 + 4496);
    t32 = (t31 + 56U);
    t33 = *((char **)t32);
    t34 = (t33 + 56U);
    t35 = *((char **)t34);
    memcpy(t35, t25, 32U);
    xsi_driver_first_trans_fast(t31);
    xsi_set_current_line(70, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t12 = (31 - 30);
    t13 = (t12 * 1U);
    t14 = (0 + t13);
    t1 = (t2 + t14);
    t6 = ((IEEE_P_2592010699) + 4024);
    t7 = (t23 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 30;
    t8 = (t7 + 4U);
    *((int *)t8) = 0;
    t8 = (t7 + 8U);
    *((int *)t8) = -1;
    t15 = (0 - 30);
    t17 = (t15 * -1);
    t17 = (t17 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t17;
    t5 = xsi_base_array_concat(t5, t21, t6, (char)97, t1, t23, (char)99, (unsigned char)3, (char)101);
    t17 = (31U + 1U);
    t3 = (32U != t17);
    if (t3 == 1)
        goto LAB15;

LAB16:    t8 = (t0 + 4560);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t22 = (t10 + 56U);
    t24 = *((char **)t22);
    memcpy(t24, t5, 32U);
    xsi_driver_first_trans_fast(t8);
    xsi_set_current_line(72, ng0);
    t1 = (t0 + 2928U);
    t2 = *((char **)t1);
    t15 = *((int *)t2);
    t16 = (t15 - 1);
    t1 = (t0 + 2928U);
    t5 = *((char **)t1);
    t1 = (t5 + 0);
    *((int *)t1) = t16;
    xsi_set_current_line(75, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t12 = (31 - 30);
    t13 = (t12 * 1U);
    t14 = (0 + t13);
    t1 = (t2 + t14);
    t6 = ((IEEE_P_2592010699) + 4024);
    t7 = (t23 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 30;
    t8 = (t7 + 4U);
    *((int *)t8) = 0;
    t8 = (t7 + 8U);
    *((int *)t8) = -1;
    t15 = (0 - 30);
    t17 = (t15 * -1);
    t17 = (t17 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t17;
    t5 = xsi_base_array_concat(t5, t21, t6, (char)97, t1, t23, (char)99, (unsigned char)3, (char)101);
    t17 = (31U + 1U);
    t3 = (32U != t17);
    if (t3 == 1)
        goto LAB17;

LAB18:    t8 = (t0 + 4624);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t22 = (t10 + 56U);
    t24 = *((char **)t22);
    memcpy(t24, t5, 32U);
    xsi_driver_first_trans_fast_port(t8);
    xsi_set_current_line(76, ng0);
    t1 = (t0 + 3048U);
    t2 = *((char **)t1);
    t12 = (31 - 31);
    t13 = (t12 * 1U);
    t14 = (0 + t13);
    t1 = (t2 + t14);
    t5 = (t23 + 0U);
    t6 = (t5 + 0U);
    *((int *)t6) = 31;
    t6 = (t5 + 4U);
    *((int *)t6) = 0;
    t6 = (t5 + 8U);
    *((int *)t6) = -1;
    t15 = (0 - 31);
    t17 = (t15 * -1);
    t17 = (t17 + 1);
    t6 = (t5 + 12U);
    *((unsigned int *)t6) = t17;
    t6 = (t0 + 1192U);
    t7 = *((char **)t6);
    t17 = (31 - 31);
    t18 = (t17 * 1U);
    t19 = (0 + t18);
    t6 = (t7 + t19);
    t8 = (t29 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 31;
    t9 = (t8 + 4U);
    *((int *)t9) = 0;
    t9 = (t8 + 8U);
    *((int *)t9) = -1;
    t16 = (0 - 31);
    t27 = (t16 * -1);
    t27 = (t27 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t27;
    t9 = ieee_p_3620187407_sub_767740470_3965413181(IEEE_P_3620187407, t21, t1, t23, t6, t29);
    t10 = (t21 + 12U);
    t27 = *((unsigned int *)t10);
    t30 = (1U * t27);
    t3 = (32U != t30);
    if (t3 == 1)
        goto LAB19;

LAB20:    t22 = (t0 + 4688);
    t24 = (t22 + 56U);
    t25 = *((char **)t24);
    t28 = (t25 + 56U);
    t31 = *((char **)t28);
    memcpy(t31, t9, 32U);
    xsi_driver_first_trans_fast_port(t22);
    goto LAB11;

LAB13:    xsi_size_not_matching(32U, t30, 0);
    goto LAB14;

LAB15:    xsi_size_not_matching(32U, t17, 0);
    goto LAB16;

LAB17:    xsi_size_not_matching(32U, t17, 0);
    goto LAB18;

LAB19:    xsi_size_not_matching(32U, t30, 0);
    goto LAB20;

LAB21:    xsi_size_not_matching(32U, t18, 0);
    goto LAB22;

LAB23:    xsi_size_not_matching(32U, t17, 0);
    goto LAB24;

LAB25:    xsi_size_not_matching(32U, t17, 0);
    goto LAB26;

LAB27:    xsi_set_current_line(91, ng0);
    t1 = (t0 + 7404);
    t6 = (t0 + 4432);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 32U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(92, ng0);
    t1 = (t0 + 7436);
    t5 = (t0 + 4496);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 32U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(93, ng0);
    t1 = (t0 + 7468);
    t5 = (t0 + 4560);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 32U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(94, ng0);
    t1 = (t0 + 7500);
    t5 = (t0 + 3048U);
    t6 = *((char **)t5);
    t5 = (t6 + 0);
    memcpy(t5, t1, 32U);
    xsi_set_current_line(95, ng0);
    t1 = (t0 + 2928U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((int *)t1) = 31;
    goto LAB28;

LAB30:    xsi_set_current_line(102, ng0);
    t2 = (t0 + 2312U);
    t5 = *((char **)t2);
    t2 = (t0 + 4432);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t5, 32U);
    xsi_driver_first_trans_fast(t2);
    goto LAB31;

}


extern void work_a_0904834510_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0904834510_3212880686_p_0};
	xsi_register_didat("work_a_0904834510_3212880686", "isim/testbench_processor_isim_beh.exe.sim/work/a_0904834510_3212880686.didat");
	xsi_register_executes(pe);
}
