<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk_P123" />
        <signal name="tx_P98" />
        <signal name="rx_P97" />
        <signal name="seg7_FPGA(6:0)" />
        <signal name="common_seg_FPGA(3:0)" />
        <signal name="error_LED(1:0)" />
        <signal name="promote_LED(3:0)" />
        <signal name="whoWin_P88_P92(1:0)" />
        <signal name="winTypeP80_P81(1:0)" />
        <signal name="ng_SW_P121" />
        <signal name="cs_SW_P1_P142(1:0)" />
        <signal name="up_down_P140_P138(1:0)" />
        <signal name="alpha_mv_P5toP23(7:0)" />
        <signal name="num_mv_P6toP24(7:0)" />
        <signal name="promote_sw(3:0)" />
        <signal name="XLXN_43(3:0)" />
        <signal name="XLXN_44(15:0)" />
        <signal name="L7_P67" />
        <signal name="L2_L1_P80_P81(1:0)" />
        <signal name="seg7_setlevel_alt(6:0)" />
        <signal name="L0_P82" />
        <port polarity="Input" name="clk_P123" />
        <port polarity="Output" name="tx_P98" />
        <port polarity="Input" name="rx_P97" />
        <port polarity="Output" name="seg7_FPGA(6:0)" />
        <port polarity="Output" name="common_seg_FPGA(3:0)" />
        <port polarity="Output" name="error_LED(1:0)" />
        <port polarity="Output" name="promote_LED(3:0)" />
        <port polarity="Output" name="whoWin_P88_P92(1:0)" />
        <port polarity="Output" name="winTypeP80_P81(1:0)" />
        <port polarity="Input" name="ng_SW_P121" />
        <port polarity="Input" name="cs_SW_P1_P142(1:0)" />
        <port polarity="Input" name="up_down_P140_P138(1:0)" />
        <port polarity="Input" name="alpha_mv_P5toP23(7:0)" />
        <port polarity="Input" name="num_mv_P6toP24(7:0)" />
        <port polarity="Input" name="promote_sw(3:0)" />
        <port polarity="Output" name="L7_P67" />
        <port polarity="Output" name="L2_L1_P80_P81(1:0)" />
        <port polarity="Output" name="seg7_setlevel_alt(6:0)" />
        <port polarity="Output" name="L0_P82" />
        <blockdef name="rx_To_Display">
            <timestamp>2020-12-17T6:38:1</timestamp>
            <rect width="608" x="64" y="-384" height="384" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="736" y1="-288" y2="-288" x1="672" />
            <rect width="64" x="672" y="-300" height="24" />
            <line x2="736" y1="-32" y2="-32" x1="672" />
            <rect width="64" x="672" y="-44" height="24" />
            <line x2="736" y1="-160" y2="-160" x1="672" />
            <rect width="64" x="672" y="-172" height="24" />
            <line x2="736" y1="-224" y2="-224" x1="672" />
            <rect width="64" x="672" y="-236" height="24" />
            <line x2="736" y1="-96" y2="-96" x1="672" />
            <rect width="64" x="672" y="-108" height="24" />
            <line x2="736" y1="-352" y2="-352" x1="672" />
            <rect width="64" x="672" y="-364" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
        </blockdef>
        <blockdef name="serial_gen">
            <timestamp>2020-12-17T10:34:52</timestamp>
            <rect width="304" x="64" y="-384" height="384" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-192" y2="-192" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="432" y1="-352" y2="-352" x1="368" />
        </blockdef>
        <blockdef name="addHeader">
            <timestamp>2020-12-17T10:57:37</timestamp>
            <line x2="592" y1="352" y2="352" x1="528" />
            <rect width="64" x="0" y="20" height="24" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <rect width="64" x="0" y="84" height="24" />
            <line x2="0" y1="96" y2="96" x1="64" />
            <rect width="64" x="0" y="148" height="24" />
            <line x2="0" y1="160" y2="160" x1="64" />
            <line x2="592" y1="96" y2="96" x1="528" />
            <rect width="64" x="528" y="148" height="24" />
            <line x2="592" y1="160" y2="160" x1="528" />
            <rect width="64" x="528" y="212" height="24" />
            <line x2="592" y1="224" y2="224" x1="528" />
            <rect width="64" x="528" y="276" height="24" />
            <line x2="592" y1="288" y2="288" x1="528" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="464" x="64" y="-512" height="896" />
        </blockdef>
        <block symbolname="rx_To_Display" name="XLXI_1">
            <blockpin signalname="clk_P123" name="clk_P123" />
            <blockpin signalname="common_seg_FPGA(3:0)" name="common_7seg_FPGA(3:0)" />
            <blockpin signalname="winTypeP80_P81(1:0)" name="L2L1_P80P81(1:0)" />
            <blockpin signalname="promote_LED(3:0)" name="L5L4L3_P75_P78_P79(3:0)" />
            <blockpin signalname="error_LED(1:0)" name="L7L6_P67P74(1:0)" />
            <blockpin signalname="whoWin_P88_P92(1:0)" name="MN_P88_P92(1:0)" />
            <blockpin signalname="seg7_FPGA(6:0)" name="move_7seg_FPGA(6:0)" />
            <blockpin signalname="ng_SW_P121" name="rx_clear_endgame" />
            <blockpin signalname="ng_SW_P121" name="rx_clear_error" />
            <blockpin signalname="ng_SW_P121" name="rx_clear_move" />
            <blockpin signalname="ng_SW_P121" name="rx_clear_promote" />
            <blockpin signalname="rx_P97" name="rx_P97" />
        </block>
        <block symbolname="serial_gen" name="XLXI_7">
            <blockpin signalname="L7_P67" name="start" />
            <blockpin signalname="clk_P123" name="clock" />
            <blockpin signalname="XLXN_44(15:0)" name="data(15:0)" />
            <blockpin signalname="tx_P98" name="tx" />
        </block>
        <block symbolname="addHeader" name="XLXI_8">
            <blockpin signalname="ng_SW_P121" name="newgame_switch" />
            <blockpin signalname="cs_SW_P1_P142(1:0)" name="choose_side_switch(1:0)" />
            <blockpin signalname="up_down_P140_P138(1:0)" name="set_level_switch(1:0)" />
            <blockpin signalname="alpha_mv_P5toP23(7:0)" name="alp(7:0)" />
            <blockpin signalname="num_mv_P6toP24(7:0)" name="num(7:0)" />
            <blockpin signalname="promote_sw(3:0)" name="piece_switch(3:0)" />
            <blockpin signalname="L0_P82" name="debug_led" />
            <blockpin signalname="L7_P67" name="trigger" />
            <blockpin signalname="XLXN_44(15:0)" name="data(15:0)" />
            <blockpin signalname="L2_L1_P80_P81(1:0)" name="choose_side_LED(1:0)" />
            <blockpin signalname="seg7_setlevel_alt(6:0)" name="set_level_LED(6:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7040" height="5440">
        <instance x="5472" y="2544" name="XLXI_1" orien="R0">
        </instance>
        <iomarker fontsize="28" x="2080" y="2144" name="ng_SW_P121" orien="R180" />
        <branch name="clk_P123">
            <wire x2="4336" y1="2336" y2="2336" x1="4320" />
            <wire x2="4352" y1="2336" y2="2336" x1="4336" />
            <wire x2="4336" y1="2336" y2="2592" x1="4336" />
            <wire x2="4848" y1="2592" y2="2592" x1="4336" />
            <wire x2="4848" y1="2448" y2="2592" x1="4848" />
            <wire x2="5472" y1="2448" y2="2448" x1="4848" />
        </branch>
        <iomarker fontsize="28" x="4320" y="2336" name="clk_P123" orien="R180" />
        <branch name="tx_P98">
            <wire x2="4816" y1="2176" y2="2176" x1="4784" />
        </branch>
        <branch name="rx_P97">
            <wire x2="5472" y1="2512" y2="2512" x1="5440" />
        </branch>
        <iomarker fontsize="28" x="5440" y="2512" name="rx_P97" orien="R180" />
        <branch name="seg7_FPGA(6:0)">
            <wire x2="6240" y1="2192" y2="2192" x1="6208" />
        </branch>
        <iomarker fontsize="28" x="6240" y="2192" name="seg7_FPGA(6:0)" orien="R0" />
        <branch name="common_seg_FPGA(3:0)">
            <wire x2="6240" y1="2256" y2="2256" x1="6208" />
        </branch>
        <iomarker fontsize="28" x="6240" y="2256" name="common_seg_FPGA(3:0)" orien="R0" />
        <branch name="error_LED(1:0)">
            <wire x2="6240" y1="2320" y2="2320" x1="6208" />
        </branch>
        <iomarker fontsize="28" x="6240" y="2320" name="error_LED(1:0)" orien="R0" />
        <branch name="promote_LED(3:0)">
            <wire x2="6240" y1="2384" y2="2384" x1="6208" />
        </branch>
        <iomarker fontsize="28" x="6240" y="2384" name="promote_LED(3:0)" orien="R0" />
        <branch name="whoWin_P88_P92(1:0)">
            <wire x2="6240" y1="2448" y2="2448" x1="6208" />
        </branch>
        <iomarker fontsize="28" x="6240" y="2448" name="whoWin_P88_P92(1:0)" orien="R0" />
        <branch name="winTypeP80_P81(1:0)">
            <wire x2="6240" y1="2512" y2="2512" x1="6208" />
        </branch>
        <iomarker fontsize="28" x="6240" y="2512" name="winTypeP80_P81(1:0)" orien="R0" />
        <branch name="ng_SW_P121">
            <wire x2="2096" y1="2144" y2="2144" x1="2080" />
            <wire x2="2208" y1="2144" y2="2144" x1="2096" />
            <wire x2="2208" y1="2144" y2="2800" x1="2208" />
            <wire x2="2320" y1="2800" y2="2800" x1="2208" />
            <wire x2="2096" y1="1840" y2="2144" x1="2096" />
            <wire x2="3696" y1="1840" y2="1840" x1="2096" />
            <wire x2="5424" y1="1728" y2="1728" x1="3696" />
            <wire x2="5424" y1="1728" y2="2192" x1="5424" />
            <wire x2="5472" y1="2192" y2="2192" x1="5424" />
            <wire x2="5424" y1="2192" y2="2256" x1="5424" />
            <wire x2="5472" y1="2256" y2="2256" x1="5424" />
            <wire x2="5424" y1="2256" y2="2320" x1="5424" />
            <wire x2="5472" y1="2320" y2="2320" x1="5424" />
            <wire x2="5424" y1="2320" y2="2384" x1="5424" />
            <wire x2="5472" y1="2384" y2="2384" x1="5424" />
            <wire x2="3696" y1="1728" y2="1840" x1="3696" />
        </branch>
        <iomarker fontsize="28" x="4816" y="2176" name="tx_P98" orien="R0" />
        <instance x="4352" y="2528" name="XLXI_7" orien="R0">
        </instance>
        <instance x="2320" y="3280" name="XLXI_8" orien="R0">
        </instance>
        <branch name="cs_SW_P1_P142(1:0)">
            <wire x2="2096" y1="3136" y2="3136" x1="2080" />
            <wire x2="2112" y1="3136" y2="3136" x1="2096" />
            <wire x2="2192" y1="3136" y2="3136" x1="2112" />
            <wire x2="2192" y1="3136" y2="3312" x1="2192" />
            <wire x2="2320" y1="3312" y2="3312" x1="2192" />
        </branch>
        <branch name="up_down_P140_P138(1:0)">
            <wire x2="2096" y1="3200" y2="3200" x1="2080" />
            <wire x2="2112" y1="3200" y2="3200" x1="2096" />
            <wire x2="2176" y1="3200" y2="3200" x1="2112" />
            <wire x2="2176" y1="3200" y2="3376" x1="2176" />
            <wire x2="2320" y1="3376" y2="3376" x1="2176" />
        </branch>
        <branch name="alpha_mv_P5toP23(7:0)">
            <wire x2="2096" y1="3264" y2="3264" x1="2080" />
            <wire x2="2112" y1="3264" y2="3264" x1="2096" />
            <wire x2="2208" y1="3264" y2="3264" x1="2112" />
            <wire x2="2208" y1="3120" y2="3264" x1="2208" />
            <wire x2="2320" y1="3120" y2="3120" x1="2208" />
        </branch>
        <branch name="num_mv_P6toP24(7:0)">
            <wire x2="2096" y1="3328" y2="3328" x1="2080" />
            <wire x2="2112" y1="3328" y2="3328" x1="2096" />
            <wire x2="2224" y1="3328" y2="3328" x1="2112" />
            <wire x2="2224" y1="3184" y2="3328" x1="2224" />
            <wire x2="2320" y1="3184" y2="3184" x1="2224" />
        </branch>
        <branch name="promote_sw(3:0)">
            <wire x2="2096" y1="3392" y2="3392" x1="2080" />
            <wire x2="2112" y1="3392" y2="3392" x1="2096" />
            <wire x2="2112" y1="3392" y2="3440" x1="2112" />
            <wire x2="2320" y1="3440" y2="3440" x1="2112" />
        </branch>
        <iomarker fontsize="28" x="2080" y="3136" name="cs_SW_P1_P142(1:0)" orien="R180" />
        <iomarker fontsize="28" x="2080" y="3200" name="up_down_P140_P138(1:0)" orien="R180" />
        <iomarker fontsize="28" x="2080" y="3264" name="alpha_mv_P5toP23(7:0)" orien="R180" />
        <iomarker fontsize="28" x="2080" y="3328" name="num_mv_P6toP24(7:0)" orien="R180" />
        <iomarker fontsize="28" x="2080" y="3392" name="promote_sw(3:0)" orien="R180" />
        <branch name="XLXN_44(15:0)">
            <wire x2="3632" y1="3440" y2="3440" x1="2912" />
            <wire x2="3632" y1="2496" y2="3440" x1="3632" />
            <wire x2="4352" y1="2496" y2="2496" x1="3632" />
        </branch>
        <branch name="L7_P67">
            <wire x2="3040" y1="3376" y2="3376" x1="2912" />
            <wire x2="3616" y1="3376" y2="3376" x1="3040" />
            <wire x2="3040" y1="3248" y2="3376" x1="3040" />
            <wire x2="3104" y1="3248" y2="3248" x1="3040" />
            <wire x2="3616" y1="2176" y2="3376" x1="3616" />
            <wire x2="4352" y1="2176" y2="2176" x1="3616" />
        </branch>
        <branch name="L2_L1_P80_P81(1:0)">
            <wire x2="2944" y1="3504" y2="3504" x1="2912" />
        </branch>
        <iomarker fontsize="28" x="2944" y="3504" name="L2_L1_P80_P81(1:0)" orien="R0" />
        <branch name="seg7_setlevel_alt(6:0)">
            <wire x2="2944" y1="3568" y2="3568" x1="2912" />
        </branch>
        <iomarker fontsize="28" x="2944" y="3568" name="seg7_setlevel_alt(6:0)" orien="R0" />
        <branch name="L0_P82">
            <wire x2="2944" y1="3632" y2="3632" x1="2912" />
        </branch>
        <iomarker fontsize="28" x="2944" y="3632" name="L0_P82" orien="R0" />
        <iomarker fontsize="28" x="3104" y="3248" name="L7_P67" orien="R0" />
    </sheet>
</drawing>