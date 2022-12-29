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
static const char *ng0 = "D:/vhdl_github_2/cop2/Processor_ISE/jump_mux.vhd";
extern char *IEEE_P_2592010699;



static void work_a_3814580604_3212880686_p_0(char *t0)
{
    char t7[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t8;
    char *t9;
    char *t10;
    unsigned int t11;
    unsigned char t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;

LAB0:    xsi_set_current_line(45, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(48, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 3232);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 32U);
    xsi_driver_first_trans_fast_port(t1);

LAB3:    t1 = (t0 + 3152);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 1352U);
    t5 = *((char **)t1);
    t1 = (t0 + 1192U);
    t6 = *((char **)t1);
    t8 = ((IEEE_P_2592010699) + 4024);
    t9 = (t0 + 4940U);
    t10 = (t0 + 4924U);
    t1 = xsi_base_array_concat(t1, t7, t8, (char)97, t5, t9, (char)97, t6, t10, (char)101);
    t11 = (4U + 28U);
    t12 = (32U != t11);
    if (t12 == 1)
        goto LAB5;

LAB6:    t13 = (t0 + 3232);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t1, 32U);
    xsi_driver_first_trans_fast_port(t13);
    goto LAB3;

LAB5:    xsi_size_not_matching(32U, t11, 0);
    goto LAB6;

}


extern void work_a_3814580604_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3814580604_3212880686_p_0};
	xsi_register_didat("work_a_3814580604_3212880686", "isim/testbench_processor_isim_beh.exe.sim/work/a_3814580604_3212880686.didat");
	xsi_register_executes(pe);
}
