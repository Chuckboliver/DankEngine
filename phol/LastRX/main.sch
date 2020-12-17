<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1(15:0)" />
        <signal name="XLXN_2(15:0)" />
        <signal name="XLXN_3(15:0)" />
        <signal name="XLXN_4(15:0)" />
        <signal name="XLXN_5(15:0)" />
        <signal name="XLXN_6(15:0)" />
        <signal name="ng_SW_P121" />
        <signal name="XLXN_9">
        </signal>
        <signal name="XLXN_10">
        </signal>
        <signal name="cs_SW_P1_P142(1:0)" />
        <signal name="up_down_P140_P138(1:0)" />
        <signal name="alpha_mv_P5toP23(7:0)" />
        <signal name="num_mv_P6toP24(7:0)" />
        <signal name="promote_sw(3:0)" />
        <signal name="XLXN_16" />
        <signal name="clk_P123" />
        <signal name="tx_P98" />
        <signal name="XLXN_19" />
        <signal name="XLXN_20" />
        <signal name="XLXN_21" />
        <signal name="XLXN_22" />
        <signal name="rx_P97" />
        <signal name="seg7_FPGA(6:0)" />
        <signal name="common_seg_FPGA(3:0)" />
        <signal name="error_LED(1:0)" />
        <signal name="promote_LED(3:0)" />
        <signal name="whoWin_P88_P92(1:0)" />
        <signal name="winTypeP80_P81(1:0)" />
        <signal name="XLXN_30" />
        <signal name="XLXN_31" />
        <signal name="MN0_P95" />
        <port polarity="Input" name="ng_SW_P121" />
        <port polarity="Input" name="cs_SW_P1_P142(1:0)" />
        <port polarity="Input" name="up_down_P140_P138(1:0)" />
        <port polarity="Input" name="alpha_mv_P5toP23(7:0)" />
        <port polarity="Input" name="num_mv_P6toP24(7:0)" />
        <port polarity="Input" name="promote_sw(3:0)" />
        <port polarity="Input" name="clk_P123" />
        <port polarity="Output" name="tx_P98" />
        <port polarity="Input" name="rx_P97" />
        <port polarity="Output" name="seg7_FPGA(6:0)" />
        <port polarity="Output" name="common_seg_FPGA(3:0)" />
        <port polarity="Output" name="error_LED(1:0)" />
        <port polarity="Output" name="promote_LED(3:0)" />
        <port polarity="Output" name="whoWin_P88_P92(1:0)" />
        <port polarity="Output" name="winTypeP80_P81(1:0)" />
        <port polarity="Output" name="MN0_P95" />
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
        <blockdef name="addHeader">
            <timestamp>2020-12-17T5:19:10</timestamp>
            <rect width="464" x="64" y="-512" height="512" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="528" y="-492" height="24" />
            <line x2="592" y1="-480" y2="-480" x1="528" />
            <rect width="64" x="528" y="-428" height="24" />
            <line x2="592" y1="-416" y2="-416" x1="528" />
            <rect width="64" x="528" y="-364" height="24" />
            <line x2="592" y1="-352" y2="-352" x1="528" />
            <rect width="64" x="528" y="-300" height="24" />
            <line x2="592" y1="-288" y2="-288" x1="528" />
            <rect width="64" x="528" y="-236" height="24" />
            <line x2="592" y1="-224" y2="-224" x1="528" />
            <rect width="64" x="528" y="-172" height="24" />
            <line x2="592" y1="-160" y2="-160" x1="528" />
            <rect width="64" x="528" y="-108" height="24" />
            <line x2="592" y1="-96" y2="-96" x1="528" />
        </blockdef>
        <blockdef name="serial_gen">
            <timestamp>2020-12-17T5:40:19</timestamp>
            <rect width="304" x="64" y="-384" height="384" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-192" y2="-192" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="432" y1="-352" y2="-352" x1="368" />
        </blockdef>
        <blockdef name="Mux5to1">
            <timestamp>2020-12-17T6:12:48</timestamp>
            <rect width="384" x="64" y="-320" height="320" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="512" y1="-288" y2="-288" x1="448" />
            <rect width="64" x="448" y="-44" height="24" />
            <line x2="512" y1="-32" y2="-32" x1="448" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
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
        <block symbolname="addHeader" name="XLXI_2">
            <blockpin signalname="ng_SW_P121" name="newGame_switch" />
            <blockpin signalname="XLXN_16" name="clear_level" />
            <blockpin signalname="XLXN_16" name="clear_move" />
            <blockpin signalname="cs_SW_P1_P142(1:0)" name="chooseSide(1:0)" />
            <blockpin signalname="up_down_P140_P138(1:0)" name="updown_switch(1:0)" />
            <blockpin signalname="alpha_mv_P5toP23(7:0)" name="alp(7:0)" />
            <blockpin signalname="num_mv_P6toP24(7:0)" name="num(7:0)" />
            <blockpin signalname="promote_sw(3:0)" name="piece(3:0)" />
            <blockpin signalname="XLXN_1(15:0)" name="newGame_head(15:0)" />
            <blockpin signalname="XLXN_2(15:0)" name="chooseSide_head(15:0)" />
            <blockpin name="LED(1:0)" />
            <blockpin signalname="XLXN_3(15:0)" name="setLevel_head(15:0)" />
            <blockpin name="segment_sl(6:0)" />
            <blockpin signalname="XLXN_4(15:0)" name="move_head(15:0)" />
            <blockpin signalname="XLXN_5(15:0)" name="piece_out(15:0)" />
        </block>
        <block symbolname="serial_gen" name="XLXI_3">
            <blockpin signalname="XLXN_30" name="start" />
            <blockpin signalname="clk_P123" name="clock" />
            <blockpin signalname="XLXN_6(15:0)" name="data(15:0)" />
            <blockpin signalname="tx_P98" name="tx" />
        </block>
        <block symbolname="Mux5to1" name="XLXI_4">
            <blockpin signalname="XLXN_1(15:0)" name="newGame_in(15:0)" />
            <blockpin signalname="XLXN_2(15:0)" name="chooseSide_in(15:0)" />
            <blockpin signalname="XLXN_3(15:0)" name="set_level_in(15:0)" />
            <blockpin signalname="XLXN_4(15:0)" name="move_in(15:0)" />
            <blockpin signalname="XLXN_5(15:0)" name="piece_in(15:0)" />
            <blockpin name="ready" />
            <blockpin signalname="XLXN_6(15:0)" name="out_data(15:0)" />
        </block>
        <block symbolname="gnd" name="XLXI_5">
            <blockpin signalname="XLXN_16" name="G" />
        </block>
        <block symbolname="vcc" name="XLXI_6">
            <blockpin signalname="XLXN_30" name="P" />
        </block>
        <block symbolname="buf" name="XLXI_7">
            <blockpin signalname="ng_SW_P121" name="I" />
            <blockpin signalname="MN0_P95" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7040" height="5440">
        <instance x="5472" y="2544" name="XLXI_1" orien="R0">
        </instance>
        <instance x="3280" y="2560" name="XLXI_4" orien="R0">
        </instance>
        <instance x="4352" y="2528" name="XLXI_3" orien="R0">
        </instance>
        <branch name="XLXN_1(15:0)">
            <wire x2="2992" y1="2144" y2="2144" x1="2704" />
            <wire x2="2992" y1="2144" y2="2272" x1="2992" />
            <wire x2="3264" y1="2272" y2="2272" x1="2992" />
            <wire x2="3280" y1="2272" y2="2272" x1="3264" />
        </branch>
        <branch name="XLXN_2(15:0)">
            <wire x2="2976" y1="2208" y2="2208" x1="2704" />
            <wire x2="2976" y1="2208" y2="2336" x1="2976" />
            <wire x2="3264" y1="2336" y2="2336" x1="2976" />
            <wire x2="3280" y1="2336" y2="2336" x1="3264" />
        </branch>
        <branch name="XLXN_3(15:0)">
            <wire x2="2960" y1="2336" y2="2336" x1="2704" />
            <wire x2="2960" y1="2336" y2="2400" x1="2960" />
            <wire x2="3264" y1="2400" y2="2400" x1="2960" />
            <wire x2="3280" y1="2400" y2="2400" x1="3264" />
        </branch>
        <branch name="XLXN_4(15:0)">
            <wire x2="3264" y1="2464" y2="2464" x1="2704" />
            <wire x2="3280" y1="2464" y2="2464" x1="3264" />
        </branch>
        <branch name="XLXN_5(15:0)">
            <wire x2="3264" y1="2528" y2="2528" x1="2704" />
            <wire x2="3280" y1="2528" y2="2528" x1="3264" />
        </branch>
        <branch name="XLXN_6(15:0)">
            <wire x2="4064" y1="2528" y2="2528" x1="3792" />
            <wire x2="4064" y1="2496" y2="2528" x1="4064" />
            <wire x2="4352" y1="2496" y2="2496" x1="4064" />
        </branch>
        <branch name="ng_SW_P121">
            <wire x2="1808" y1="2016" y2="2240" x1="1808" />
            <wire x2="2096" y1="2240" y2="2240" x1="1808" />
            <wire x2="2144" y1="2016" y2="2016" x1="1808" />
            <wire x2="2096" y1="2144" y2="2144" x1="2080" />
            <wire x2="2096" y1="2144" y2="2240" x1="2096" />
            <wire x2="2112" y1="2144" y2="2144" x1="2096" />
            <wire x2="2112" y1="1840" y2="1840" x1="2096" />
            <wire x2="3696" y1="1840" y2="1840" x1="2112" />
            <wire x2="2096" y1="1840" y2="2144" x1="2096" />
            <wire x2="5424" y1="1728" y2="1728" x1="3696" />
            <wire x2="5424" y1="1728" y2="2000" x1="5424" />
            <wire x2="5424" y1="2000" y2="2192" x1="5424" />
            <wire x2="5472" y1="2192" y2="2192" x1="5424" />
            <wire x2="5424" y1="2192" y2="2256" x1="5424" />
            <wire x2="5472" y1="2256" y2="2256" x1="5424" />
            <wire x2="5424" y1="2256" y2="2320" x1="5424" />
            <wire x2="5472" y1="2320" y2="2320" x1="5424" />
            <wire x2="5424" y1="2320" y2="2384" x1="5424" />
            <wire x2="5472" y1="2384" y2="2384" x1="5424" />
            <wire x2="3696" y1="1728" y2="1840" x1="3696" />
        </branch>
        <iomarker fontsize="28" x="2080" y="2144" name="ng_SW_P121" orien="R180" />
        <branch name="cs_SW_P1_P142(1:0)">
            <wire x2="2096" y1="2336" y2="2336" x1="2080" />
            <wire x2="2112" y1="2336" y2="2336" x1="2096" />
        </branch>
        <iomarker fontsize="28" x="2080" y="2336" name="cs_SW_P1_P142(1:0)" orien="R180" />
        <branch name="up_down_P140_P138(1:0)">
            <wire x2="2096" y1="2400" y2="2400" x1="2080" />
            <wire x2="2112" y1="2400" y2="2400" x1="2096" />
        </branch>
        <iomarker fontsize="28" x="2080" y="2400" name="up_down_P140_P138(1:0)" orien="R180" />
        <branch name="alpha_mv_P5toP23(7:0)">
            <wire x2="2096" y1="2464" y2="2464" x1="2080" />
            <wire x2="2112" y1="2464" y2="2464" x1="2096" />
        </branch>
        <iomarker fontsize="28" x="2080" y="2464" name="alpha_mv_P5toP23(7:0)" orien="R180" />
        <branch name="num_mv_P6toP24(7:0)">
            <wire x2="2096" y1="2528" y2="2528" x1="2080" />
            <wire x2="2112" y1="2528" y2="2528" x1="2096" />
        </branch>
        <iomarker fontsize="28" x="2080" y="2528" name="num_mv_P6toP24(7:0)" orien="R180" />
        <branch name="promote_sw(3:0)">
            <wire x2="2096" y1="2592" y2="2592" x1="2080" />
            <wire x2="2112" y1="2592" y2="2592" x1="2096" />
        </branch>
        <iomarker fontsize="28" x="2080" y="2592" name="promote_sw(3:0)" orien="R180" />
        <instance x="1520" y="2320" name="XLXI_5" orien="R0" />
        <branch name="XLXN_16">
            <wire x2="1584" y1="2112" y2="2192" x1="1584" />
            <wire x2="1616" y1="2112" y2="2112" x1="1584" />
            <wire x2="1616" y1="2112" y2="2208" x1="1616" />
            <wire x2="1616" y1="2208" y2="2272" x1="1616" />
            <wire x2="2080" y1="2272" y2="2272" x1="1616" />
            <wire x2="2112" y1="2272" y2="2272" x1="2080" />
            <wire x2="2080" y1="2208" y2="2208" x1="1616" />
            <wire x2="2112" y1="2208" y2="2208" x1="2080" />
        </branch>
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
        <iomarker fontsize="28" x="4816" y="2176" name="tx_P98" orien="R0" />
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
        <instance x="4144" y="2128" name="XLXI_6" orien="R0" />
        <branch name="XLXN_30">
            <wire x2="4208" y1="2128" y2="2144" x1="4208" />
            <wire x2="4208" y1="2144" y2="2176" x1="4208" />
            <wire x2="4352" y1="2176" y2="2176" x1="4208" />
        </branch>
        <instance x="2144" y="2048" name="XLXI_7" orien="R0" />
        <instance x="2112" y="2624" name="XLXI_2" orien="R0">
        </instance>
        <iomarker fontsize="28" x="2384" y="1936" name="MN0_P95" orien="R0" />
        <branch name="MN0_P95">
            <wire x2="2384" y1="1936" y2="1936" x1="2064" />
            <wire x2="2064" y1="1936" y2="2064" x1="2064" />
            <wire x2="2384" y1="2064" y2="2064" x1="2064" />
            <wire x2="2384" y1="2016" y2="2016" x1="2368" />
            <wire x2="2384" y1="2016" y2="2064" x1="2384" />
        </branch>
    </sheet>
</drawing>