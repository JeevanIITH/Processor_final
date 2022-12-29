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
static const char *ng0 = "D:/vhdl_github_2/cop2/Processor_ISE/add_branch.vhd";
extern char *IEEE_P_3620187407;

char *ieee_p_3620187407_sub_767668596_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_1030971986_3212880686_p_0(char *t0)
{
    char t1[16];
    char t7[16];
    char t15[16];
    char *t2;
    char *t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    char *t8;
    char *t9;
    int t10;
    unsigned int t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    char *t16;
    char *t17;
    int t18;
    unsigned int t19;
    char *t20;
    unsigned int t21;
    unsigned char t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;

LAB0:    xsi_set_current_line(43, ng0);

LAB3:    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t4 = (31 - 31);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t2 = (t3 + t6);
    t8 = (t7 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 31;
    t9 = (t8 + 4U);
    *((int *)t9) = 0;
    t9 = (t8 + 8U);
    *((int *)t9) = -1;
    t10 = (0 - 31);
    t11 = (t10 * -1);
    t11 = (t11 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t11;
    t9 = (t0 + 1192U);
    t12 = *((char **)t9);
    t11 = (31 - 31);
    t13 = (t11 * 1U);
    t14 = (0 + t13);
    t9 = (t12 + t14);
    t16 = (t15 + 0U);
    t17 = (t16 + 0U);
    *((int *)t17) = 31;
    t17 = (t16 + 4U);
    *((int *)t17) = 0;
    t17 = (t16 + 8U);
    *((int *)t17) = -1;
    t18 = (0 - 31);
    t19 = (t18 * -1);
    t19 = (t19 + 1);
    t17 = (t16 + 12U);
    *((unsigned int *)t17) = t19;
    t17 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t1, t2, t7, t9, t15);
    t20 = (t1 + 12U);
    t19 = *((unsigned int *)t20);
    t21 = (1U * t19);
    t22 = (32U != t21);
    if (t22 == 1)
        goto LAB5;

LAB6:    t23 = (t0 + 2912);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    memcpy(t27, t17, 32U);
    xsi_driver_first_trans_fast_port(t23);

LAB2:    t28 = (t0 + 2832);
    *((int *)t28) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(32U, t21, 0);
    goto LAB6;

}


extern void work_a_1030971986_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1030971986_3212880686_p_0};
	xsi_register_didat("work_a_1030971986_3212880686", "isim/testbench_processor_isim_beh.exe.sim/work/a_1030971986_3212880686.didat");
	xsi_register_executes(pe);
}
