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

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_2592010699;
char *STD_STANDARD;
char *IEEE_P_1242562249;
char *IEEE_P_3499444699;
char *IEEE_P_3620187407;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    unisims_ver_m_00000000003510477262_2316096324_init();
    unisims_ver_m_00000000000236260522_2449448540_init();
    unisims_ver_m_00000000000074175165_3338400181_init();
    unisims_ver_m_00000000002549801008_4245414866_init();
    unisims_ver_m_00000000002123152668_0970595058_init();
    unisims_ver_m_00000000003960923341_1435897813_init();
    unisims_ver_m_00000000003425732787_3126461646_init();
    work_m_00000000001955398196_2290660552_init();
    unisims_ver_m_00000000003317509437_1759035934_init();
    unisims_ver_m_00000000002038408193_0687181977_init();
    work_m_00000000001526594895_3339036738_init();
    work_m_00000000002305782105_2433762703_init();
    unisims_ver_m_00000000001762375489_3501834183_init();
    work_m_00000000003885686058_3869433831_init();
    work_m_00000000002950533210_0255517131_init();
    work_m_00000000004208307155_2109977613_init();
    unisims_ver_m_00000000003927721830_1593237687_init();
    work_m_00000000002926715327_1832215545_init();
    work_m_00000000004067914246_3910598188_init();
    work_m_00000000004099066007_4061242119_init();
    work_m_00000000004134447467_2073120511_init();
    ieee_p_2592010699_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    ieee_p_1242562249_init();
    work_a_2235372505_3212880686_init();
    work_a_0010019120_3212880686_init();
    work_a_0697610554_1516540902_init();
    work_a_3081432087_3212880686_init();
    work_a_0188886071_3212880686_init();
    work_a_0438452587_3212880686_init();
    work_a_0907578655_3212880686_init();
    work_a_2229699705_3212880686_init();
    work_a_2150058204_1566020785_init();
    work_a_0792087976_3212880686_init();
    work_a_2270979049_3212880686_init();
    work_a_3892238503_3212880686_init();
    work_a_1564751073_3212880686_init();
    work_a_1780846610_3212880686_init();
    work_a_1583844068_3212880686_init();


    xsi_register_tops("work_m_00000000004099066007_4061242119");
    xsi_register_tops("work_m_00000000004134447467_2073120511");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");

    return xsi_run_simulation(argc, argv);

}
