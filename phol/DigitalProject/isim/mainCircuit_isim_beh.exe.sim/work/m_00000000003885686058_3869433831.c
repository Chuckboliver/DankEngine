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
static const char *ng0 = "C:/Users/Ken/OneDrive - KMITL/Digital System Fundamentals/githubDigitalAssign/phol/DigitalProject/mainCircuit.vf";
static unsigned int ng1[] = {0U, 0U};



static void Always_81_0(char *t0)
{
    char t16[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t17;

LAB0:    t1 = (t0 + 3808U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(81, ng0);
    t2 = (t0 + 4128);
    *((int *)t2) = 1;
    t3 = (t0 + 3840);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(82, ng0);

LAB5:    xsi_set_current_line(83, ng0);
    t4 = (t0 + 1368U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(85, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB9;

LAB10:
LAB11:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(84, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 2408);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 1, 0LL);
    t13 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t13, t11, 1, 0, 1, 0LL);
    t14 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t14, t11, 2, 0, 1, 0LL);
    t15 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t15, t11, 3, 0, 1, 0LL);
    goto LAB8;

LAB9:    xsi_set_current_line(86, ng0);
    t4 = (t0 + 1528U);
    t5 = *((char **)t4);
    t4 = (t0 + 1688U);
    t11 = *((char **)t4);
    t4 = (t0 + 1848U);
    t12 = *((char **)t4);
    t4 = (t0 + 2008U);
    t13 = *((char **)t4);
    xsi_vlogtype_concat(t16, 4, 4, 4U, t13, 1, t12, 1, t11, 1, t5, 1);
    t4 = (t0 + 2408);
    xsi_vlogvar_wait_assign_value(t4, t16, 0, 0, 1, 0LL);
    t14 = (t0 + 2568);
    xsi_vlogvar_wait_assign_value(t14, t16, 1, 0, 1, 0LL);
    t15 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t15, t16, 2, 0, 1, 0LL);
    t17 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t17, t16, 3, 0, 1, 0LL);
    goto LAB11;

}


extern void work_m_00000000003885686058_3869433831_init()
{
	static char *pe[] = {(void *)Always_81_0};
	xsi_register_didat("work_m_00000000003885686058_3869433831", "isim/mainCircuit_isim_beh.exe.sim/work/m_00000000003885686058_3869433831.didat");
	xsi_register_executes(pe);
}
