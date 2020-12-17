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
static const char *ng0 = "C:/Users/Ken/OneDrive - KMITL/Digital System Fundamentals/githubDigitalAssign/phol/DigitalProject/mux71.vhd";
extern char *IEEE_P_2592010699;



static void work_a_3081432087_3212880686_p_0(char *t0)
{
    char t25[16];
    char t27[16];
    char *t1;
    char *t2;
    char *t3;
    int t4;
    char *t5;
    char *t6;
    int t7;
    char *t8;
    char *t9;
    int t10;
    char *t11;
    char *t12;
    int t13;
    char *t14;
    char *t15;
    int t16;
    char *t17;
    int t19;
    char *t20;
    char *t21;
    unsigned char t22;
    char *t24;
    char *t26;
    char *t28;
    char *t29;
    int t30;
    unsigned int t31;
    unsigned char t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;

LAB0:    xsi_set_current_line(44, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t1 = (t0 + 6371);
    t4 = xsi_mem_cmp(t1, t2, 3U);
    if (t4 == 1)
        goto LAB3;

LAB10:    t5 = (t0 + 6374);
    t7 = xsi_mem_cmp(t5, t2, 3U);
    if (t7 == 1)
        goto LAB4;

LAB11:    t8 = (t0 + 6377);
    t10 = xsi_mem_cmp(t8, t2, 3U);
    if (t10 == 1)
        goto LAB5;

LAB12:    t11 = (t0 + 6380);
    t13 = xsi_mem_cmp(t11, t2, 3U);
    if (t13 == 1)
        goto LAB6;

LAB13:    t14 = (t0 + 6383);
    t16 = xsi_mem_cmp(t14, t2, 3U);
    if (t16 == 1)
        goto LAB7;

LAB14:    t17 = (t0 + 6386);
    t19 = xsi_mem_cmp(t17, t2, 3U);
    if (t19 == 1)
        goto LAB8;

LAB15:
LAB9:    xsi_set_current_line(51, ng0);
    t1 = (t0 + 6441);
    t3 = (t0 + 3712);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 12U);
    xsi_driver_first_trans_fast_port(t3);

LAB2:    t1 = (t0 + 3632);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(45, ng0);
    t20 = (t0 + 1032U);
    t21 = *((char **)t20);
    t22 = *((unsigned char *)t21);
    t20 = (t0 + 6389);
    t26 = ((IEEE_P_2592010699) + 4024);
    t28 = (t27 + 0U);
    t29 = (t28 + 0U);
    *((int *)t29) = 0;
    t29 = (t28 + 4U);
    *((int *)t29) = 10;
    t29 = (t28 + 8U);
    *((int *)t29) = 1;
    t30 = (10 - 0);
    t31 = (t30 * 1);
    t31 = (t31 + 1);
    t29 = (t28 + 12U);
    *((unsigned int *)t29) = t31;
    t24 = xsi_base_array_concat(t24, t25, t26, (char)99, t22, (char)97, t20, t27, (char)101);
    t31 = (1U + 11U);
    t32 = (12U != t31);
    if (t32 == 1)
        goto LAB17;

LAB18:    t29 = (t0 + 3712);
    t33 = (t29 + 56U);
    t34 = *((char **)t33);
    t35 = (t34 + 56U);
    t36 = *((char **)t35);
    memcpy(t36, t24, 12U);
    xsi_driver_first_trans_fast_port(t29);
    goto LAB2;

LAB4:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t22 = *((unsigned char *)t2);
    t1 = (t0 + 6400);
    t6 = ((IEEE_P_2592010699) + 4024);
    t8 = (t27 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 0;
    t9 = (t8 + 4U);
    *((int *)t9) = 10;
    t9 = (t8 + 8U);
    *((int *)t9) = 1;
    t4 = (10 - 0);
    t31 = (t4 * 1);
    t31 = (t31 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t31;
    t5 = xsi_base_array_concat(t5, t25, t6, (char)99, t22, (char)97, t1, t27, (char)101);
    t31 = (1U + 11U);
    t32 = (12U != t31);
    if (t32 == 1)
        goto LAB19;

LAB20:    t9 = (t0 + 3712);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t5, 12U);
    xsi_driver_first_trans_fast_port(t9);
    goto LAB2;

LAB5:    xsi_set_current_line(47, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 6411);
    t6 = ((IEEE_P_2592010699) + 4024);
    t8 = (t0 + 6260U);
    t9 = (t27 + 0U);
    t11 = (t9 + 0U);
    *((int *)t11) = 0;
    t11 = (t9 + 4U);
    *((int *)t11) = 8;
    t11 = (t9 + 8U);
    *((int *)t11) = 1;
    t4 = (8 - 0);
    t31 = (t4 * 1);
    t31 = (t31 + 1);
    t11 = (t9 + 12U);
    *((unsigned int *)t11) = t31;
    t5 = xsi_base_array_concat(t5, t25, t6, (char)97, t2, t8, (char)97, t1, t27, (char)101);
    t31 = (3U + 9U);
    t22 = (12U != t31);
    if (t22 == 1)
        goto LAB21;

LAB22:    t11 = (t0 + 3712);
    t12 = (t11 + 56U);
    t14 = *((char **)t12);
    t15 = (t14 + 56U);
    t17 = *((char **)t15);
    memcpy(t17, t5, 12U);
    xsi_driver_first_trans_fast_port(t11);
    goto LAB2;

LAB6:    xsi_set_current_line(48, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t1 = (t0 + 3712);
    t3 = (t1 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t8 = *((char **)t6);
    memcpy(t8, t2, 12U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB7:    xsi_set_current_line(49, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 6420);
    t6 = ((IEEE_P_2592010699) + 4024);
    t8 = (t0 + 6292U);
    t9 = (t27 + 0U);
    t11 = (t9 + 0U);
    *((int *)t11) = 0;
    t11 = (t9 + 4U);
    *((int *)t11) = 9;
    t11 = (t9 + 8U);
    *((int *)t11) = 1;
    t4 = (9 - 0);
    t31 = (t4 * 1);
    t31 = (t31 + 1);
    t11 = (t9 + 12U);
    *((unsigned int *)t11) = t31;
    t5 = xsi_base_array_concat(t5, t25, t6, (char)97, t2, t8, (char)97, t1, t27, (char)101);
    t31 = (2U + 10U);
    t22 = (12U != t31);
    if (t22 == 1)
        goto LAB23;

LAB24:    t11 = (t0 + 3712);
    t12 = (t11 + 56U);
    t14 = *((char **)t12);
    t15 = (t14 + 56U);
    t17 = *((char **)t15);
    memcpy(t17, t5, 12U);
    xsi_driver_first_trans_fast_port(t11);
    goto LAB2;

LAB8:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t22 = *((unsigned char *)t2);
    t1 = (t0 + 6430);
    t6 = ((IEEE_P_2592010699) + 4024);
    t8 = (t27 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 0;
    t9 = (t8 + 4U);
    *((int *)t9) = 10;
    t9 = (t8 + 8U);
    *((int *)t9) = 1;
    t4 = (10 - 0);
    t31 = (t4 * 1);
    t31 = (t31 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t31;
    t5 = xsi_base_array_concat(t5, t25, t6, (char)99, t22, (char)97, t1, t27, (char)101);
    t31 = (1U + 11U);
    t32 = (12U != t31);
    if (t32 == 1)
        goto LAB25;

LAB26:    t9 = (t0 + 3712);
    t11 = (t9 + 56U);
    t12 = *((char **)t11);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t5, 12U);
    xsi_driver_first_trans_fast_port(t9);
    goto LAB2;

LAB16:;
LAB17:    xsi_size_not_matching(12U, t31, 0);
    goto LAB18;

LAB19:    xsi_size_not_matching(12U, t31, 0);
    goto LAB20;

LAB21:    xsi_size_not_matching(12U, t31, 0);
    goto LAB22;

LAB23:    xsi_size_not_matching(12U, t31, 0);
    goto LAB24;

LAB25:    xsi_size_not_matching(12U, t31, 0);
    goto LAB26;

}


extern void work_a_3081432087_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3081432087_3212880686_p_0};
	xsi_register_didat("work_a_3081432087_3212880686", "isim/mainCircuit_isim_beh.exe.sim/work/a_3081432087_3212880686.didat");
	xsi_register_executes(pe);
}
