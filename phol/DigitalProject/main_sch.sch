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
        <signal name="XLXN_23(11:0)" />
        <signal name="XLXN_24(11:0)" />
        <signal name="XLXN_25" />
        <signal name="XLXN_27" />
        <signal name="XLXN_28" />
        <signal name="rx_P97" />
        <signal name="clk_P123" />
        <signal name="seg7(6:0)" />
        <signal name="common(3:0)" />
        <signal name="XLXN_51" />
        <signal name="XLXN_52" />
        <signal name="XLXN_53" />
        <signal name="XLXN_54" />
        <signal name="XLXN_55" />
        <signal name="XLXN_56" />
        <signal name="XLXN_57" />
        <signal name="XLXN_59(2:0)" />
        <signal name="XLXN_60(11:0)" />
        <signal name="XLXN_61(2:0)" />
        <signal name="XLXN_62(2:0)" />
        <signal name="XLXN_63(2:0)" />
        <signal name="XLXN_64(2:0)" />
        <port polarity="Input" name="rx_P97" />
        <port polarity="Input" name="clk_P123" />
        <port polarity="Output" name="seg7(6:0)" />
        <port polarity="Output" name="common(3:0)" />
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
        <blockdef name="demux1_3">
            <timestamp>2020-12-15T19:0:55</timestamp>
            <rect width="64" x="0" y="212" height="24" />
            <line x2="0" y1="224" y2="224" x1="64" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="448" y1="32" y2="32" x1="384" />
            <line x2="448" y1="96" y2="96" x1="384" />
            <line x2="448" y1="160" y2="160" x1="384" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="384" y="-236" height="24" />
            <line x2="448" y1="-224" y2="-224" x1="384" />
            <rect width="64" x="384" y="-140" height="24" />
            <line x2="448" y1="-128" y2="-128" x1="384" />
            <rect width="64" x="384" y="-44" height="24" />
            <line x2="448" y1="-32" y2="-32" x1="384" />
            <rect width="320" x="64" y="-256" height="512" />
        </blockdef>
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
        <blockdef name="move_12bits_to_7seg">
            <timestamp>2020-12-15T17:49:37</timestamp>
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
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <block symbolname="serial_rx" name="XLXI_1">
            <blockpin signalname="clk_P123" name="clock" />
            <blockpin signalname="rx_P97" name="rx" />
            <blockpin signalname="XLXN_20" name="data_done" />
            <blockpin signalname="XLXN_59(2:0)" name="header(2:0)" />
            <blockpin signalname="XLXN_60(11:0)" name="data(11:0)" />
        </block>
        <block symbolname="demux1_3" name="XLXI_2">
            <blockpin signalname="XLXN_20" name="data_done" />
            <blockpin signalname="XLXN_60(11:0)" name="demux_in(11:0)" />
            <blockpin signalname="XLXN_59(2:0)" name="Selector(2:0)" />
            <blockpin signalname="XLXN_25" name="clk_Move_reg" />
            <blockpin name="clk_Error_reg" />
            <blockpin name="clk_Promote_reg" />
            <blockpin signalname="XLXN_23(11:0)" name="Move(11:0)" />
            <blockpin name="Error(5:0)" />
            <blockpin name="Promote(4:0)" />
        </block>
        <block symbolname="shift_register12" name="XLXI_3">
            <blockpin signalname="XLXN_22" name="CLR" />
            <blockpin signalname="XLXN_25" name="CLK" />
            <blockpin signalname="XLXN_23(11:0)" name="reg_in(11:0)" />
            <blockpin signalname="XLXN_61(2:0)" name="first_reg_out(2:0)" />
            <blockpin signalname="XLXN_62(2:0)" name="second_reg_out(2:0)" />
            <blockpin signalname="XLXN_63(2:0)" name="third_reg_out(2:0)" />
            <blockpin signalname="XLXN_64(2:0)" name="forth_reg_out(2:0)" />
        </block>
        <block symbolname="move_12bits_to_7seg" name="XLXI_4">
            <blockpin signalname="clk_P123" name="clock" />
            <blockpin signalname="XLXN_61(2:0)" name="first_Move_IN(2:0)" />
            <blockpin signalname="XLXN_62(2:0)" name="second_Move_IN(2:0)" />
            <blockpin signalname="XLXN_63(2:0)" name="third_Move_IN(2:0)" />
            <blockpin signalname="XLXN_64(2:0)" name="forth_Move_IN(2:0)" />
            <blockpin signalname="seg7(6:0)" name="out_7seg(6:0)" />
            <blockpin signalname="common(3:0)" name="common(3:0)" />
        </block>
        <block symbolname="gnd" name="XLXI_5">
            <blockpin signalname="XLXN_22" name="G" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7609" height="5382">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <instance x="1792" y="1488" name="XLXI_2" orien="R0">
        </instance>
        <instance x="3168" y="1600" name="XLXI_3" orien="R0">
        </instance>
        <instance x="4256" y="1568" name="XLXI_4" orien="R0">
        </instance>
        <instance x="544" y="1488" name="XLXI_1" orien="R0">
        </instance>
        <branch name="XLXN_20">
            <wire x2="1744" y1="1392" y2="1392" x1="928" />
            <wire x2="1744" y1="1392" y2="1520" x1="1744" />
            <wire x2="1792" y1="1520" y2="1520" x1="1744" />
        </branch>
        <instance x="2912" y="1344" name="XLXI_5" orien="R0" />
        <branch name="XLXN_22">
            <wire x2="2976" y1="1136" y2="1216" x1="2976" />
            <wire x2="3072" y1="1136" y2="1136" x1="2976" />
            <wire x2="3072" y1="1136" y2="1440" x1="3072" />
            <wire x2="3168" y1="1440" y2="1440" x1="3072" />
        </branch>
        <branch name="XLXN_23(11:0)">
            <wire x2="2480" y1="1264" y2="1264" x1="2240" />
            <wire x2="2480" y1="1264" y2="1568" x1="2480" />
            <wire x2="3168" y1="1568" y2="1568" x1="2480" />
        </branch>
        <branch name="XLXN_25">
            <wire x2="2704" y1="1520" y2="1520" x1="2240" />
            <wire x2="2704" y1="1504" y2="1520" x1="2704" />
            <wire x2="3168" y1="1504" y2="1504" x1="2704" />
        </branch>
        <branch name="rx_P97">
            <wire x2="544" y1="1456" y2="1456" x1="512" />
        </branch>
        <iomarker fontsize="28" x="512" y="1456" name="rx_P97" orien="R180" />
        <branch name="clk_P123">
            <wire x2="512" y1="816" y2="816" x1="496" />
            <wire x2="496" y1="816" y2="912" x1="496" />
            <wire x2="496" y1="912" y2="1392" x1="496" />
            <wire x2="544" y1="1392" y2="1392" x1="496" />
            <wire x2="976" y1="912" y2="912" x1="496" />
            <wire x2="2512" y1="912" y2="912" x1="976" />
            <wire x2="3376" y1="912" y2="912" x1="2512" />
            <wire x2="3376" y1="912" y2="1280" x1="3376" />
            <wire x2="4256" y1="1280" y2="1280" x1="3376" />
        </branch>
        <iomarker fontsize="28" x="512" y="816" name="clk_P123" orien="R0" />
        <branch name="seg7(6:0)">
            <wire x2="4800" y1="1280" y2="1280" x1="4768" />
        </branch>
        <iomarker fontsize="28" x="4800" y="1280" name="seg7(6:0)" orien="R0" />
        <branch name="common(3:0)">
            <wire x2="4800" y1="1536" y2="1536" x1="4768" />
        </branch>
        <iomarker fontsize="28" x="4800" y="1536" name="common(3:0)" orien="R0" />
        <branch name="XLXN_59(2:0)">
            <wire x2="1360" y1="1520" y2="1520" x1="928" />
            <wire x2="1360" y1="1520" y2="1712" x1="1360" />
            <wire x2="1792" y1="1712" y2="1712" x1="1360" />
        </branch>
        <branch name="XLXN_60(11:0)">
            <wire x2="1792" y1="1456" y2="1456" x1="928" />
        </branch>
        <branch name="XLXN_61(2:0)">
            <wire x2="3920" y1="1632" y2="1632" x1="3584" />
            <wire x2="3920" y1="1344" y2="1632" x1="3920" />
            <wire x2="4256" y1="1344" y2="1344" x1="3920" />
        </branch>
        <branch name="XLXN_62(2:0)">
            <wire x2="3936" y1="1696" y2="1696" x1="3584" />
            <wire x2="3936" y1="1408" y2="1696" x1="3936" />
            <wire x2="4256" y1="1408" y2="1408" x1="3936" />
        </branch>
        <branch name="XLXN_63(2:0)">
            <wire x2="3952" y1="1760" y2="1760" x1="3584" />
            <wire x2="3952" y1="1472" y2="1760" x1="3952" />
            <wire x2="4256" y1="1472" y2="1472" x1="3952" />
        </branch>
        <branch name="XLXN_64(2:0)">
            <wire x2="3968" y1="1824" y2="1824" x1="3584" />
            <wire x2="3968" y1="1536" y2="1824" x1="3968" />
            <wire x2="4256" y1="1536" y2="1536" x1="3968" />
        </branch>
    </sheet>
</drawing>