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
extern char *STD_TEXTIO;
static const char *ng1 = "mif_file";
extern char *STD_STANDARD;
extern char *IEEE_P_2592010699;
static const char *ng4 = "D:/vhdl_github_2/cop2/Processor_ISE/Register_Dot.vhd";
extern char *IEEE_P_1242562249;

int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
char *ieee_p_2592010699_sub_393209765_503743352(char *, char *, char *, char *);


char *work_a_1017912527_3212880686_sub_1260627246_3057020925(char *t1, char *t2, char *t3)
{
    char t4[328];
    char t5[24];
    char t17[16];
    char t24[32];
    char t28[32];
    char t36[256];
    char t49[16];
    char *t0;
    char *t6;
    char *t7;
    unsigned int t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t18;
    char *t19;
    int t20;
    unsigned int t21;
    char *t22;
    char *t23;
    char *t25;
    char *t26;
    char *t27;
    char *t29;
    char *t30;
    int t31;
    char *t32;
    int t33;
    char *t34;
    char *t35;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    unsigned char t43;
    char *t44;
    int t45;
    int t46;
    char *t47;
    char *t48;
    unsigned int t50;
    unsigned int t51;

LAB0:    t6 = ((STD_TEXTIO) + 3440);
    t7 = (t3 + 12U);
    t8 = *((unsigned int *)t7);
    t8 = (t8 * 1U);
    t9 = (t4 + 4U);
    t10 = xsi_create_file_variable_in_buffer(0, ng1, t6, t2, t8, 1);
    *((char **)t9) = t10;
    t11 = (t4 + 12U);
    t12 = ((STD_TEXTIO) + 3280);
    t13 = (t11 + 56U);
    *((char **)t13) = t12;
    t14 = (t11 + 40U);
    *((char **)t14) = 0;
    t15 = (t11 + 64U);
    *((int *)t15) = 1;
    t16 = (t11 + 48U);
    *((char **)t16) = 0;
    t18 = (t17 + 0U);
    t19 = (t18 + 0U);
    *((int *)t19) = 31;
    t19 = (t18 + 4U);
    *((int *)t19) = 0;
    t19 = (t18 + 8U);
    *((int *)t19) = -1;
    t20 = (0 - 31);
    t21 = (t20 * -1);
    t21 = (t21 + 1);
    t19 = (t18 + 12U);
    *((unsigned int *)t19) = t21;
    t19 = (t4 + 84U);
    t22 = ((STD_STANDARD) + 1112);
    t23 = (t19 + 88U);
    *((char **)t23) = t22;
    t25 = (t19 + 56U);
    *((char **)t25) = t24;
    xsi_type_set_default_value(t22, t24, t17);
    t26 = (t19 + 64U);
    *((char **)t26) = t17;
    t27 = (t19 + 80U);
    *((unsigned int *)t27) = 32U;
    t29 = (t28 + 0U);
    t30 = (t29 + 0U);
    *((int *)t30) = 0;
    t30 = (t29 + 4U);
    *((int *)t30) = 7;
    t30 = (t29 + 8U);
    *((int *)t30) = 1;
    t31 = (7 - 0);
    t21 = (t31 * 1);
    t21 = (t21 + 1);
    t30 = (t29 + 12U);
    *((unsigned int *)t30) = t21;
    t30 = (t28 + 16U);
    t32 = (t30 + 0U);
    *((int *)t32) = 31;
    t32 = (t30 + 4U);
    *((int *)t32) = 0;
    t32 = (t30 + 8U);
    *((int *)t32) = -1;
    t33 = (0 - 31);
    t21 = (t33 * -1);
    t21 = (t21 + 1);
    t32 = (t30 + 12U);
    *((unsigned int *)t32) = t21;
    t32 = (t4 + 204U);
    t34 = (t1 + 6088);
    t35 = (t32 + 88U);
    *((char **)t35) = t34;
    t37 = (t32 + 56U);
    *((char **)t37) = t36;
    xsi_type_set_default_value(t34, t36, 0);
    t38 = (t32 + 64U);
    t39 = (t34 + 80U);
    t40 = *((char **)t39);
    *((char **)t38) = t40;
    t41 = (t32 + 80U);
    *((unsigned int *)t41) = 256U;
    t42 = (t5 + 4U);
    t43 = (t2 != 0);
    if (t43 == 1)
        goto LAB3;

LAB2:    t44 = (t5 + 12U);
    *((char **)t44) = t3;
    t45 = 0;
    t46 = 7;

LAB4:    if (t45 <= t46)
        goto LAB5;

LAB7:    t6 = (t32 + 56U);
    t7 = *((char **)t6);
    t43 = (256U != 256U);
    if (t43 == 1)
        goto LAB9;

LAB10:    t0 = xsi_get_transient_memory(256U);
    memcpy(t0, t7, 256U);

LAB1:    xsi_access_variable_delete(t11);
    t6 = (t4 + 4U);
    t7 = *((char **)t6);
    xsi_delete_file_variable(t7);
    return t0;
LAB3:    *((char **)t42) = t2;
    goto LAB2;

LAB5:    t47 = (t4 + 4U);
    t48 = *((char **)t47);
    std_textio_readline(STD_TEXTIO, (char *)0, t48, t11);
    t6 = (t19 + 56U);
    t7 = *((char **)t6);
    std_textio_read4(STD_TEXTIO, (char *)0, t11, t7, t17);
    t6 = (t19 + 56U);
    t7 = *((char **)t6);
    t6 = ieee_p_2592010699_sub_393209765_503743352(IEEE_P_2592010699, t49, t7, t17);
    t9 = (t32 + 56U);
    t10 = *((char **)t9);
    t20 = (t45 - 0);
    t8 = (t20 * 1);
    xsi_vhdl_check_range_of_index(0, 7, 1, t45);
    t21 = (32U * t8);
    t50 = (0 + t21);
    t9 = (t10 + t50);
    t12 = (t49 + 12U);
    t51 = *((unsigned int *)t12);
    t51 = (t51 * 1U);
    memcpy(t9, t6, t51);

LAB6:    if (t45 == t46)
        goto LAB7;

LAB8:    t20 = (t45 + 1);
    t45 = t20;
    goto LAB4;

LAB9:    xsi_size_not_matching(256U, 256U, 0);
    goto LAB10;

LAB11:;
}

