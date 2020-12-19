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
static const char *ng0 = "C:/Users/Ken/OneDrive - KMITL/Digital System Fundamentals/githubDigitalAssign/phol/DigitalProject/mergeData.vhd";
extern char *IEEE_P_2592010699;



static void work_a_0438452587_3212880686_p_0(char *t0)
{
    char t4[16];
    char t9[16];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    unsigned char t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    xsi_set_current_line(39, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 1032U);
    t3 = *((char **)t1);
    t5 = ((IEEE_P_2592010699) + 4024);
    t6 = (t0 + 4880U);
    t7 = (t0 + 4864U);
    t1 = xsi_base_array_concat(t1, t4, t5, (char)97, t2, t6, (char)97, t3, t7, (char)101);
    t10 = ((IEEE_P_2592010699) + 4024);
    t8 = xsi_base_array_concat(t8, t9, t10, (char)97, t1, t4, (char)99, (unsigned char)2, (char)101);
    t11 = (3U + 12U);
    t12 = (t11 + 1U);
    t13 = (16U != t12);
    if (t13 == 1)
        goto LAB2;

LAB3:    t14 = (t0 + 2912);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t8, 16U);
    xsi_driver_first_trans_fast_port(t14);
    t1 = (t0 + 2832);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_size_not_matching(16U, t12, 0);
    goto LAB3;

}


extern void work_a_0438452587_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0438452587_3212880686_p_0};
	xsi_register_didat("work_a_0438452587_3212880686", "isim/mainCircuit_isim_beh.exe.sim/work/a_0438452587_3212880686.didat");
	xsi_register_executes(pe);
}
