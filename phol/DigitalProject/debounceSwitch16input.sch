<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk_P123" />
        <signal name="i_Switch(15:0)" />
        <signal name="i_Switch(15)" />
        <signal name="i_Switch(14)" />
        <signal name="i_Switch(13)" />
        <signal name="i_Switch(12)" />
        <signal name="i_Switch(11)" />
        <signal name="i_Switch(10)" />
        <signal name="i_Switch(9)" />
        <signal name="i_Switch(8)" />
        <signal name="i_Switch(7)" />
        <signal name="i_Switch(6)" />
        <signal name="i_Switch(5)" />
        <signal name="i_Switch(4)" />
        <signal name="i_Switch(3)" />
        <signal name="i_Switch(2)" />
        <signal name="i_Switch(1)" />
        <signal name="i_Switch(0)" />
        <signal name="o_Switch(15:0)" />
        <signal name="o_Switch(15)" />
        <signal name="o_Switch(14)" />
        <signal name="o_Switch(12)" />
        <signal name="o_Switch(11)" />
        <signal name="o_Switch(10)" />
        <signal name="o_Switch(9)" />
        <signal name="o_Switch(8)" />
        <signal name="o_Switch(6)" />
        <signal name="o_Switch(4)" />
        <signal name="o_Switch(3)" />
        <signal name="o_Switch(2)" />
        <signal name="o_Switch(1)" />
        <signal name="o_Switch(0)" />
        <signal name="o_Switch(13)" />
        <signal name="o_Switch(7)" />
        <signal name="o_Switch(5)" />
        <port polarity="Input" name="clk_P123" />
        <port polarity="Input" name="i_Switch(15:0)" />
        <port polarity="Output" name="o_Switch(15:0)" />
        <blockdef name="Debounce_Switch">
            <timestamp>2020-12-16T4:14:52</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <block symbolname="Debounce_Switch" name="XLXI_1">
            <blockpin signalname="clk_P123" name="i_Clk" />
            <blockpin signalname="i_Switch(15)" name="i_Switch" />
            <blockpin signalname="o_Switch(15)" name="o_Switch" />
        </block>
        <block symbolname="Debounce_Switch" name="XLXI_2">
            <blockpin signalname="clk_P123" name="i_Clk" />
            <blockpin signalname="i_Switch(14)" name="i_Switch" />
            <blockpin signalname="o_Switch(14)" name="o_Switch" />
        </block>
        <block symbolname="Debounce_Switch" name="XLXI_3">
            <blockpin signalname="clk_P123" name="i_Clk" />
            <blockpin signalname="i_Switch(13)" name="i_Switch" />
            <blockpin signalname="o_Switch(13)" name="o_Switch" />
        </block>
        <block symbolname="Debounce_Switch" name="XLXI_4">
            <blockpin signalname="clk_P123" name="i_Clk" />
            <blockpin signalname="i_Switch(12)" name="i_Switch" />
            <blockpin signalname="o_Switch(12)" name="o_Switch" />
        </block>
        <block symbolname="Debounce_Switch" name="XLXI_5">
            <blockpin signalname="clk_P123" name="i_Clk" />
            <blockpin signalname="i_Switch(11)" name="i_Switch" />
            <blockpin signalname="o_Switch(11)" name="o_Switch" />
        </block>
        <block symbolname="Debounce_Switch" name="XLXI_6">
            <blockpin signalname="clk_P123" name="i_Clk" />
            <blockpin signalname="i_Switch(10)" name="i_Switch" />
            <blockpin signalname="o_Switch(10)" name="o_Switch" />
        </block>
        <block symbolname="Debounce_Switch" name="XLXI_18">
            <blockpin signalname="clk_P123" name="i_Clk" />
            <blockpin signalname="i_Switch(9)" name="i_Switch" />
            <blockpin signalname="o_Switch(9)" name="o_Switch" />
        </block>
        <block symbolname="Debounce_Switch" name="XLXI_19">
            <blockpin signalname="clk_P123" name="i_Clk" />
            <blockpin signalname="i_Switch(8)" name="i_Switch" />
            <blockpin signalname="o_Switch(8)" name="o_Switch" />
        </block>
        <block symbolname="Debounce_Switch" name="XLXI_20">
            <blockpin signalname="clk_P123" name="i_Clk" />
            <blockpin signalname="i_Switch(7)" name="i_Switch" />
            <blockpin signalname="o_Switch(7)" name="o_Switch" />
        </block>
        <block symbolname="Debounce_Switch" name="XLXI_21">
            <blockpin signalname="clk_P123" name="i_Clk" />
            <blockpin signalname="i_Switch(6)" name="i_Switch" />
            <blockpin signalname="o_Switch(6)" name="o_Switch" />
        </block>
        <block symbolname="Debounce_Switch" name="XLXI_22">
            <blockpin signalname="clk_P123" name="i_Clk" />
            <blockpin signalname="i_Switch(5)" name="i_Switch" />
            <blockpin signalname="o_Switch(5)" name="o_Switch" />
        </block>
        <block symbolname="Debounce_Switch" name="XLXI_23">
            <blockpin signalname="clk_P123" name="i_Clk" />
            <blockpin signalname="i_Switch(4)" name="i_Switch" />
            <blockpin signalname="o_Switch(4)" name="o_Switch" />
        </block>
        <block symbolname="Debounce_Switch" name="XLXI_24">
            <blockpin signalname="clk_P123" name="i_Clk" />
            <blockpin signalname="i_Switch(3)" name="i_Switch" />
            <blockpin signalname="o_Switch(3)" name="o_Switch" />
        </block>
        <block symbolname="Debounce_Switch" name="XLXI_25">
            <blockpin signalname="clk_P123" name="i_Clk" />
            <blockpin signalname="i_Switch(2)" name="i_Switch" />
            <blockpin signalname="o_Switch(2)" name="o_Switch" />
        </block>
        <block symbolname="Debounce_Switch" name="XLXI_26">
            <blockpin signalname="clk_P123" name="i_Clk" />
            <blockpin signalname="i_Switch(1)" name="i_Switch" />
            <blockpin signalname="o_Switch(1)" name="o_Switch" />
        </block>
        <block symbolname="Debounce_Switch" name="XLXI_27">
            <blockpin signalname="clk_P123" name="i_Clk" />
            <blockpin signalname="i_Switch(0)" name="i_Switch" />
            <blockpin signalname="o_Switch(0)" name="o_Switch" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7609" height="5382">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <instance x="800" y="240" name="XLXI_1" orien="R0">
        </instance>
        <instance x="800" y="496" name="XLXI_2" orien="R0">
        </instance>
        <instance x="800" y="720" name="XLXI_3" orien="R0">
        </instance>
        <instance x="800" y="928" name="XLXI_4" orien="R0">
        </instance>
        <instance x="800" y="1136" name="XLXI_5" orien="R0">
        </instance>
        <instance x="800" y="1344" name="XLXI_6" orien="R0">
        </instance>
        <instance x="816" y="1648" name="XLXI_18" orien="R0">
        </instance>
        <instance x="816" y="1904" name="XLXI_19" orien="R0">
        </instance>
        <instance x="816" y="2128" name="XLXI_20" orien="R0">
        </instance>
        <instance x="816" y="2336" name="XLXI_21" orien="R0">
        </instance>
        <instance x="816" y="2544" name="XLXI_22" orien="R0">
        </instance>
        <instance x="816" y="2752" name="XLXI_23" orien="R0">
        </instance>
        <instance x="816" y="2976" name="XLXI_24" orien="R0">
        </instance>
        <instance x="816" y="3232" name="XLXI_25" orien="R0">
        </instance>
        <instance x="816" y="3456" name="XLXI_26" orien="R0">
        </instance>
        <instance x="816" y="3664" name="XLXI_27" orien="R0">
        </instance>
        <branch name="clk_P123">
            <wire x2="640" y1="144" y2="144" x1="512" />
            <wire x2="800" y1="144" y2="144" x1="640" />
            <wire x2="640" y1="144" y2="400" x1="640" />
            <wire x2="640" y1="400" y2="624" x1="640" />
            <wire x2="640" y1="624" y2="832" x1="640" />
            <wire x2="640" y1="832" y2="1040" x1="640" />
            <wire x2="640" y1="1040" y2="1248" x1="640" />
            <wire x2="640" y1="1248" y2="1552" x1="640" />
            <wire x2="640" y1="1552" y2="1808" x1="640" />
            <wire x2="640" y1="1808" y2="2032" x1="640" />
            <wire x2="640" y1="2032" y2="2240" x1="640" />
            <wire x2="640" y1="2240" y2="2448" x1="640" />
            <wire x2="640" y1="2448" y2="2656" x1="640" />
            <wire x2="640" y1="2656" y2="2880" x1="640" />
            <wire x2="640" y1="2880" y2="2944" x1="640" />
            <wire x2="640" y1="2944" y2="3136" x1="640" />
            <wire x2="640" y1="3136" y2="3360" x1="640" />
            <wire x2="640" y1="3360" y2="3568" x1="640" />
            <wire x2="816" y1="3568" y2="3568" x1="640" />
            <wire x2="816" y1="3360" y2="3360" x1="640" />
            <wire x2="816" y1="3136" y2="3136" x1="640" />
            <wire x2="816" y1="2880" y2="2880" x1="640" />
            <wire x2="816" y1="2656" y2="2656" x1="640" />
            <wire x2="816" y1="2448" y2="2448" x1="640" />
            <wire x2="816" y1="2240" y2="2240" x1="640" />
            <wire x2="816" y1="2032" y2="2032" x1="640" />
            <wire x2="816" y1="1808" y2="1808" x1="640" />
            <wire x2="816" y1="1552" y2="1552" x1="640" />
            <wire x2="800" y1="1248" y2="1248" x1="640" />
            <wire x2="800" y1="1040" y2="1040" x1="640" />
            <wire x2="800" y1="832" y2="832" x1="640" />
            <wire x2="800" y1="624" y2="624" x1="640" />
            <wire x2="800" y1="400" y2="400" x1="640" />
        </branch>
        <branch name="i_Switch(15:0)">
            <wire x2="448" y1="288" y2="288" x1="304" />
        </branch>
        <iomarker fontsize="28" x="304" y="288" name="i_Switch(15:0)" orien="R180" />
        <iomarker fontsize="28" x="512" y="144" name="clk_P123" orien="R180" />
        <branch name="i_Switch(15)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="784" y="208" type="branch" />
            <wire x2="800" y1="208" y2="208" x1="784" />
        </branch>
        <branch name="i_Switch(14)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="784" y="464" type="branch" />
            <wire x2="800" y1="464" y2="464" x1="784" />
        </branch>
        <branch name="i_Switch(13)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="784" y="688" type="branch" />
            <wire x2="800" y1="688" y2="688" x1="784" />
        </branch>
        <branch name="i_Switch(12)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="784" y="896" type="branch" />
            <wire x2="800" y1="896" y2="896" x1="784" />
        </branch>
        <branch name="i_Switch(11)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="784" y="1104" type="branch" />
            <wire x2="800" y1="1104" y2="1104" x1="784" />
        </branch>
        <branch name="i_Switch(10)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="784" y="1312" type="branch" />
            <wire x2="800" y1="1312" y2="1312" x1="784" />
        </branch>
        <branch name="i_Switch(9)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="800" y="1616" type="branch" />
            <wire x2="816" y1="1616" y2="1616" x1="800" />
        </branch>
        <branch name="i_Switch(8)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="800" y="1872" type="branch" />
            <wire x2="816" y1="1872" y2="1872" x1="800" />
        </branch>
        <branch name="i_Switch(7)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="800" y="2096" type="branch" />
            <wire x2="816" y1="2096" y2="2096" x1="800" />
        </branch>
        <branch name="i_Switch(6)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="800" y="2304" type="branch" />
            <wire x2="816" y1="2304" y2="2304" x1="800" />
        </branch>
        <branch name="i_Switch(5)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="800" y="2512" type="branch" />
            <wire x2="816" y1="2512" y2="2512" x1="800" />
        </branch>
        <branch name="i_Switch(4)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="800" y="2720" type="branch" />
            <wire x2="816" y1="2720" y2="2720" x1="800" />
        </branch>
        <branch name="i_Switch(3)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="800" y="2944" type="branch" />
            <wire x2="816" y1="2944" y2="2944" x1="800" />
        </branch>
        <branch name="i_Switch(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="800" y="3200" type="branch" />
            <wire x2="816" y1="3200" y2="3200" x1="800" />
        </branch>
        <branch name="i_Switch(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="800" y="3424" type="branch" />
            <wire x2="816" y1="3424" y2="3424" x1="800" />
        </branch>
        <branch name="i_Switch(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="800" y="3632" type="branch" />
            <wire x2="816" y1="3632" y2="3632" x1="800" />
        </branch>
        <branch name="o_Switch(15:0)">
            <wire x2="1584" y1="272" y2="272" x1="1440" />
            <wire x2="1600" y1="272" y2="272" x1="1584" />
        </branch>
        <iomarker fontsize="28" x="1600" y="272" name="o_Switch(15:0)" orien="R0" />
        <branch name="o_Switch(15)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1216" y="144" type="branch" />
            <wire x2="1216" y1="144" y2="144" x1="1184" />
        </branch>
        <branch name="o_Switch(14)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1232" y="400" type="branch" />
            <wire x2="1232" y1="400" y2="400" x1="1184" />
        </branch>
        <branch name="o_Switch(13)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1232" y="624" type="branch" />
            <wire x2="1216" y1="624" y2="624" x1="1184" />
            <wire x2="1232" y1="624" y2="624" x1="1216" />
        </branch>
        <branch name="o_Switch(12)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1232" y="832" type="branch" />
            <wire x2="1232" y1="832" y2="832" x1="1184" />
        </branch>
        <branch name="o_Switch(11)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1232" y="1040" type="branch" />
            <wire x2="1232" y1="1040" y2="1040" x1="1184" />
        </branch>
        <branch name="o_Switch(10)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1232" y="1248" type="branch" />
            <wire x2="1232" y1="1248" y2="1248" x1="1184" />
        </branch>
        <branch name="o_Switch(9)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1248" y="1552" type="branch" />
            <wire x2="1232" y1="1552" y2="1552" x1="1200" />
            <wire x2="1248" y1="1552" y2="1552" x1="1232" />
        </branch>
        <branch name="o_Switch(8)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1264" y="1808" type="branch" />
            <wire x2="1264" y1="1808" y2="1808" x1="1200" />
        </branch>
        <branch name="o_Switch(7)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1232" y="2032" type="branch" />
            <wire x2="1232" y1="2032" y2="2032" x1="1200" />
        </branch>
        <branch name="o_Switch(6)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1264" y="2240" type="branch" />
            <wire x2="1264" y1="2240" y2="2240" x1="1200" />
        </branch>
        <branch name="o_Switch(4)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1264" y="2656" type="branch" />
            <wire x2="1264" y1="2656" y2="2656" x1="1200" />
        </branch>
        <branch name="o_Switch(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1264" y="2880" type="branch" />
            <wire x2="1264" y1="2880" y2="2880" x1="1200" />
        </branch>
        <branch name="o_Switch(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1264" y="3136" type="branch" />
            <wire x2="1264" y1="3136" y2="3136" x1="1200" />
        </branch>
        <branch name="o_Switch(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1296" y="3360" type="branch" />
            <wire x2="1296" y1="3360" y2="3360" x1="1200" />
        </branch>
        <branch name="o_Switch(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1216" y="3568" type="branch" />
            <wire x2="1216" y1="3568" y2="3568" x1="1200" />
        </branch>
        <branch name="o_Switch(5)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1248" y="2448" type="branch" />
            <wire x2="1248" y1="2448" y2="2448" x1="1200" />
        </branch>
    </sheet>
</drawing>