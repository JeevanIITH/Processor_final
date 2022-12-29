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
static const char *ng0 = "D:/vhdl_github_2/cop2/Processor_ISE/Divider_module.vhd";
extern char *IEEE_P_3620187407;
extern char *IEEE_P_2592010699;

char *ieee_p_2592010699_sub_1837678034_503743352(char *, char *, char *, char *);
unsigned char ieee_p_2592010699_sub_2507238156_503743352(char *, unsigned char , unsigned char );
char *ieee_p_3620187407_sub_767668596_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_2453160712_3212880686_p_0(char *t0)
{
    char t9[16];
    char t10[16];
    char t16[16];
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    unsigned char t8;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t17;
    char *t18;
    int t19;
    unsigned int t20;
    char *t21;
    unsigned int t22;
    unsigned char t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;

LAB0:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = (31 - 31);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t7 == (unsigned char)3);
    if (t8 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 4456);
    t11 = (t1 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t2, 32U);
    xsi_driver_first_trans_fast(t1);

LAB3:    xsi_set_current_line(64, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = (31 - 31);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t7 == (unsigned char)3);
    if (t8 != 0)
        goto LAB7;

LAB9:    xsi_set_current_line(67, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 4520);
    t11 = (t1 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t2, 32U);
    xsi_driver_first_trans_fast(t1);

LAB8:    t1 = (t0 + 4360);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(60, ng0);
    t11 = (t0 + 1192U);
    t12 = *((char **)t11);
    t11 = (t0 + 7008U);
    t13 = ieee_p_2592010699_sub_1837678034_503743352(IEEE_P_2592010699, t10, t12, t11);
    t14 = (t0 + 7291);
    t17 = (t16 + 0U);
    t18 = (t17 + 0U);
    *((int *)t18) = 0;
    t18 = (t17 + 4U);
    *((int *)t18) = 31;
    t18 = (t17 + 8U);
    *((int *)t18) = 1;
    t19 = (31 - 0);
    t20 = (t19 * 1);
    t20 = (t20 + 1);
    t18 = (t17 + 12U);
    *((unsigned int *)t18) = t20;
    t18 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t9, t13, t10, t14, t16);
    t21 = (t9 + 12U);
    t20 = *((unsigned int *)t21);
    t22 = (1U * t20);
    t23 = (32U != t22);
    if (t23 == 1)
        goto LAB5;

LAB6:    t24 = (t0 + 4456);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    memcpy(t28, t18, 32U);
    xsi_driver_first_trans_fast(t24);
    goto LAB3;

LAB5:    xsi_size_not_matching(32U, t22, 0);
    goto LAB6;

LAB7:    xsi_set_current_line(65, ng0);
    t11 = (t0 + 1352U);
    t12 = *((char **)t11);
    t11 = (t0 + 7024U);
    t13 = ieee_p_2592010699_sub_1837678034_503743352(IEEE_P_2592010699, t10, t12, t11);
    t14 = (t0 + 7323);
    t17 = (t16 + 0U);
    t18 = (t17 + 0U);
    *((int *)t18) = 0;
    t18 = (t17 + 4U);
    *((int *)t18) = 31;
    t18 = (t17 + 8U);
    *((int *)t18) = 1;
    t19 = (31 - 0);
    t20 = (t19 * 1);
    t20 = (t20 + 1);
    t18 = (t17 + 12U);
    *((unsigned int *)t18) = t20;
    t18 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t9, t13, t10, t14, t16);
    t21 = (t9 + 12U);
    t20 = *((unsigned int *)t21);
    t22 = (1U * t20);
    t23 = (32U != t22);
    if (t23 == 1)
        goto LAB10;

LAB11:    t24 = (t0 + 4520);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    memcpy(t28, t18, 32U);
    xsi_driver_first_trans_fast(t24);
    goto LAB8;

LAB10:    xsi_size_not_matching(32U, t22, 0);
    goto LAB11;

}

