<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="move_in(15)">
        </signal>
        <signal name="move_in(9)">
        </signal>
        <signal name="move_in(8)">
        </signal>
        <signal name="move_in(10)">
        </signal>
        <signal name="move_in(11)">
        </signal>
        <signal name="move_in(12)">
        </signal>
        <signal name="move_in(13)">
        </signal>
        <signal name="move_in(14)">
        </signal>
        <signal name="XLXN_352" />
        <signal name="XLXN_353" />
        <signal name="XLXN_355" />
        <signal name="XLXN_354" />
        <signal name="comp_1" />
        <signal name="XLXN_360" />
        <signal name="comp_2" />
        <signal name="RESET" />
        <signal name="move_in(7)">
        </signal>
        <signal name="move_in(1)">
        </signal>
        <signal name="move_in(0)">
        </signal>
        <signal name="move_in(2)">
        </signal>
        <signal name="move_in(3)">
        </signal>
        <signal name="move_in(4)">
        </signal>
        <signal name="move_in(5)">
        </signal>
        <signal name="move_in(6)">
        </signal>
        <signal name="comp_3" />
        <signal name="XLXN_511" />
        <signal name="VCC" />
        <signal name="XLXN_519" />
        <signal name="XLXN_521" />
        <signal name="XLXN_522" />
        <signal name="XLXN_523" />
        <signal name="XLXN_526" />
        <signal name="comp_4" />
        <signal name="EQUAL" />
        <signal name="move_out(11)" />
        <signal name="move_out(10)" />
        <signal name="move_out(3)" />
        <signal name="move_out(4)" />
        <signal name="move_out(5)" />
        <signal name="move_out(0)" />
        <signal name="move_out(1)" />
        <signal name="move_out(2)" />
        <signal name="move_out(6)" />
        <signal name="move_out(7)" />
        <signal name="move_out(8)" />
        <signal name="move_out(11:0)" />
        <signal name="move_out(9)" />
        <signal name="move_in(15:0)" />
        <port polarity="Input" name="RESET" />
        <port polarity="Input" name="VCC" />
        <port polarity="Output" name="EQUAL" />
        <port polarity="Output" name="move_out(11:0)" />
        <port polarity="Input" name="move_in(15:0)" />
        <blockdef name="or4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="48" y1="-256" y2="-256" x1="0" />
            <line x2="192" y1="-160" y2="-160" x1="256" />
            <arc ex="112" ey="-208" sx="192" sy="-160" r="88" cx="116" cy="-120" />
            <line x2="48" y1="-208" y2="-208" x1="112" />
            <line x2="48" y1="-112" y2="-112" x1="112" />
            <line x2="48" y1="-256" y2="-208" x1="48" />
            <line x2="48" y1="-64" y2="-112" x1="48" />
            <arc ex="48" ey="-208" sx="48" sy="-112" r="56" cx="16" cy="-160" />
            <arc ex="192" ey="-160" sx="112" sy="-112" r="88" cx="116" cy="-200" />
        </blockdef>
        <blockdef name="or8">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="48" y1="-128" y2="-128" x1="0" />
            <line x2="48" y1="-192" y2="-192" x1="0" />
            <line x2="48" y1="-384" y2="-384" x1="0" />
            <line x2="48" y1="-448" y2="-448" x1="0" />
            <line x2="48" y1="-512" y2="-512" x1="0" />
            <line x2="192" y1="-288" y2="-288" x1="256" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <arc ex="112" ey="-336" sx="192" sy="-288" r="88" cx="116" cy="-248" />
            <line x2="48" y1="-240" y2="-240" x1="112" />
            <arc ex="192" ey="-288" sx="112" sy="-240" r="88" cx="116" cy="-328" />
            <arc ex="48" ey="-336" sx="48" sy="-240" r="56" cx="16" cy="-288" />
            <line x2="48" y1="-336" y2="-336" x1="112" />
            <line x2="48" y1="-336" y2="-512" x1="48" />
            <line x2="48" y1="-64" y2="-240" x1="48" />
        </blockdef>
        <blockdef name="fd4ce">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="320" y1="-448" y2="-448" x1="384" />
            <line x2="320" y1="-384" y2="-384" x1="384" />
            <line x2="64" y1="-384" y2="-384" x1="0" />
            <line x2="64" y1="-448" y2="-448" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="320" y1="-320" y2="-320" x1="384" />
            <rect width="256" x="64" y="-512" height="448" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="comp4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-640" height="576" />
            <line x2="320" y1="-352" y2="-352" x1="384" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-384" y2="-384" x1="0" />
            <line x2="64" y1="-448" y2="-448" x1="0" />
            <line x2="64" y1="-576" y2="-576" x1="0" />
            <line x2="64" y1="-512" y2="-512" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
        </blockdef>
        <block symbolname="or4" name="XLXI_60">
            <blockpin signalname="move_in(8)" name="I0" />
            <blockpin signalname="move_in(9)" name="I1" />
            <blockpin signalname="move_in(10)" name="I2" />
            <blockpin signalname="move_in(11)" name="I3" />
            <blockpin signalname="XLXN_355" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_59">
            <blockpin signalname="move_in(8)" name="I0" />
            <blockpin signalname="move_in(9)" name="I1" />
            <blockpin signalname="move_in(12)" name="I2" />
            <blockpin signalname="move_in(13)" name="I3" />
            <blockpin signalname="XLXN_354" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_58">
            <blockpin signalname="move_in(8)" name="I0" />
            <blockpin signalname="move_in(10)" name="I1" />
            <blockpin signalname="move_in(12)" name="I2" />
            <blockpin signalname="move_in(14)" name="I3" />
            <blockpin signalname="XLXN_353" name="O" />
        </block>
        <block symbolname="or8" name="XLXI_57">
            <blockpin signalname="move_in(8)" name="I0" />
            <blockpin signalname="move_in(9)" name="I1" />
            <blockpin signalname="move_in(10)" name="I2" />
            <blockpin signalname="move_in(11)" name="I3" />
            <blockpin signalname="move_in(12)" name="I4" />
            <blockpin signalname="move_in(13)" name="I5" />
            <blockpin signalname="move_in(14)" name="I6" />
            <blockpin signalname="move_in(15)" name="I7" />
            <blockpin signalname="XLXN_352" name="O" />
        </block>
        <block symbolname="or8" name="XLXI_151">
            <blockpin signalname="move_in(8)" name="I0" />
            <blockpin signalname="move_in(9)" name="I1" />
            <blockpin signalname="move_in(10)" name="I2" />
            <blockpin signalname="move_in(11)" name="I3" />
            <blockpin signalname="move_in(12)" name="I4" />
            <blockpin signalname="move_in(13)" name="I5" />
            <blockpin signalname="move_in(14)" name="I6" />
            <blockpin signalname="move_in(15)" name="I7" />
            <blockpin signalname="XLXN_360" name="O" />
        </block>
        <block symbolname="fd4ce" name="XLXI_175">
            <blockpin signalname="XLXN_360" name="C" />
            <blockpin signalname="VCC" name="CE" />
            <blockpin signalname="XLXN_519" name="CLR" />
            <blockpin signalname="XLXN_352" name="D0" />
            <blockpin signalname="XLXN_353" name="D1" />
            <blockpin signalname="XLXN_354" name="D2" />
            <blockpin signalname="XLXN_355" name="D3" />
            <blockpin signalname="comp_1" name="Q0" />
            <blockpin signalname="move_out(3)" name="Q1" />
            <blockpin signalname="move_out(4)" name="Q2" />
            <blockpin signalname="move_out(5)" name="Q3" />
        </block>
        <block symbolname="fd4ce" name="XLXI_176">
            <blockpin signalname="XLXN_360" name="C" />
            <blockpin signalname="VCC" name="CE" />
            <blockpin signalname="XLXN_519" name="CLR" />
            <blockpin signalname="comp_1" name="D0" />
            <blockpin signalname="move_out(3)" name="D1" />
            <blockpin signalname="move_out(4)" name="D2" />
            <blockpin signalname="move_out(5)" name="D3" />
            <blockpin signalname="comp_2" name="Q0" />
            <blockpin signalname="move_out(9)" name="Q1" />
            <blockpin signalname="move_out(10)" name="Q2" />
            <blockpin signalname="move_out(11)" name="Q3" />
        </block>
        <block symbolname="inv" name="XLXI_231">
            <blockpin signalname="RESET" name="I" />
            <blockpin signalname="XLXN_519" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_232">
            <blockpin signalname="move_in(0)" name="I0" />
            <blockpin signalname="move_in(1)" name="I1" />
            <blockpin signalname="move_in(2)" name="I2" />
            <blockpin signalname="move_in(3)" name="I3" />
            <blockpin signalname="XLXN_523" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_233">
            <blockpin signalname="move_in(0)" name="I0" />
            <blockpin signalname="move_in(1)" name="I1" />
            <blockpin signalname="move_in(4)" name="I2" />
            <blockpin signalname="move_in(5)" name="I3" />
            <blockpin signalname="XLXN_522" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_234">
            <blockpin signalname="move_in(0)" name="I0" />
            <blockpin signalname="move_in(2)" name="I1" />
            <blockpin signalname="move_in(4)" name="I2" />
            <blockpin signalname="move_in(6)" name="I3" />
            <blockpin signalname="XLXN_521" name="O" />
        </block>
        <block symbolname="or8" name="XLXI_235">
            <blockpin signalname="move_in(0)" name="I0" />
            <blockpin signalname="move_in(1)" name="I1" />
            <blockpin signalname="move_in(2)" name="I2" />
            <blockpin signalname="move_in(3)" name="I3" />
            <blockpin signalname="move_in(4)" name="I4" />
            <blockpin signalname="move_in(5)" name="I5" />
            <blockpin signalname="move_in(6)" name="I6" />
            <blockpin signalname="move_in(7)" name="I7" />
            <blockpin signalname="XLXN_511" name="O" />
        </block>
        <block symbolname="or8" name="XLXI_236">
            <blockpin signalname="move_in(0)" name="I0" />
            <blockpin signalname="move_in(1)" name="I1" />
            <blockpin signalname="move_in(2)" name="I2" />
            <blockpin signalname="move_in(3)" name="I3" />
            <blockpin signalname="move_in(4)" name="I4" />
            <blockpin signalname="move_in(5)" name="I5" />
            <blockpin signalname="move_in(6)" name="I6" />
            <blockpin signalname="move_in(7)" name="I7" />
            <blockpin signalname="XLXN_526" name="O" />
        </block>
        <block symbolname="fd4ce" name="XLXI_238">
            <blockpin signalname="XLXN_526" name="C" />
            <blockpin signalname="VCC" name="CE" />
            <blockpin signalname="XLXN_519" name="CLR" />
            <blockpin signalname="comp_3" name="D0" />
            <blockpin signalname="move_out(0)" name="D1" />
            <blockpin signalname="move_out(1)" name="D2" />
            <blockpin signalname="move_out(2)" name="D3" />
            <blockpin signalname="comp_4" name="Q0" />
            <blockpin signalname="move_out(6)" name="Q1" />
            <blockpin signalname="move_out(7)" name="Q2" />
            <blockpin signalname="move_out(8)" name="Q3" />
        </block>
        <block symbolname="fd4ce" name="XLXI_237">
            <blockpin signalname="XLXN_526" name="C" />
            <blockpin signalname="VCC" name="CE" />
            <blockpin signalname="XLXN_519" name="CLR" />
            <blockpin signalname="XLXN_511" name="D0" />
            <blockpin signalname="XLXN_521" name="D1" />
            <blockpin signalname="XLXN_522" name="D2" />
            <blockpin signalname="XLXN_523" name="D3" />
            <blockpin signalname="comp_3" name="Q0" />
            <blockpin signalname="move_out(0)" name="Q1" />
            <blockpin signalname="move_out(1)" name="Q2" />
            <blockpin signalname="move_out(2)" name="Q3" />
        </block>
        <block symbolname="comp4" name="XLXI_248">
            <blockpin signalname="comp_1" name="A0" />
            <blockpin signalname="comp_2" name="A1" />
            <blockpin signalname="comp_3" name="A2" />
            <blockpin signalname="comp_4" name="A3" />
            <blockpin signalname="VCC" name="B0" />
            <blockpin signalname="VCC" name="B1" />
            <blockpin signalname="VCC" name="B2" />
            <blockpin signalname="VCC" name="B3" />
            <blockpin signalname="EQUAL" name="EQ" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3801" height="5382">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <branch name="move_in(15)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="112" y="240" type="branch" />
            <wire x2="432" y1="240" y2="240" x1="112" />
            <wire x2="432" y1="240" y2="1536" x1="432" />
            <wire x2="512" y1="1536" y2="1536" x1="432" />
            <wire x2="512" y1="240" y2="240" x1="432" />
        </branch>
        <branch name="move_in(9)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="112" y="624" type="branch" />
            <wire x2="176" y1="624" y2="624" x1="112" />
            <wire x2="176" y1="624" y2="1136" x1="176" />
            <wire x2="176" y1="1136" y2="1376" x1="176" />
            <wire x2="512" y1="1376" y2="1376" x1="176" />
            <wire x2="512" y1="1136" y2="1136" x1="176" />
            <wire x2="336" y1="624" y2="624" x1="176" />
            <wire x2="512" y1="624" y2="624" x1="336" />
            <wire x2="336" y1="624" y2="1920" x1="336" />
            <wire x2="512" y1="1920" y2="1920" x1="336" />
        </branch>
        <branch name="move_in(8)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="112" y="688" type="branch" />
            <wire x2="160" y1="688" y2="688" x1="112" />
            <wire x2="160" y1="688" y2="960" x1="160" />
            <wire x2="160" y1="960" y2="1200" x1="160" />
            <wire x2="160" y1="1200" y2="1440" x1="160" />
            <wire x2="512" y1="1440" y2="1440" x1="160" />
            <wire x2="512" y1="1200" y2="1200" x1="160" />
            <wire x2="512" y1="960" y2="960" x1="160" />
            <wire x2="320" y1="688" y2="688" x1="160" />
            <wire x2="512" y1="688" y2="688" x1="320" />
            <wire x2="320" y1="688" y2="1984" x1="320" />
            <wire x2="512" y1="1984" y2="1984" x1="320" />
        </branch>
        <instance x="512" y="1504" name="XLXI_60" orien="R0" />
        <instance x="512" y="1264" name="XLXI_59" orien="R0" />
        <instance x="512" y="1024" name="XLXI_58" orien="R0" />
        <instance x="512" y="752" name="XLXI_57" orien="R0" />
        <branch name="move_in(10)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="112" y="560" type="branch" />
            <wire x2="192" y1="560" y2="560" x1="112" />
            <wire x2="192" y1="560" y2="896" x1="192" />
            <wire x2="192" y1="896" y2="1312" x1="192" />
            <wire x2="512" y1="1312" y2="1312" x1="192" />
            <wire x2="512" y1="896" y2="896" x1="192" />
            <wire x2="352" y1="560" y2="560" x1="192" />
            <wire x2="512" y1="560" y2="560" x1="352" />
            <wire x2="352" y1="560" y2="1856" x1="352" />
            <wire x2="512" y1="1856" y2="1856" x1="352" />
        </branch>
        <branch name="move_in(11)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="112" y="496" type="branch" />
            <wire x2="208" y1="496" y2="496" x1="112" />
            <wire x2="208" y1="496" y2="1248" x1="208" />
            <wire x2="512" y1="1248" y2="1248" x1="208" />
            <wire x2="368" y1="496" y2="496" x1="208" />
            <wire x2="512" y1="496" y2="496" x1="368" />
            <wire x2="368" y1="496" y2="1792" x1="368" />
            <wire x2="512" y1="1792" y2="1792" x1="368" />
        </branch>
        <branch name="move_in(12)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="112" y="432" type="branch" />
            <wire x2="224" y1="432" y2="432" x1="112" />
            <wire x2="224" y1="432" y2="832" x1="224" />
            <wire x2="224" y1="832" y2="1072" x1="224" />
            <wire x2="512" y1="1072" y2="1072" x1="224" />
            <wire x2="512" y1="832" y2="832" x1="224" />
            <wire x2="384" y1="432" y2="432" x1="224" />
            <wire x2="512" y1="432" y2="432" x1="384" />
            <wire x2="384" y1="432" y2="1728" x1="384" />
            <wire x2="512" y1="1728" y2="1728" x1="384" />
        </branch>
        <branch name="move_in(13)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="112" y="368" type="branch" />
            <wire x2="240" y1="368" y2="368" x1="112" />
            <wire x2="240" y1="368" y2="1008" x1="240" />
            <wire x2="512" y1="1008" y2="1008" x1="240" />
            <wire x2="400" y1="368" y2="368" x1="240" />
            <wire x2="512" y1="368" y2="368" x1="400" />
            <wire x2="400" y1="368" y2="1664" x1="400" />
            <wire x2="512" y1="1664" y2="1664" x1="400" />
        </branch>
        <branch name="move_in(14)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="112" y="304" type="branch" />
            <wire x2="256" y1="304" y2="304" x1="112" />
            <wire x2="256" y1="304" y2="768" x1="256" />
            <wire x2="512" y1="768" y2="768" x1="256" />
            <wire x2="416" y1="304" y2="304" x1="256" />
            <wire x2="512" y1="304" y2="304" x1="416" />
            <wire x2="416" y1="304" y2="1600" x1="416" />
            <wire x2="512" y1="1600" y2="1600" x1="416" />
        </branch>
        <instance x="512" y="2048" name="XLXI_151" orien="R0" />
        <branch name="XLXN_352">
            <wire x2="1392" y1="464" y2="464" x1="768" />
        </branch>
        <branch name="XLXN_353">
            <wire x2="1392" y1="528" y2="528" x1="768" />
            <wire x2="768" y1="528" y2="864" x1="768" />
        </branch>
        <branch name="XLXN_355">
            <wire x2="800" y1="1344" y2="1344" x1="768" />
            <wire x2="800" y1="656" y2="1344" x1="800" />
            <wire x2="1392" y1="656" y2="656" x1="800" />
        </branch>
        <branch name="XLXN_354">
            <wire x2="784" y1="1104" y2="1104" x1="768" />
            <wire x2="784" y1="592" y2="1104" x1="784" />
            <wire x2="1392" y1="592" y2="592" x1="784" />
        </branch>
        <instance x="1392" y="912" name="XLXI_175" orien="R0" />
        <branch name="comp_1">
            <wire x2="1792" y1="464" y2="464" x1="1776" />
            <wire x2="2176" y1="464" y2="464" x1="1792" />
            <wire x2="1792" y1="192" y2="464" x1="1792" />
            <wire x2="2976" y1="192" y2="192" x1="1792" />
        </branch>
        <instance x="2176" y="912" name="XLXI_176" orien="R0" />
        <branch name="comp_2">
            <wire x2="2576" y1="464" y2="464" x1="2560" />
            <wire x2="2576" y1="256" y2="464" x1="2576" />
            <wire x2="2976" y1="256" y2="256" x1="2576" />
        </branch>
        <iomarker fontsize="28" x="160" y="160" name="RESET" orien="R180" />
        <instance x="256" y="192" name="XLXI_231" orien="R0" />
        <branch name="RESET">
            <wire x2="256" y1="160" y2="160" x1="160" />
        </branch>
        <iomarker fontsize="28" x="160" y="96" name="VCC" orien="R180" />
        <branch name="move_in(7)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="112" y="2112" type="branch" />
            <wire x2="432" y1="2112" y2="2112" x1="112" />
            <wire x2="432" y1="2112" y2="3408" x1="432" />
            <wire x2="512" y1="3408" y2="3408" x1="432" />
            <wire x2="512" y1="2112" y2="2112" x1="432" />
        </branch>
        <branch name="move_in(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="112" y="2496" type="branch" />
            <wire x2="176" y1="2496" y2="2496" x1="112" />
            <wire x2="176" y1="2496" y2="3008" x1="176" />
            <wire x2="176" y1="3008" y2="3248" x1="176" />
            <wire x2="512" y1="3248" y2="3248" x1="176" />
            <wire x2="512" y1="3008" y2="3008" x1="176" />
            <wire x2="336" y1="2496" y2="2496" x1="176" />
            <wire x2="512" y1="2496" y2="2496" x1="336" />
            <wire x2="336" y1="2496" y2="3792" x1="336" />
            <wire x2="512" y1="3792" y2="3792" x1="336" />
        </branch>
        <branch name="move_in(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="112" y="2560" type="branch" />
            <wire x2="160" y1="2560" y2="2560" x1="112" />
            <wire x2="160" y1="2560" y2="2832" x1="160" />
            <wire x2="160" y1="2832" y2="3072" x1="160" />
            <wire x2="160" y1="3072" y2="3312" x1="160" />
            <wire x2="512" y1="3312" y2="3312" x1="160" />
            <wire x2="512" y1="3072" y2="3072" x1="160" />
            <wire x2="512" y1="2832" y2="2832" x1="160" />
            <wire x2="320" y1="2560" y2="2560" x1="160" />
            <wire x2="512" y1="2560" y2="2560" x1="320" />
            <wire x2="320" y1="2560" y2="3856" x1="320" />
            <wire x2="512" y1="3856" y2="3856" x1="320" />
        </branch>
        <instance x="512" y="3376" name="XLXI_232" orien="R0" />
        <instance x="512" y="3136" name="XLXI_233" orien="R0" />
        <instance x="512" y="2896" name="XLXI_234" orien="R0" />
        <instance x="512" y="2624" name="XLXI_235" orien="R0" />
        <branch name="move_in(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="112" y="2432" type="branch" />
            <wire x2="192" y1="2432" y2="2432" x1="112" />
            <wire x2="192" y1="2432" y2="2768" x1="192" />
            <wire x2="192" y1="2768" y2="3184" x1="192" />
            <wire x2="512" y1="3184" y2="3184" x1="192" />
            <wire x2="512" y1="2768" y2="2768" x1="192" />
            <wire x2="352" y1="2432" y2="2432" x1="192" />
            <wire x2="512" y1="2432" y2="2432" x1="352" />
            <wire x2="352" y1="2432" y2="3728" x1="352" />
            <wire x2="512" y1="3728" y2="3728" x1="352" />
        </branch>
        <branch name="move_in(3)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="112" y="2368" type="branch" />
            <wire x2="208" y1="2368" y2="2368" x1="112" />
            <wire x2="208" y1="2368" y2="3120" x1="208" />
            <wire x2="512" y1="3120" y2="3120" x1="208" />
            <wire x2="368" y1="2368" y2="2368" x1="208" />
            <wire x2="512" y1="2368" y2="2368" x1="368" />
            <wire x2="368" y1="2368" y2="3664" x1="368" />
            <wire x2="512" y1="3664" y2="3664" x1="368" />
        </branch>
        <branch name="move_in(4)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="112" y="2304" type="branch" />
            <wire x2="224" y1="2304" y2="2304" x1="112" />
            <wire x2="224" y1="2304" y2="2704" x1="224" />
            <wire x2="224" y1="2704" y2="2944" x1="224" />
            <wire x2="512" y1="2944" y2="2944" x1="224" />
            <wire x2="512" y1="2704" y2="2704" x1="224" />
            <wire x2="384" y1="2304" y2="2304" x1="224" />
            <wire x2="512" y1="2304" y2="2304" x1="384" />
            <wire x2="384" y1="2304" y2="3600" x1="384" />
            <wire x2="512" y1="3600" y2="3600" x1="384" />
        </branch>
        <branch name="move_in(5)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="112" y="2240" type="branch" />
            <wire x2="240" y1="2240" y2="2240" x1="112" />
            <wire x2="240" y1="2240" y2="2880" x1="240" />
            <wire x2="512" y1="2880" y2="2880" x1="240" />
            <wire x2="400" y1="2240" y2="2240" x1="240" />
            <wire x2="512" y1="2240" y2="2240" x1="400" />
            <wire x2="400" y1="2240" y2="3536" x1="400" />
            <wire x2="512" y1="3536" y2="3536" x1="400" />
        </branch>
        <branch name="move_in(6)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="112" y="2176" type="branch" />
            <wire x2="256" y1="2176" y2="2176" x1="112" />
            <wire x2="256" y1="2176" y2="2640" x1="256" />
            <wire x2="512" y1="2640" y2="2640" x1="256" />
            <wire x2="416" y1="2176" y2="2176" x1="256" />
            <wire x2="512" y1="2176" y2="2176" x1="416" />
            <wire x2="416" y1="2176" y2="3472" x1="416" />
            <wire x2="512" y1="3472" y2="3472" x1="416" />
        </branch>
        <instance x="512" y="3920" name="XLXI_236" orien="R0" />
        <branch name="XLXN_360">
            <wire x2="816" y1="1760" y2="1760" x1="768" />
            <wire x2="816" y1="960" y2="1760" x1="816" />
            <wire x2="1328" y1="960" y2="960" x1="816" />
            <wire x2="1792" y1="960" y2="960" x1="1328" />
            <wire x2="1328" y1="784" y2="960" x1="1328" />
            <wire x2="1392" y1="784" y2="784" x1="1328" />
            <wire x2="2176" y1="784" y2="784" x1="1792" />
            <wire x2="1792" y1="784" y2="960" x1="1792" />
        </branch>
        <branch name="VCC">
            <wire x2="1216" y1="96" y2="96" x1="160" />
            <wire x2="1216" y1="96" y2="720" x1="1216" />
            <wire x2="1216" y1="720" y2="1072" x1="1216" />
            <wire x2="1216" y1="1072" y2="1968" x1="1216" />
            <wire x2="1216" y1="1968" y2="2208" x1="1216" />
            <wire x2="1776" y1="2208" y2="2208" x1="1216" />
            <wire x2="1392" y1="1968" y2="1968" x1="1216" />
            <wire x2="1904" y1="1072" y2="1072" x1="1216" />
            <wire x2="1392" y1="720" y2="720" x1="1216" />
            <wire x2="2960" y1="96" y2="96" x1="1216" />
            <wire x2="2960" y1="96" y2="448" x1="2960" />
            <wire x2="2976" y1="448" y2="448" x1="2960" />
            <wire x2="2960" y1="448" y2="512" x1="2960" />
            <wire x2="2976" y1="512" y2="512" x1="2960" />
            <wire x2="2960" y1="512" y2="576" x1="2960" />
            <wire x2="2976" y1="576" y2="576" x1="2960" />
            <wire x2="2960" y1="576" y2="640" x1="2960" />
            <wire x2="2976" y1="640" y2="640" x1="2960" />
            <wire x2="1776" y1="1968" y2="2208" x1="1776" />
            <wire x2="2176" y1="1968" y2="1968" x1="1776" />
            <wire x2="2176" y1="720" y2="720" x1="1904" />
            <wire x2="1904" y1="720" y2="1072" x1="1904" />
        </branch>
        <branch name="XLXN_521">
            <wire x2="896" y1="2736" y2="2736" x1="768" />
            <wire x2="896" y1="1776" y2="2736" x1="896" />
            <wire x2="1392" y1="1776" y2="1776" x1="896" />
        </branch>
        <branch name="XLXN_522">
            <wire x2="912" y1="2976" y2="2976" x1="768" />
            <wire x2="912" y1="1840" y2="2976" x1="912" />
            <wire x2="1392" y1="1840" y2="1840" x1="912" />
        </branch>
        <branch name="XLXN_523">
            <wire x2="928" y1="3216" y2="3216" x1="768" />
            <wire x2="928" y1="1904" y2="3216" x1="928" />
            <wire x2="1392" y1="1904" y2="1904" x1="928" />
        </branch>
        <branch name="comp_3">
            <wire x2="1824" y1="1712" y2="1712" x1="1776" />
            <wire x2="2176" y1="1712" y2="1712" x1="1824" />
            <wire x2="1824" y1="320" y2="1712" x1="1824" />
            <wire x2="2976" y1="320" y2="320" x1="1824" />
        </branch>
        <branch name="XLXN_519">
            <wire x2="848" y1="160" y2="160" x1="480" />
            <wire x2="848" y1="160" y2="928" x1="848" />
            <wire x2="1392" y1="928" y2="928" x1="848" />
            <wire x2="2176" y1="928" y2="928" x1="1392" />
            <wire x2="848" y1="928" y2="2176" x1="848" />
            <wire x2="1392" y1="2176" y2="2176" x1="848" />
            <wire x2="2176" y1="2176" y2="2176" x1="1392" />
            <wire x2="1392" y1="880" y2="928" x1="1392" />
            <wire x2="1392" y1="2128" y2="2176" x1="1392" />
            <wire x2="2176" y1="880" y2="928" x1="2176" />
            <wire x2="2176" y1="2128" y2="2176" x1="2176" />
        </branch>
        <branch name="XLXN_526">
            <wire x2="944" y1="3632" y2="3632" x1="768" />
            <wire x2="944" y1="2032" y2="2240" x1="944" />
            <wire x2="944" y1="2240" y2="3632" x1="944" />
            <wire x2="1808" y1="2240" y2="2240" x1="944" />
            <wire x2="1392" y1="2032" y2="2032" x1="944" />
            <wire x2="1808" y1="2032" y2="2240" x1="1808" />
            <wire x2="2176" y1="2032" y2="2032" x1="1808" />
        </branch>
        <branch name="XLXN_511">
            <wire x2="880" y1="2336" y2="2336" x1="768" />
            <wire x2="880" y1="1712" y2="2336" x1="880" />
            <wire x2="1392" y1="1712" y2="1712" x1="880" />
        </branch>
        <instance x="2176" y="2160" name="XLXI_238" orien="R0" />
        <instance x="1392" y="2160" name="XLXI_237" orien="R0" />
        <instance x="2976" y="768" name="XLXI_248" orien="R0" />
        <branch name="comp_4">
            <wire x2="2640" y1="1712" y2="1712" x1="2560" />
            <wire x2="2976" y1="384" y2="384" x1="2640" />
            <wire x2="2640" y1="384" y2="1712" x1="2640" />
        </branch>
        <branch name="EQUAL">
            <wire x2="3520" y1="416" y2="416" x1="3360" />
        </branch>
        <iomarker fontsize="28" x="3520" y="416" name="EQUAL" orien="R0" />
        <branch name="move_out(9)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3040" y="1168" type="branch" />
            <wire x2="2800" y1="528" y2="528" x1="2560" />
            <wire x2="2800" y1="528" y2="1168" x1="2800" />
            <wire x2="3040" y1="1168" y2="1168" x1="2800" />
        </branch>
        <branch name="move_out(10)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3040" y="1216" type="branch" />
            <wire x2="2784" y1="592" y2="592" x1="2560" />
            <wire x2="2784" y1="592" y2="1216" x1="2784" />
            <wire x2="3040" y1="1216" y2="1216" x1="2784" />
        </branch>
        <branch name="move_out(11)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3040" y="1264" type="branch" />
            <wire x2="2768" y1="656" y2="656" x1="2560" />
            <wire x2="2768" y1="656" y2="1264" x1="2768" />
            <wire x2="3040" y1="1264" y2="1264" x1="2768" />
        </branch>
        <branch name="move_out(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3040" y="992" type="branch" />
            <wire x2="2096" y1="528" y2="528" x1="1776" />
            <wire x2="2176" y1="528" y2="528" x1="2096" />
            <wire x2="2096" y1="528" y2="992" x1="2096" />
            <wire x2="3040" y1="992" y2="992" x1="2096" />
        </branch>
        <branch name="move_out(4)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3040" y="1040" type="branch" />
            <wire x2="2064" y1="592" y2="592" x1="1776" />
            <wire x2="2176" y1="592" y2="592" x1="2064" />
            <wire x2="2064" y1="592" y2="1040" x1="2064" />
            <wire x2="3040" y1="1040" y2="1040" x1="2064" />
        </branch>
        <branch name="move_out(5)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3040" y="1088" type="branch" />
            <wire x2="2032" y1="656" y2="656" x1="1776" />
            <wire x2="2176" y1="656" y2="656" x1="2032" />
            <wire x2="2032" y1="656" y2="1088" x1="2032" />
            <wire x2="3040" y1="1088" y2="1088" x1="2032" />
        </branch>
        <branch name="move_out(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3040" y="1344" type="branch" />
            <wire x2="1904" y1="1776" y2="1776" x1="1776" />
            <wire x2="2176" y1="1776" y2="1776" x1="1904" />
            <wire x2="1904" y1="1344" y2="1776" x1="1904" />
            <wire x2="3040" y1="1344" y2="1344" x1="1904" />
        </branch>
        <branch name="move_out(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3040" y="1392" type="branch" />
            <wire x2="1936" y1="1840" y2="1840" x1="1776" />
            <wire x2="2176" y1="1840" y2="1840" x1="1936" />
            <wire x2="3040" y1="1392" y2="1392" x1="1936" />
            <wire x2="1936" y1="1392" y2="1840" x1="1936" />
        </branch>
        <branch name="move_out(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3040" y="1440" type="branch" />
            <wire x2="1968" y1="1904" y2="1904" x1="1776" />
            <wire x2="2176" y1="1904" y2="1904" x1="1968" />
            <wire x2="3040" y1="1440" y2="1440" x1="1968" />
            <wire x2="1968" y1="1440" y2="1904" x1="1968" />
        </branch>
        <branch name="move_out(6)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3040" y="1520" type="branch" />
            <wire x2="2800" y1="1776" y2="1776" x1="2560" />
            <wire x2="2800" y1="1520" y2="1776" x1="2800" />
            <wire x2="3040" y1="1520" y2="1520" x1="2800" />
        </branch>
        <branch name="move_out(7)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3040" y="1568" type="branch" />
            <wire x2="2816" y1="1840" y2="1840" x1="2560" />
            <wire x2="2816" y1="1568" y2="1840" x1="2816" />
            <wire x2="3040" y1="1568" y2="1568" x1="2816" />
        </branch>
        <branch name="move_out(8)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="3040" y="1616" type="branch" />
            <wire x2="2832" y1="1904" y2="1904" x1="2560" />
            <wire x2="2832" y1="1616" y2="1904" x1="2832" />
            <wire x2="3040" y1="1616" y2="1616" x1="2832" />
        </branch>
        <branch name="move_out(11:0)">
            <wire x2="3392" y1="768" y2="768" x1="3216" />
        </branch>
        <iomarker fontsize="28" x="3392" y="768" name="move_out(11:0)" orien="R0" />
        <branch name="move_in(15:0)">
            <wire x2="192" y1="1552" y2="1552" x1="112" />
        </branch>
        <iomarker fontsize="28" x="112" y="1552" name="move_in(15:0)" orien="R180" />
    </sheet>
</drawing>