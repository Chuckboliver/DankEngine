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
static const char *ng0 = "C:/Users/Ken/OneDrive - KMITL/Digital System Fundamentals/githubDigitalAssign/phol/DigitalProject/debounceSwitch.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_0697610554_1516540902_p_0(char *t0)
{
    char *t1;
    unsigned char t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    char *t10;
    int t11;
    char *t12;
    int t13;
    unsigned char t14;
    char *t15;
    int t16;
    int t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;

LAB0:    xsi_set_current_line(26, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3520);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(30, ng0);
    t4 = (t0 + 1192U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t4 = (t0 + 1672U);
    t7 = *((char **)t4);
    t8 = *((unsigned char *)t7);
    t9 = (t6 != t8);
    if (t9 == 1)
        goto LAB8;

LAB9:    t3 = (unsigned char)0;

LAB10:    if (t3 != 0)
        goto LAB5;

LAB7:    t1 = (t0 + 1512U);
    t4 = *((char **)t1);
    t11 = *((int *)t4);
    t1 = (t0 + 1968U);
    t5 = *((char **)t1);
    t13 = *((int *)t5);
    t2 = (t11 == t13);
    if (t2 != 0)
        goto LAB11;

LAB12:    xsi_set_current_line(40, ng0);
    t1 = (t0 + 3616);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t7 = (t5 + 56U);
    t10 = *((char **)t7);
    *((int *)t10) = 0;
    xsi_driver_first_trans_fast(t1);

LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(31, ng0);
    t4 = (t0 + 1512U);
    t15 = *((char **)t4);
    t16 = *((int *)t15);
    t17 = (t16 + 1);
    t4 = (t0 + 3616);
    t18 = (t4 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    *((int *)t21) = t17;
    xsi_driver_first_trans_fast(t4);
    goto LAB6;

LAB8:    t4 = (t0 + 1512U);
    t10 = *((char **)t4);
    t11 = *((int *)t10);
    t4 = (t0 + 1968U);
    t12 = *((char **)t4);
    t13 = *((int *)t12);
    t14 = (t11 < t13);
    t3 = t14;
    goto LAB10;

LAB11:    xsi_set_current_line(35, ng0);
    t1 = (t0 + 1192U);
    t7 = *((char **)t1);
    t3 = *((unsigned char *)t7);
    t1 = (t0 + 3680);
    t10 = (t1 + 56U);
    t12 = *((char **)t10);
    t15 = (t12 + 56U);
    t18 = *((char **)t15);
    *((unsigned char *)t18) = t3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(36, ng0);
    t1 = (t0 + 3616);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t7 = (t5 + 56U);
    t10 = *((char **)t7);
    *((int *)t10) = 0;
    xsi_driver_first_trans_fast(t1);
    goto LAB6;

}

static void work_a_0697610554_1516540902_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(47, ng0);

LAB3:    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 3744);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 3536);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_0697610554_1516540902_init()
{
	static char *pe[] = {(void *)work_a_0697610554_1516540902_p_0,(void *)work_a_0697610554_1516540902_p_1};
	xsi_register_didat("work_a_0697610554_1516540902", "isim/mainCircuit_isim_beh.exe.sim/work/a_0697610554_1516540902.didat");
	xsi_register_executes(pe);
}
