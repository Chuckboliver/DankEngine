<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="A" />
        <signal name="XLXN_17" />
        <signal name="XLXN_18" />
        <signal name="X" />
        <signal name="E" />
        <signal name="XLXN_58" />
        <signal name="Y" />
        <signal name="XLXN_62" />
        <signal name="D" />
        <signal name="C" />
        <signal name="XLXN_73" />
        <signal name="XLXN_83" />
        <signal name="Z" />
        <signal name="XLXN_89" />
        <signal name="XLXN_91" />
        <signal name="XLXN_95" />
        <signal name="XLXN_96" />
        <signal name="XLXN_97" />
        <signal name="XLXN_98" />
        <signal name="NOT_EQ" />
        <signal name="XLXN_112" />
        <signal name="XLXN_113" />
        <signal name="XLXN_114" />
        <signal name="B" />
        <port polarity="Input" name="A" />
        <port polarity="Output" name="X" />
        <port polarity="Input" name="E" />
        <port polarity="Output" name="Y" />
        <port polarity="Input" name="D" />
        <port polarity="Input" name="C" />
        <port polarity="Output" name="Z" />
        <port polarity="Output" name="NOT_EQ" />
        <port polarity="Input" name="B" />
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
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
        <blockdef name="or3b1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="28" y1="-64" y2="-64" x1="0" />
            <circle r="10" cx="38" cy="-62" />
            <line x2="72" y1="-128" y2="-128" x1="0" />
            <line x2="48" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="48" y1="-176" y2="-176" x1="112" />
            <arc ex="112" ey="-176" sx="192" sy="-128" r="88" cx="116" cy="-88" />
            <arc ex="192" ey="-128" sx="112" sy="-80" r="88" cx="116" cy="-168" />
            <line x2="48" y1="-80" y2="-80" x1="112" />
            <line x2="48" y1="-64" y2="-80" x1="48" />
            <line x2="48" y1="-192" y2="-176" x1="48" />
            <arc ex="48" ey="-176" sx="48" sy="-80" r="56" cx="16" cy="-128" />
        </blockdef>
        <blockdef name="and3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
        </blockdef>
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <blockdef name="and2b1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-48" y2="-144" x1="64" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
        </blockdef>
        <blockdef name="and3b3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
            <line x2="40" y1="-128" y2="-128" x1="0" />
            <circle r="12" cx="52" cy="-128" />
            <line x2="40" y1="-192" y2="-192" x1="0" />
            <circle r="12" cx="52" cy="-192" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
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
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="or3b3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="28" y1="-64" y2="-64" x1="0" />
            <circle r="10" cx="38" cy="-62" />
            <line x2="40" y1="-128" y2="-128" x1="0" />
            <circle r="12" cx="60" cy="-128" />
            <line x2="28" y1="-192" y2="-192" x1="0" />
            <circle r="10" cx="38" cy="-190" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="48" y1="-176" y2="-176" x1="112" />
            <line x2="48" y1="-80" y2="-80" x1="112" />
            <line x2="48" y1="-192" y2="-176" x1="48" />
            <line x2="48" y1="-64" y2="-80" x1="48" />
            <arc ex="112" ey="-176" sx="192" sy="-128" r="88" cx="116" cy="-88" />
            <arc ex="48" ey="-176" sx="48" sy="-80" r="56" cx="16" cy="-128" />
            <arc ex="192" ey="-128" sx="112" sy="-80" r="88" cx="116" cy="-168" />
            <line x2="48" y1="-128" y2="-128" x1="40" />
        </blockdef>
        <block symbolname="and2" name="XLXI_5">
            <blockpin signalname="XLXN_18" name="I0" />
            <blockpin signalname="XLXN_17" name="I1" />
            <blockpin signalname="X" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_6">
            <blockpin signalname="A" name="I" />
            <blockpin signalname="XLXN_17" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_24">
            <blockpin signalname="XLXN_58" name="I0" />
            <blockpin signalname="XLXN_62" name="I1" />
            <blockpin signalname="XLXN_17" name="I2" />
            <blockpin signalname="Y" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_25">
            <blockpin signalname="B" name="I" />
            <blockpin signalname="XLXN_62" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_27">
            <blockpin signalname="XLXN_73" name="I0" />
            <blockpin signalname="B" name="I1" />
            <blockpin signalname="XLXN_83" name="O" />
        </block>
        <block symbolname="or3b1" name="XLXI_23">
            <blockpin signalname="E" name="I0" />
            <blockpin signalname="D" name="I1" />
            <blockpin signalname="C" name="I2" />
            <blockpin signalname="XLXN_58" name="O" />
        </block>
        <block symbolname="and2b1" name="XLXI_28">
            <blockpin signalname="C" name="I0" />
            <blockpin signalname="D" name="I1" />
            <blockpin signalname="XLXN_73" name="O" />
        </block>
        <block symbolname="and3b3" name="XLXI_29">
            <blockpin signalname="D" name="I0" />
            <blockpin signalname="C" name="I1" />
            <blockpin signalname="B" name="I2" />
            <blockpin signalname="XLXN_18" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_30">
            <blockpin signalname="XLXN_83" name="I0" />
            <blockpin signalname="XLXN_17" name="I1" />
            <blockpin signalname="Z" name="O" />
        </block>
        <block symbolname="comp4" name="XLXI_35">
            <blockpin name="A0" />
            <blockpin name="A1" />
            <blockpin name="A2" />
            <blockpin name="A3" />
            <blockpin signalname="XLXN_95" name="B0" />
            <blockpin signalname="XLXN_95" name="B1" />
            <blockpin signalname="XLXN_95" name="B2" />
            <blockpin signalname="XLXN_95" name="B3" />
            <blockpin signalname="XLXN_97" name="EQ" />
        </block>
        <block symbolname="comp4" name="XLXI_37">
            <blockpin name="A0" />
            <blockpin name="A1" />
            <blockpin name="A2" />
            <blockpin name="A3" />
            <blockpin signalname="XLXN_91" name="B0" />
            <blockpin signalname="XLXN_91" name="B1" />
            <blockpin signalname="XLXN_91" name="B2" />
            <blockpin signalname="XLXN_91" name="B3" />
            <blockpin signalname="XLXN_98" name="EQ" />
        </block>
        <block symbolname="gnd" name="XLXI_41">
            <blockpin signalname="XLXN_89" name="G" />
        </block>
        <block symbolname="comp4" name="XLXI_40">
            <blockpin name="A0" />
            <blockpin name="A1" />
            <blockpin name="A2" />
            <blockpin name="A3" />
            <blockpin signalname="XLXN_89" name="B0" />
            <blockpin signalname="XLXN_89" name="B1" />
            <blockpin signalname="XLXN_89" name="B2" />
            <blockpin signalname="XLXN_89" name="B3" />
            <blockpin signalname="XLXN_96" name="EQ" />
        </block>
        <block symbolname="gnd" name="XLXI_42">
            <blockpin signalname="XLXN_91" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_44">
            <blockpin signalname="XLXN_95" name="G" />
        </block>
        <block symbolname="or3b3" name="XLXI_45">
            <blockpin signalname="XLXN_96" name="I0" />
            <blockpin signalname="XLXN_98" name="I1" />
            <blockpin signalname="XLXN_97" name="I2" />
            <blockpin signalname="NOT_EQ" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="A">
            <wire x2="208" y1="48" y2="48" x1="96" />
        </branch>
        <instance x="208" y="80" name="XLXI_6" orien="R0" />
        <branch name="XLXN_18">
            <wire x2="1376" y1="240" y2="240" x1="960" />
        </branch>
        <branch name="X">
            <wire x2="1680" y1="208" y2="208" x1="1632" />
        </branch>
        <iomarker fontsize="28" x="96" y="48" name="A" orien="R180" />
        <iomarker fontsize="28" x="96" y="304" name="D" orien="R180" />
        <iomarker fontsize="28" x="96" y="240" name="C" orien="R180" />
        <branch name="Y">
            <wire x2="1680" y1="448" y2="448" x1="1632" />
        </branch>
        <branch name="XLXN_58">
            <wire x2="1376" y1="512" y2="512" x1="1008" />
        </branch>
        <branch name="XLXN_62">
            <wire x2="1376" y1="448" y2="448" x1="1264" />
        </branch>
        <branch name="XLXN_17">
            <wire x2="1280" y1="48" y2="48" x1="432" />
            <wire x2="1280" y1="48" y2="176" x1="1280" />
            <wire x2="1376" y1="176" y2="176" x1="1280" />
            <wire x2="1280" y1="176" y2="384" x1="1280" />
            <wire x2="1376" y1="384" y2="384" x1="1280" />
            <wire x2="1280" y1="384" y2="624" x1="1280" />
            <wire x2="1376" y1="624" y2="624" x1="1280" />
        </branch>
        <iomarker fontsize="28" x="96" y="368" name="E" orien="R180" />
        <branch name="D">
            <wire x2="592" y1="304" y2="304" x1="96" />
            <wire x2="704" y1="304" y2="304" x1="592" />
            <wire x2="592" y1="304" y2="512" x1="592" />
            <wire x2="592" y1="512" y2="688" x1="592" />
            <wire x2="752" y1="688" y2="688" x1="592" />
            <wire x2="752" y1="512" y2="512" x1="592" />
        </branch>
        <branch name="C">
            <wire x2="640" y1="240" y2="240" x1="96" />
            <wire x2="704" y1="240" y2="240" x1="640" />
            <wire x2="640" y1="240" y2="448" x1="640" />
            <wire x2="640" y1="448" y2="752" x1="640" />
            <wire x2="752" y1="752" y2="752" x1="640" />
            <wire x2="752" y1="448" y2="448" x1="640" />
        </branch>
        <branch name="XLXN_73">
            <wire x2="1040" y1="720" y2="720" x1="1008" />
        </branch>
        <instance x="1040" y="784" name="XLXI_27" orien="R0" />
        <branch name="E">
            <wire x2="112" y1="368" y2="368" x1="96" />
            <wire x2="112" y1="368" y2="576" x1="112" />
            <wire x2="752" y1="576" y2="576" x1="112" />
        </branch>
        <instance x="1376" y="304" name="XLXI_5" orien="R0" />
        <instance x="1376" y="576" name="XLXI_24" orien="R0" />
        <iomarker fontsize="28" x="1680" y="448" name="Y" orien="R0" />
        <iomarker fontsize="28" x="1680" y="208" name="X" orien="R0" />
        <instance x="752" y="816" name="XLXI_28" orien="R0" />
        <instance x="704" y="368" name="XLXI_29" orien="R0" />
        <instance x="1376" y="752" name="XLXI_30" orien="R0" />
        <branch name="XLXN_83">
            <wire x2="1376" y1="688" y2="688" x1="1296" />
        </branch>
        <branch name="Z">
            <wire x2="1680" y1="656" y2="656" x1="1632" />
        </branch>
        <instance x="2192" y="1120" name="XLXI_35" orien="R0" />
        <instance x="2192" y="1776" name="XLXI_37" orien="R0" />
        <instance x="1744" y="2336" name="XLXI_41" orien="R0" />
        <branch name="XLXN_89">
            <wire x2="1888" y1="2208" y2="2208" x1="1808" />
            <wire x2="1888" y1="2208" y2="2240" x1="1888" />
            <wire x2="1888" y1="2240" y2="2304" x1="1888" />
            <wire x2="2192" y1="2304" y2="2304" x1="1888" />
            <wire x2="2192" y1="2240" y2="2240" x1="1888" />
            <wire x2="1888" y1="2112" y2="2176" x1="1888" />
            <wire x2="1888" y1="2176" y2="2208" x1="1888" />
            <wire x2="2192" y1="2176" y2="2176" x1="1888" />
            <wire x2="2192" y1="2112" y2="2112" x1="1888" />
        </branch>
        <instance x="2192" y="2432" name="XLXI_40" orien="R0" />
        <instance x="1744" y="1680" name="XLXI_42" orien="R0" />
        <branch name="XLXN_91">
            <wire x2="1888" y1="1552" y2="1552" x1="1808" />
            <wire x2="1888" y1="1552" y2="1584" x1="1888" />
            <wire x2="1888" y1="1584" y2="1648" x1="1888" />
            <wire x2="2192" y1="1648" y2="1648" x1="1888" />
            <wire x2="2192" y1="1584" y2="1584" x1="1888" />
            <wire x2="2192" y1="1456" y2="1456" x1="1888" />
            <wire x2="1888" y1="1456" y2="1520" x1="1888" />
            <wire x2="2192" y1="1520" y2="1520" x1="1888" />
            <wire x2="1888" y1="1520" y2="1552" x1="1888" />
        </branch>
        <instance x="1744" y="1024" name="XLXI_44" orien="R0" />
        <branch name="XLXN_95">
            <wire x2="1888" y1="896" y2="896" x1="1808" />
            <wire x2="1888" y1="896" y2="928" x1="1888" />
            <wire x2="1888" y1="928" y2="992" x1="1888" />
            <wire x2="2192" y1="992" y2="992" x1="1888" />
            <wire x2="2192" y1="928" y2="928" x1="1888" />
            <wire x2="2192" y1="800" y2="800" x1="1888" />
            <wire x2="1888" y1="800" y2="864" x1="1888" />
            <wire x2="2192" y1="864" y2="864" x1="1888" />
            <wire x2="1888" y1="864" y2="896" x1="1888" />
        </branch>
        <instance x="2720" y="1552" name="XLXI_45" orien="R0" />
        <branch name="XLXN_96">
            <wire x2="2576" y1="1488" y2="2080" x1="2576" />
            <wire x2="2720" y1="1488" y2="1488" x1="2576" />
        </branch>
        <branch name="XLXN_97">
            <wire x2="2576" y1="768" y2="1360" x1="2576" />
            <wire x2="2720" y1="1360" y2="1360" x1="2576" />
        </branch>
        <branch name="XLXN_98">
            <wire x2="2720" y1="1424" y2="1424" x1="2576" />
        </branch>
        <branch name="NOT_EQ">
            <wire x2="3008" y1="1424" y2="1424" x1="2976" />
        </branch>
        <iomarker fontsize="28" x="3008" y="1424" name="NOT_EQ" orien="R0" />
        <iomarker fontsize="28" x="1680" y="656" name="Z" orien="R0" />
        <instance x="752" y="640" name="XLXI_23" orien="R0" />
        <branch name="B">
            <wire x2="688" y1="176" y2="176" x1="96" />
            <wire x2="704" y1="176" y2="176" x1="688" />
            <wire x2="688" y1="176" y2="384" x1="688" />
            <wire x2="1024" y1="384" y2="384" x1="688" />
            <wire x2="1024" y1="384" y2="448" x1="1024" />
            <wire x2="1024" y1="448" y2="656" x1="1024" />
            <wire x2="1040" y1="656" y2="656" x1="1024" />
            <wire x2="1040" y1="448" y2="448" x1="1024" />
        </branch>
        <iomarker fontsize="28" x="96" y="176" name="B" orien="R180" />
        <instance x="1040" y="480" name="XLXI_25" orien="R0" />
    </sheet>
</drawing>