static void work_a_1017912527_3212880686_p_0(char *t0)
{
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    char *t9;
    int t10;
    int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;

LAB0:    xsi_set_current_line(74, ng4);
    t2 = (t0 + 992U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t2, 0U, 0U);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 4984);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(75, ng4);
    t4 = (t0 + 1192U);
    t8 = *((char **)t4);
    t4 = (t0 + 2952U);
    t9 = *((char **)t4);
    t4 = (t0 + 8644U);
    t10 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t9, t4);
    t11 = (t10 - 0);
    t12 = (t11 * 1);
    t13 = (32U * t12);
    t14 = (0U + t13);
    t15 = (t0 + 5080);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t8, 32U);
    xsi_driver_first_trans_delta(t15, t14, 32U, 0LL);
    goto LAB3;

LAB5:    t4 = (t0 + 1512U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

}

static void work_a_1017912527_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    xsi_set_current_line(80, ng4);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(90, ng4);
    t1 = (t0 + 9011);
    t5 = (t0 + 5144);
    t10 = (t5 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 32U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(91, ng4);
    t1 = (t0 + 9043);
    t5 = (t0 + 5208);
    t10 = (t5 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 32U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(92, ng4);
    t1 = (t0 + 9075);
    t5 = (t0 + 5272);
    t10 = (t5 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 32U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(93, ng4);
    t1 = (t0 + 9107);
    t5 = (t0 + 5336);
    t10 = (t5 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 32U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(94, ng4);
    t1 = (t0 + 9139);
    t5 = (t0 + 5400);
    t10 = (t5 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 32U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(95, ng4);
    t1 = (t0 + 9171);
    t5 = (t0 + 5464);
    t10 = (t5 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 32U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(96, ng4);
    t1 = (t0 + 9203);
    t5 = (t0 + 5528);
    t10 = (t5 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 32U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(97, ng4);
    t1 = (t0 + 9235);
    t5 = (t0 + 5592);
    t10 = (t5 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 32U);
    xsi_driver_first_trans_fast_port(t5);

LAB3:    t1 = (t0 + 5000);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(81, ng4);
    t1 = (t0 + 3112U);
    t5 = *((char **)t1);
    t6 = (0 - 0);
    t7 = (t6 * 1);
    t8 = (32U * t7);
    t9 = (0 + t8);
    t1 = (t5 + t9);
    t10 = (t0 + 5144);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t1, 32U);
    xsi_driver_first_trans_fast_port(t10);
    xsi_set_current_line(82, ng4);
    t1 = (t0 + 3112U);
    t2 = *((char **)t1);
    t6 = (1 - 0);
    t7 = (t6 * 1);
    t8 = (32U * t7);
    t9 = (0 + t8);
    t1 = (t2 + t9);
    t5 = (t0 + 5208);
    t10 = (t5 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 32U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(83, ng4);
    t1 = (t0 + 3112U);
    t2 = *((char **)t1);
    t6 = (2 - 0);
    t7 = (t6 * 1);
    t8 = (32U * t7);
    t9 = (0 + t8);
    t1 = (t2 + t9);
    t5 = (t0 + 5272);
    t10 = (t5 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 32U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(84, ng4);
    t1 = (t0 + 3112U);
    t2 = *((char **)t1);
    t6 = (3 - 0);
    t7 = (t6 * 1);
    t8 = (32U * t7);
    t9 = (0 + t8);
    t1 = (t2 + t9);
    t5 = (t0 + 5336);
    t10 = (t5 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 32U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(85, ng4);
    t1 = (t0 + 3112U);
    t2 = *((char **)t1);
    t6 = (4 - 0);
    t7 = (t6 * 1);
    t8 = (32U * t7);
    t9 = (0 + t8);
    t1 = (t2 + t9);
    t5 = (t0 + 5400);
    t10 = (t5 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 32U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(86, ng4);
    t1 = (t0 + 3112U);
    t2 = *((char **)t1);
    t6 = (5 - 0);
    t7 = (t6 * 1);
    t8 = (32U * t7);
    t9 = (0 + t8);
    t1 = (t2 + t9);
    t5 = (t0 + 5464);
    t10 = (t5 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 32U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(87, ng4);
    t1 = (t0 + 3112U);
    t2 = *((char **)t1);
    t6 = (6 - 0);
    t7 = (t6 * 1);
    t8 = (32U * t7);
    t9 = (0 + t8);
    t1 = (t2 + t9);
    t5 = (t0 + 5528);
    t10 = (t5 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 32U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(88, ng4);
    t1 = (t0 + 3112U);
    t2 = *((char **)t1);
    t6 = (7 - 0);
    t7 = (t6 * 1);
    t8 = (32U * t7);
    t9 = (0 + t8);
    t1 = (t2 + t9);
    t5 = (t0 + 5592);
    t10 = (t5 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 32U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB3;

}


extern void work_a_1017912527_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1017912527_3212880686_p_0,(void *)work_a_1017912527_3212880686_p_1};
	static char *se[] = {(void *)work_a_1017912527_3212880686_sub_1260627246_3057020925};
	xsi_register_didat("work_a_1017912527_3212880686", "isim/testbench_processor_isim_beh.exe.sim/work/a_1017912527_3212880686.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}
