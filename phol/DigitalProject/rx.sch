<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_20" />
        <signal name="XLXN_22" />
        <signal name="XLXN_25" />
        <signal name="rx_P97" />
        <signal name="clk_P123" />
        <signal name="seg7_move(6:0)" />
        <signal name="common_move(3:0)" />
        <signal name="XLXN_61(2:0)" />
        <signal name="XLXN_62(2:0)" />
        <signal name="XLXN_63(2:0)" />
        <signal name="XLXN_64(2:0)" />
        <signal name="XLXN_23(11:0)" />
        <signal name="XLXN_59(2:0)" />
        <signal name="XLXN_60(11:0)" />
        <signal name="promote(1:0)">
        </signal>
        <signal name="clear_Promote" />
        <signal name="XLXN_69" />
        <signal name="XLXN_74" />
        <signal name="XLXN_75" />
        <signal name="XLXN_76" />
        <signal name="XLXN_83" />
        <signal name="XLXN_86" />
        <signal name="XLXN_87" />
        <signal name="XLXN_88" />
        <signal name="error_move_LED" />
        <signal name="error_promote_LED" />
        <signal name="clear_Error_Promote" />
        <signal name="clear_error_move" />
        <signal name="clear_winType" />
        <signal name="whoWin_LED(1:0)" />
        <signal name="promote_LED(3:0)" />
        <signal name="XLXN_104" />
        <signal name="XLXN_105" />
        <signal name="XLXN_108" />
        <signal name="XLXN_109" />
        <signal name="XLXN_110" />
        <signal name="XLXN_111" />
        <signal name="XLXN_112(1:0)" />
        <signal name="XLXN_113" />
        <signal name="XLXN_114" />
        <signal name="XLXN_115" />
        <signal name="XLXN_116(1:0)" />
        <signal name="clear_whoWin" />
        <signal name="XLXN_117(1:0)" />
        <signal name="winTypeLED_ALT(1:0)" />
        <signal name="XLXN_119" />
        <port polarity="Input" name="rx_P97" />
        <port polarity="Input" name="clk_P123" />
        <port polarity="Output" name="seg7_move(6:0)" />
        <port polarity="Output" name="common_move(3:0)" />
        <port polarity="Input" name="clear_Promote" />
        <port polarity="Output" name="error_move_LED" />
        <port polarity="Output" name="error_promote_LED" />
        <port polarity="Input" name="clear_Error_Promote" />
        <port polarity="Input" name="clear_error_move" />
        <port polarity="Input" name="clear_winType" />
        <port polarity="Output" name="whoWin_LED(1:0)" />
        <port polarity="Output" name="promote_LED(3:0)" />
        <port polarity="Input" name="clear_whoWin" />
        <port polarity="Output" name="winTypeLED_ALT(1:0)" />
        <blockdef name="shift_register12">
            <timestamp>2020-12-15T17:49:27</timestamp>
            <rect width="64" x="352" y="20" height="24" />
            <line x2="416" y1="32" y2="32" x1="352" />
            <rect width="64" x="352" y="84" height="24" />
            <line x2="416" y1="96" y2="96" x1="352" />
            <rect width="64" x="352" y="148" height="24" />
            <line x2="416" y1="160" y2="160" x1="352" />
            <rect width="64" x="352" y="212" height="24" />
            <line x2="416" y1="224" y2="224" x1="352" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="288" x="64" y="-192" height="448" />
        </blockdef>
        <blockdef name="serial_rx">
            <timestamp>2020-12-15T19:42:54</timestamp>
            <rect width="64" x="320" y="20" height="24" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-128" height="256" />
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
        <blockdef name="demux1_3">
            <timestamp>2020-12-16T12:21:9</timestamp>
            <line x2="448" y1="288" y2="288" x1="384" />
            <line x2="448" y1="352" y2="352" x1="384" />
            <line x2="448" y1="416" y2="416" x1="384" />
            <line x2="448" y1="480" y2="480" x1="384" />
            <line x2="448" y1="544" y2="544" x1="384" />
            <line x2="448" y1="608" y2="608" x1="384" />
            <line x2="448" y1="672" y2="672" x1="384" />
            <rect width="64" x="384" y="724" height="24" />
            <line x2="448" y1="736" y2="736" x1="384" />
            <rect width="64" x="0" y="212" height="24" />
            <line x2="0" y1="224" y2="224" x1="64" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="448" y1="32" y2="32" x1="384" />
            <line x2="448" y1="160" y2="160" x1="384" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="384" y="-236" height="24" />
            <line x2="448" y1="-224" y2="-224" x1="384" />
            <rect width="64" x="384" y="-44" height="24" />
            <line x2="448" y1="-32" y2="-32" x1="384" />
            <rect width="320" x="64" y="-256" height="1024" />
        </blockdef>
        <blockdef name="move_12bits_to_7seg">
            <timestamp>2020-12-16T18:47:5</timestamp>
            <rect width="384" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="448" y="-300" height="24" />
            <line x2="512" y1="-288" y2="-288" x1="448" />
            <rect width="64" x="448" y="-44" height="24" />
            <line x2="512" y1="-32" y2="-32" x1="448" />
        </blockdef>
        <blockdef name="register1bits">
            <timestamp>2020-12-16T12:12:55</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="decoder2to4_promote">
            <timestamp>2020-12-16T12:39:6</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="decoder2to2_whoWin">
            <timestamp>2020-12-16T13:1:24</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="reg2bits">
            <timestamp>2020-12-16T15:5:35</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="decoder1to2_winType">
            <timestamp>2020-12-16T15:32:36</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="shift_register12" name="XLXI_3">
            <blockpin signalname="XLXN_22" name="CLR" />
            <blockpin signalname="XLXN_25" name="CLK" />
            <blockpin signalname="XLXN_23(11:0)" name="reg_in(11:0)" />
            <blockpin signalname="XLXN_61(2:0)" name="first_reg_out(2:0)" />
            <blockpin signalname="XLXN_62(2:0)" name="second_reg_out(2:0)" />
            <blockpin signalname="XLXN_63(2:0)" name="third_reg_out(2:0)" />
            <blockpin signalname="XLXN_64(2:0)" name="forth_reg_out(2:0)" />
        </block>
        <block symbolname="serial_rx" name="XLXI_1">
            <blockpin signalname="clk_P123" name="clock" />
            <blockpin signalname="rx_P97" name="rx" />
            <blockpin signalname="XLXN_20" name="data_done" />
            <blockpin signalname="XLXN_59(2:0)" name="header(2:0)" />
            <blockpin signalname="XLXN_60(11:0)" name="data(11:0)" />
        </block>
        <block symbolname="gnd" name="XLXI_5">
            <blockpin signalname="XLXN_22" name="G" />
        </block>
        <block symbolname="demux1_3" name="XLXI_6">
            <blockpin signalname="XLXN_20" name="data_done" />
            <blockpin signalname="XLXN_60(11:0)" name="demux_in(11:0)" />
            <blockpin signalname="XLXN_59(2:0)" name="Selector(2:0)" />
            <blockpin signalname="XLXN_25" name="clk_Move_reg" />
            <blockpin signalname="XLXN_113" name="clk_Promote_reg" />
            <blockpin signalname="XLXN_23(11:0)" name="Move(11:0)" />
            <blockpin signalname="promote(1:0)" name="Promote(1:0)" />
            <blockpin signalname="XLXN_115" name="clk_whoWin_reg" />
            <blockpin signalname="XLXN_86" name="clk_winType_reg" />
            <blockpin signalname="XLXN_87" name="clk_Error_Move_reg" />
            <blockpin signalname="XLXN_88" name="clk_Error_Promote_reg" />
            <blockpin signalname="XLXN_74" name="winType" />
            <blockpin signalname="XLXN_75" name="Error_Move" />
            <blockpin signalname="XLXN_76" name="Error_Promote" />
            <blockpin signalname="XLXN_116(1:0)" name="whoWin(1:0)" />
        </block>
        <block symbolname="move_12bits_to_7seg" name="XLXI_7">
            <blockpin signalname="clk_P123" name="clock" />
            <blockpin signalname="XLXN_61(2:0)" name="first_Move_IN(2:0)" />
            <blockpin signalname="XLXN_62(2:0)" name="second_Move_IN(2:0)" />
            <blockpin signalname="XLXN_63(2:0)" name="third_Move_IN(2:0)" />
            <blockpin signalname="XLXN_64(2:0)" name="forth_Move_IN(2:0)" />
            <blockpin signalname="seg7_move(6:0)" name="out_7seg(6:0)" />
            <blockpin signalname="common_move(3:0)" name="common(3:0)" />
        </block>
        <block symbolname="register1bits" name="XLXI_10">
            <blockpin signalname="XLXN_86" name="CLK" />
            <blockpin signalname="clear_winType" name="CLR" />
            <blockpin signalname="XLXN_74" name="d_in" />
            <blockpin signalname="XLXN_119" name="d_out" />
        </block>
        <block symbolname="register1bits" name="XLXI_11">
            <blockpin signalname="XLXN_87" name="CLK" />
            <blockpin signalname="clear_error_move" name="CLR" />
            <blockpin signalname="XLXN_75" name="d_in" />
            <blockpin signalname="error_move_LED" name="d_out" />
        </block>
        <block symbolname="register1bits" name="XLXI_12">
            <blockpin signalname="XLXN_88" name="CLK" />
            <blockpin signalname="clear_Error_Promote" name="CLR" />
            <blockpin signalname="XLXN_76" name="d_in" />
            <blockpin signalname="error_promote_LED" name="d_out" />
        </block>
        <block symbolname="decoder2to4_promote" name="XLXI_15">
            <blockpin signalname="XLXN_112(1:0)" name="inp(1:0)" />
            <blockpin signalname="promote_LED(3:0)" name="seg(3:0)" />
        </block>
        <block symbolname="decoder2to2_whoWin" name="XLXI_17">
            <blockpin signalname="XLXN_117(1:0)" name="inp(1:0)" />
            <blockpin signalname="whoWin_LED(1:0)" name="seg(1:0)" />
        </block>
        <block symbolname="reg2bits" name="XLXI_18">
            <blockpin signalname="XLXN_113" name="CLK" />
            <blockpin signalname="clear_Promote" name="CLR" />
            <blockpin signalname="promote(1:0)" name="d_in(1:0)" />
            <blockpin signalname="XLXN_112(1:0)" name="d_out(1:0)" />
        </block>
        <block symbolname="reg2bits" name="XLXI_19">
            <blockpin signalname="XLXN_115" name="CLK" />
            <blockpin signalname="clear_whoWin" name="CLR" />
            <blockpin signalname="XLXN_116(1:0)" name="d_in(1:0)" />
            <blockpin signalname="XLXN_117(1:0)" name="d_out(1:0)" />
        </block>
        <block symbolname="decoder1to2_winType" name="XLXI_20">
            <blockpin signalname="XLXN_119" name="inp" />
            <blockpin signalname="winTypeLED_ALT(1:0)" name="seg(1:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7609" height="5382">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <instance x="3680" y="1920" name="XLXI_3" orien="R0">
        </instance>
        <instance x="1056" y="1808" name="XLXI_1" orien="R0">
        </instance>
        <branch name="XLXN_20">
            <wire x2="1456" y1="1712" y2="1712" x1="1440" />
            <wire x2="2256" y1="1712" y2="1712" x1="1456" />
            <wire x2="2256" y1="1712" y2="1840" x1="2256" />
            <wire x2="2304" y1="1840" y2="1840" x1="2256" />
        </branch>
        <instance x="3424" y="1664" name="XLXI_5" orien="R0" />
        <branch name="XLXN_22">
            <wire x2="3488" y1="1456" y2="1536" x1="3488" />
            <wire x2="3584" y1="1456" y2="1456" x1="3488" />
            <wire x2="3584" y1="1456" y2="1760" x1="3584" />
            <wire x2="3680" y1="1760" y2="1760" x1="3584" />
        </branch>
        <branch name="XLXN_25">
            <wire x2="3216" y1="1840" y2="1840" x1="2752" />
            <wire x2="3664" y1="1824" y2="1824" x1="3216" />
            <wire x2="3680" y1="1824" y2="1824" x1="3664" />
            <wire x2="3216" y1="1824" y2="1840" x1="3216" />
        </branch>
        <branch name="rx_P97">
            <wire x2="1056" y1="1776" y2="1776" x1="1024" />
        </branch>
        <branch name="clk_P123">
            <wire x2="1024" y1="1136" y2="1136" x1="1008" />
            <wire x2="1008" y1="1136" y2="1232" x1="1008" />
            <wire x2="1008" y1="1232" y2="1712" x1="1008" />
            <wire x2="1056" y1="1712" y2="1712" x1="1008" />
            <wire x2="1488" y1="1232" y2="1232" x1="1008" />
            <wire x2="3024" y1="1232" y2="1232" x1="1488" />
            <wire x2="3888" y1="1232" y2="1232" x1="3024" />
            <wire x2="3888" y1="1232" y2="1600" x1="3888" />
            <wire x2="4768" y1="1600" y2="1600" x1="3888" />
        </branch>
        <branch name="seg7_move(6:0)">
            <wire x2="5312" y1="1600" y2="1600" x1="5280" />
        </branch>
        <branch name="common_move(3:0)">
            <wire x2="5312" y1="1856" y2="1856" x1="5280" />
        </branch>
        <branch name="XLXN_61(2:0)">
            <wire x2="4432" y1="1952" y2="1952" x1="4096" />
            <wire x2="4432" y1="1664" y2="1952" x1="4432" />
            <wire x2="4768" y1="1664" y2="1664" x1="4432" />
        </branch>
        <branch name="XLXN_62(2:0)">
            <wire x2="4448" y1="2016" y2="2016" x1="4096" />
            <wire x2="4448" y1="1728" y2="2016" x1="4448" />
            <wire x2="4768" y1="1728" y2="1728" x1="4448" />
        </branch>
        <branch name="XLXN_63(2:0)">
            <wire x2="4464" y1="2080" y2="2080" x1="4096" />
            <wire x2="4464" y1="1792" y2="2080" x1="4464" />
            <wire x2="4768" y1="1792" y2="1792" x1="4464" />
        </branch>
        <branch name="XLXN_64(2:0)">
            <wire x2="4480" y1="2144" y2="2144" x1="4096" />
            <wire x2="4480" y1="1856" y2="2144" x1="4480" />
            <wire x2="4768" y1="1856" y2="1856" x1="4480" />
        </branch>
        <branch name="XLXN_23(11:0)">
            <wire x2="2992" y1="1584" y2="1584" x1="2752" />
            <wire x2="2992" y1="1584" y2="1888" x1="2992" />
            <wire x2="3664" y1="1888" y2="1888" x1="2992" />
            <wire x2="3680" y1="1888" y2="1888" x1="3664" />
        </branch>
        <branch name="XLXN_59(2:0)">
            <wire x2="1456" y1="1840" y2="1840" x1="1440" />
            <wire x2="1872" y1="1840" y2="1840" x1="1456" />
            <wire x2="1872" y1="1840" y2="2032" x1="1872" />
            <wire x2="2304" y1="2032" y2="2032" x1="1872" />
        </branch>
        <branch name="XLXN_60(11:0)">
            <wire x2="1456" y1="1776" y2="1776" x1="1440" />
            <wire x2="2304" y1="1776" y2="1776" x1="1456" />
        </branch>
        <iomarker fontsize="28" x="1024" y="1776" name="rx_P97" orien="R180" />
        <iomarker fontsize="28" x="1024" y="1136" name="clk_P123" orien="R0" />
        <iomarker fontsize="28" x="5312" y="1600" name="seg7_move(6:0)" orien="R0" />
        <iomarker fontsize="28" x="5312" y="1856" name="common_move(3:0)" orien="R0" />
        <instance x="2304" y="1808" name="XLXI_6" orien="R0">
        </instance>
        <instance x="4768" y="1888" name="XLXI_7" orien="R0">
        </instance>
        <branch name="promote(1:0)">
            <wire x2="2784" y1="1776" y2="1776" x1="2752" />
            <wire x2="2784" y1="1776" y2="1808" x1="2784" />
            <wire x2="2784" y1="1808" y2="1904" x1="2784" />
            <wire x2="3120" y1="1904" y2="1904" x1="2784" />
            <wire x2="3120" y1="1904" y2="2672" x1="3120" />
            <wire x2="3552" y1="2672" y2="2672" x1="3120" />
        </branch>
        <branch name="clear_Promote">
            <wire x2="3632" y1="2416" y2="2416" x1="3440" />
            <wire x2="3632" y1="2416" y2="2432" x1="3632" />
            <wire x2="3488" y1="2432" y2="2608" x1="3488" />
            <wire x2="3552" y1="2608" y2="2608" x1="3488" />
            <wire x2="3632" y1="2432" y2="2432" x1="3488" />
        </branch>
        <instance x="3680" y="3520" name="XLXI_11" orien="R0">
        </instance>
        <instance x="3696" y="3872" name="XLXI_12" orien="R0">
        </instance>
        <instance x="3680" y="3104" name="XLXI_10" orien="R0">
        </instance>
        <branch name="XLXN_74">
            <wire x2="3168" y1="2352" y2="2352" x1="2752" />
            <wire x2="3168" y1="2352" y2="3072" x1="3168" />
            <wire x2="3680" y1="3072" y2="3072" x1="3168" />
        </branch>
        <branch name="XLXN_75">
            <wire x2="3152" y1="2416" y2="2416" x1="2752" />
            <wire x2="3152" y1="2416" y2="3488" x1="3152" />
            <wire x2="3680" y1="3488" y2="3488" x1="3152" />
        </branch>
        <branch name="XLXN_76">
            <wire x2="3136" y1="2480" y2="2480" x1="2752" />
            <wire x2="3136" y1="2480" y2="3840" x1="3136" />
            <wire x2="3696" y1="3840" y2="3840" x1="3136" />
        </branch>
        <branch name="XLXN_86">
            <wire x2="3216" y1="2160" y2="2160" x1="2752" />
            <wire x2="3216" y1="2160" y2="2944" x1="3216" />
            <wire x2="3680" y1="2944" y2="2944" x1="3216" />
        </branch>
        <branch name="XLXN_87">
            <wire x2="3232" y1="2224" y2="2224" x1="2752" />
            <wire x2="3232" y1="2224" y2="3360" x1="3232" />
            <wire x2="3680" y1="3360" y2="3360" x1="3232" />
        </branch>
        <branch name="XLXN_88">
            <wire x2="3248" y1="2288" y2="2288" x1="2752" />
            <wire x2="3248" y1="2288" y2="3712" x1="3248" />
            <wire x2="3696" y1="3712" y2="3712" x1="3248" />
        </branch>
        <instance x="4848" y="2608" name="XLXI_15" orien="R0">
        </instance>
        <branch name="error_move_LED">
            <wire x2="4096" y1="3360" y2="3360" x1="4064" />
        </branch>
        <iomarker fontsize="28" x="4096" y="3360" name="error_move_LED" orien="R0" />
        <branch name="error_promote_LED">
            <wire x2="4112" y1="3712" y2="3712" x1="4080" />
        </branch>
        <iomarker fontsize="28" x="4112" y="3712" name="error_promote_LED" orien="R0" />
        <branch name="clear_Error_Promote">
            <wire x2="3696" y1="3776" y2="3776" x1="3664" />
        </branch>
        <iomarker fontsize="28" x="3664" y="3776" name="clear_Error_Promote" orien="R180" />
        <branch name="clear_error_move">
            <wire x2="3680" y1="3424" y2="3424" x1="3648" />
        </branch>
        <iomarker fontsize="28" x="3648" y="3424" name="clear_error_move" orien="R180" />
        <branch name="clear_winType">
            <wire x2="3680" y1="3008" y2="3008" x1="3648" />
        </branch>
        <iomarker fontsize="28" x="3648" y="3008" name="clear_winType" orien="R180" />
        <iomarker fontsize="28" x="3440" y="2416" name="clear_Promote" orien="R180" />
        <iomarker fontsize="28" x="3440" y="4176" name="clear_whoWin" orien="R180" />
        <branch name="whoWin_LED(1:0)">
            <wire x2="5328" y1="4416" y2="4416" x1="5296" />
        </branch>
        <iomarker fontsize="28" x="5328" y="4416" name="whoWin_LED(1:0)" orien="R0" />
        <branch name="promote_LED(3:0)">
            <wire x2="5264" y1="2576" y2="2576" x1="5232" />
        </branch>
        <iomarker fontsize="28" x="5264" y="2576" name="promote_LED(3:0)" orien="R0" />
        <instance x="4912" y="4448" name="XLXI_17" orien="R0">
        </instance>
        <instance x="3744" y="4400" name="XLXI_19" orien="R0">
        </instance>
        <instance x="3552" y="2704" name="XLXI_18" orien="R0">
        </instance>
        <branch name="XLXN_112(1:0)">
            <wire x2="4384" y1="2544" y2="2544" x1="3936" />
            <wire x2="4384" y1="2544" y2="2576" x1="4384" />
            <wire x2="4848" y1="2576" y2="2576" x1="4384" />
        </branch>
        <branch name="XLXN_113">
            <wire x2="3104" y1="1968" y2="1968" x1="2752" />
            <wire x2="3104" y1="1968" y2="2544" x1="3104" />
            <wire x2="3552" y1="2544" y2="2544" x1="3104" />
        </branch>
        <branch name="XLXN_115">
            <wire x2="2944" y1="2096" y2="2096" x1="2752" />
            <wire x2="2944" y1="2096" y2="3952" x1="2944" />
            <wire x2="3728" y1="3952" y2="3952" x1="2944" />
            <wire x2="3728" y1="3952" y2="4240" x1="3728" />
            <wire x2="3744" y1="4240" y2="4240" x1="3728" />
        </branch>
        <branch name="XLXN_116(1:0)">
            <wire x2="2832" y1="2544" y2="2544" x1="2752" />
            <wire x2="2832" y1="2544" y2="4368" x1="2832" />
            <wire x2="3744" y1="4368" y2="4368" x1="2832" />
        </branch>
        <branch name="clear_whoWin">
            <wire x2="3632" y1="4176" y2="4176" x1="3440" />
            <wire x2="3680" y1="4176" y2="4176" x1="3632" />
            <wire x2="3712" y1="4176" y2="4176" x1="3680" />
            <wire x2="3712" y1="4176" y2="4304" x1="3712" />
            <wire x2="3744" y1="4304" y2="4304" x1="3712" />
        </branch>
        <branch name="XLXN_117(1:0)">
            <wire x2="4512" y1="4240" y2="4240" x1="4128" />
            <wire x2="4512" y1="4240" y2="4416" x1="4512" />
            <wire x2="4912" y1="4416" y2="4416" x1="4512" />
        </branch>
        <instance x="4496" y="2976" name="XLXI_20" orien="R0">
        </instance>
        <branch name="winTypeLED_ALT(1:0)">
            <wire x2="4896" y1="2944" y2="2944" x1="4880" />
            <wire x2="4912" y1="2944" y2="2944" x1="4896" />
        </branch>
        <iomarker fontsize="28" x="4912" y="2944" name="winTypeLED_ALT(1:0)" orien="R0" />
        <branch name="XLXN_119">
            <wire x2="4496" y1="2944" y2="2944" x1="4064" />
        </branch>
    </sheet>
</drawing>