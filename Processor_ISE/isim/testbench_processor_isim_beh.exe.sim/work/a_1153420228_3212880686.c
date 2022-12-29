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
static const char *ng0 = "D:/vhdl_github_2/cop2/Processor_ISE/Adder.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_3273497107_1035706684(char *, char *, char *, char *, char *, char *);


static void work_a_1153420228_3212880686_p_0(char *t0)
{
    char t1[16];
    char t2[16];
    char t3[16];
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;

LAB0:    xsi_set_current_line(46, ng0);

LAB3:    t4 = (t0 + 1032U);
    t5 = *((char **)t4);
    t4 = (t0 + 5100U);
    t6 = (t0 + 1192U);
    t7 = *((char **)t6);
    t6 = (t0 + 5116U);
    t8 = ieee_p_1242562249_sub_3273497107_1035706684(IEEE_P_1242562249, t3, t5, t4, t7, t6);
    t9 = (t0 + 1352U);
    t10 = *((char **)t9);
    t9 = (t0 + 5132U);
    t11 = ieee_p_1242562249_sub_3273497107_1035706684(IEEE_P_1242562249, t2, t8, t3, t10, t9);
    t12 = (t0 + 1512U);
    t13 = *((char **)t12);
    t12 = (t0 + 5148U);
    t14 = ieee_p_1242562249_sub_3273497107_1035706684(IEEE_P_1242562249, t1, t11, t2, t13, t12);
    t15 = (t0 + 3392);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t14, 64U);
    xsi_driver_first_trans_fast_port(t15);

LAB2:    t20 = (t0 + 3312);
    *((int *)t20) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_1153420228_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1153420228_3212880686_p_0};
	xsi_register_didat("work_a_1153420228_3212880686", "isim/testbench_processor_isim_beh.exe.sim/work/a_1153420228_3212880686.didat");
	xsi_register_executes(pe);
}
