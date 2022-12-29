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
static const char *ng0 = "D:/vhdl_github_2/cop2/Processor_ISE/alu_control.vhd";



static void work_a_3044219816_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    int t15;
    int t16;
    int t17;
    char *t18;
    int t20;
    char *t21;
    int t23;
    char *t24;
    int t26;
    char *t27;
    int t29;
    char *t30;
    int t32;
    char *t33;
    int t35;
    char *t36;
    int t38;
    char *t39;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;

LAB0:    xsi_set_current_line(44, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4988);
    t4 = 1;
    if (2U == 2U)
        goto LAB5;

LAB6:    t4 = 0;

LAB7:    if (t4 != 0)
        goto LAB2;

LAB4:
LAB3:    xsi_set_current_line(49, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4994);
    t4 = 1;
    if (2U == 2U)
        goto LAB14;

LAB15:    t4 = 0;

LAB16:    if (t4 != 0)
        goto LAB11;

LAB13:
LAB12:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 5000);
    t4 = 1;
    if (2U == 2U)
        goto LAB23;

LAB24:    t4 = 0;

LAB25:    if (t4 != 0)
        goto LAB20;

LAB22:
LAB21:    xsi_set_current_line(109, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 5106);
    t4 = 1;
    if (2U == 2U)
        goto LAB55;

LAB56:    t4 = 0;

LAB57:    if (t4 != 0)
        goto LAB52;

LAB54:
LAB53:    t1 = (t0 + 2992);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(45, ng0);
    t8 = (t0 + 4990);
    t10 = (t0 + 3072);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t8, 4U);
    xsi_driver_first_trans_fast_port(t10);
    xsi_set_current_line(46, ng0);
    t1 = (t0 + 3136);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = 1;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

LAB5:    t5 = 0;

LAB8:    if (t5 < 2U)
        goto LAB9;
    else
        goto LAB7;

LAB9:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB6;

LAB10:    t5 = (t5 + 1);
    goto LAB8;

LAB11:    xsi_set_current_line(50, ng0);
    t8 = (t0 + 4996);
    t10 = (t0 + 3072);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t8, 4U);
    xsi_driver_first_trans_fast_port(t10);
    xsi_set_current_line(51, ng0);
    t1 = (t0 + 3136);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = 1;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB12;

LAB14:    t5 = 0;

LAB17:    if (t5 < 2U)
        goto LAB18;
    else
        goto LAB16;

LAB18:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB15;

LAB19:    t5 = (t5 + 1);
    goto LAB17;

LAB20:    xsi_set_current_line(55, ng0);
    t8 = (t0 + 1192U);
    t9 = *((char **)t8);
    t8 = (t0 + 5002);
    t15 = xsi_mem_cmp(t8, t9, 6U);
    if (t15 == 1)
        goto LAB30;

LAB41:    t11 = (t0 + 5008);
    t16 = xsi_mem_cmp(t11, t9, 6U);
    if (t16 == 1)
        goto LAB31;

LAB42:    t13 = (t0 + 5014);
    t17 = xsi_mem_cmp(t13, t9, 6U);
    if (t17 == 1)
        goto LAB32;

LAB43:    t18 = (t0 + 5020);
    t20 = xsi_mem_cmp(t18, t9, 6U);
    if (t20 == 1)
        goto LAB33;

LAB44:    t21 = (t0 + 5026);
    t23 = xsi_mem_cmp(t21, t9, 6U);
    if (t23 == 1)
        goto LAB34;

LAB45:    t24 = (t0 + 5032);
    t26 = xsi_mem_cmp(t24, t9, 6U);
    if (t26 == 1)
        goto LAB35;

LAB46:    t27 = (t0 + 5038);
    t29 = xsi_mem_cmp(t27, t9, 6U);
    if (t29 == 1)
        goto LAB36;

LAB47:    t30 = (t0 + 5044);
    t32 = xsi_mem_cmp(t30, t9, 6U);
    if (t32 == 1)
        goto LAB37;