static void work_a_2453160712_3212880686_p_1(char *t0)
{
    char t17[16];
    char t18[16];
    char t24[16];
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned char t14;
    unsigned char t15;
    unsigned char t16;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t25;
    char *t26;
    int t27;
    unsigned int t28;
    char *t29;
    unsigned int t30;
    unsigned char t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;

LAB0:    xsi_set_current_line(72, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = (31 - 31);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 1352U);
    t9 = *((char **)t8);
    t10 = (31 - 31);
    t11 = (t10 * -1);
    t12 = (1U * t11);
    t13 = (0 + t12);
    t8 = (t9 + t13);
    t14 = *((unsigned char *)t8);
    t15 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t7, t14);
    t16 = (t15 == (unsigned char)3);
    if (t16 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(76, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 4584);
    t8 = (t1 + 56U);
    t9 = *((char **)t8);
    t19 = (t9 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t2, 32U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(77, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t1 = (t0 + 4648);
    t8 = (t1 + 56U);
    t9 = *((char **)t8);
    t19 = (t9 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t2, 32U);
    xsi_driver_first_trans_fast_port(t1);

LAB3:    t1 = (t0 + 4376);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(73, ng0);
    t19 = (t0 + 2472U);
    t20 = *((char **)t19);
    t19 = (t0 + 7072U);
    t21 = ieee_p_2592010699_sub_1837678034_503743352(IEEE_P_2592010699, t18, t20, t19);
    t22 = (t0 + 7355);
    t25 = (t24 + 0U);
    t26 = (t25 + 0U);
    *((int *)t26) = 0;
    t26 = (t25 + 4U);
    *((int *)t26) = 31;
    t26 = (t25 + 8U);
    *((int *)t26) = 1;
    t27 = (31 - 0);
    t28 = (t27 * 1);
    t28 = (t28 + 1);
    t26 = (t25 + 12U);
    *((unsigned int *)t26) = t28;
    t26 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t17, t21, t18, t22, t24);
    t29 = (t17 + 12U);
    t28 = *((unsigned int *)t29);
    t30 = (1U * t28);
    t31 = (32U != t30);
    if (t31 == 1)
        goto LAB5;

LAB6:    t32 = (t0 + 4584);
    t33 = (t32 + 56U);
    t34 = *((char **)t33);
    t35 = (t34 + 56U);
    t36 = *((char **)t35);
    memcpy(t36, t26, 32U);
    xsi_driver_first_trans_fast_port(t32);
    xsi_set_current_line(74, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t1 = (t0 + 7072U);
    t8 = ieee_p_2592010699_sub_1837678034_503743352(IEEE_P_2592010699, t18, t2, t1);
    t9 = (t0 + 7387);
    t20 = (t24 + 0U);
    t21 = (t20 + 0U);
    *((int *)t21) = 0;
    t21 = (t20 + 4U);
    *((int *)t21) = 31;
    t21 = (t20 + 8U);
    *((int *)t21) = 1;
    t3 = (31 - 0);
    t4 = (t3 * 1);
    t4 = (t4 + 1);
    t21 = (t20 + 12U);
    *((unsigned int *)t21) = t4;
    t21 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t17, t8, t18, t9, t24);
    t22 = (t17 + 12U);
    t4 = *((unsigned int *)t22);
    t5 = (1U * t4);
    t7 = (32U != t5);
    if (t7 == 1)
        goto LAB7;

LAB8:    t23 = (t0 + 4648);
    t25 = (t23 + 56U);
    t26 = *((char **)t25);
    t29 = (t26 + 56U);
    t32 = *((char **)t29);
    memcpy(t32, t21, 32U);
    xsi_driver_first_trans_fast_port(t23);
    goto LAB3;

LAB5:    xsi_size_not_matching(32U, t30, 0);
    goto LAB6;

LAB7:    xsi_size_not_matching(32U, t5, 0);
    goto LAB8;

}


extern void work_a_2453160712_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2453160712_3212880686_p_0,(void *)work_a_2453160712_3212880686_p_1};
	xsi_register_didat("work_a_2453160712_3212880686", "isim/testbench_processor_isim_beh.exe.sim/work/a_2453160712_3212880686.didat");
	xsi_register_executes(pe);
}