LAB48:    t33 = (t0 + 5050);
    t35 = xsi_mem_cmp(t33, t9, 6U);
    if (t35 == 1)
        goto LAB38;

LAB49:    t36 = (t0 + 5056);
    t38 = xsi_mem_cmp(t36, t9, 6U);
    if (t38 == 1)
        goto LAB39;

LAB50:
LAB40:    xsi_set_current_line(102, ng0);
    t1 = (t0 + 5102);
    t3 = (t0 + 3072);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(103, ng0);
    t1 = (t0 + 3136);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = 1;
    xsi_driver_first_trans_fast_port(t1);

LAB29:    goto LAB21;

LAB23:    t5 = 0;

LAB26:    if (t5 < 2U)
        goto LAB27;
    else
        goto LAB25;

LAB27:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB24;

LAB28:    t5 = (t5 + 1);
    goto LAB26;

LAB30:    xsi_set_current_line(59, ng0);
    t39 = (t0 + 5062);
    t41 = (t0 + 3072);
    t42 = (t41 + 56U);
    t43 = *((char **)t42);
    t44 = (t43 + 56U);
    t45 = *((char **)t44);
    memcpy(t45, t39, 4U);
    xsi_driver_first_trans_fast_port(t41);
    xsi_set_current_line(60, ng0);
    t1 = (t0 + 3136);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = 1;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB29;

LAB31:    xsi_set_current_line(63, ng0);
    t1 = (t0 + 5066);
    t3 = (t0 + 3072);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(64, ng0);
    t1 = (t0 + 3136);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = 1;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB29;

LAB32:    xsi_set_current_line(67, ng0);
    t1 = (t0 + 5070);
    t3 = (t0 + 3072);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(68, ng0);
    t1 = (t0 + 3136);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = 1;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB29;

LAB33:    xsi_set_current_line(71, ng0);
    t1 = (t0 + 5074);
    t3 = (t0 + 3072);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(72, ng0);
    t1 = (t0 + 3136);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = 1;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB29;

LAB34:    xsi_set_current_line(75, ng0);
    t1 = (t0 + 5078);
    t3 = (t0 + 3072);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(76, ng0);
    t1 = (t0 + 3136);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = 1;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB29;

LAB35:    xsi_set_current_line(81, ng0);
    t1 = (t0 + 5082);
    t3 = (t0 + 3072);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(82, ng0);
    t1 = (t0 + 3136);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = 33;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB29;

LAB36:    xsi_set_current_line(85, ng0);
    t1 = (t0 + 5086);
    t3 = (t0 + 3072);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(86, ng0);
    t1 = (t0 + 3136);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = 33;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB29;

LAB37:    xsi_set_current_line(90, ng0);
    t1 = (t0 + 5090);
    t3 = (t0 + 3072);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(91, ng0);
    t1 = (t0 + 3136);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = 1;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB29;

LAB38:    xsi_set_current_line(94, ng0);
    t1 = (t0 + 5094);
    t3 = (t0 + 3072);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(95, ng0);
    t1 = (t0 + 3136);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = 1;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB29;

LAB39:    xsi_set_current_line(98, ng0);
    t1 = (t0 + 5098);
    t3 = (t0 + 3072);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(99, ng0);
    t1 = (t0 + 3136);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = 1;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB29;

LAB51:;
LAB52:    xsi_set_current_line(110, ng0);
    t8 = (t0 + 5108);
    t10 = (t0 + 3072);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t8, 4U);
    xsi_driver_first_trans_fast_port(t10);
    xsi_set_current_line(111, ng0);
    t1 = (t0 + 3136);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = 2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB53;

LAB55:    t5 = 0;

LAB58:    if (t5 < 2U)
        goto LAB59;
    else
        goto LAB57;

LAB59:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB56;

LAB60:    t5 = (t5 + 1);
    goto LAB58;

}


extern void work_a_3044219816_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3044219816_3212880686_p_0};
	xsi_register_didat("work_a_3044219816_3212880686", "isim/testbench_processor_isim_beh.exe.sim/work/a_3044219816_3212880686.didat");
	xsi_register_executes(pe);
}
