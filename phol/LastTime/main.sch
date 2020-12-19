<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="PB1_P45" />
        <signal name="clock_P123" />
        <signal name="SW_DIP(7:0)" />
        <signal name="tx_P98" />
        <signal name="XLXN_8" />
        <signal name="XLXN_11" />
        <signal name="XLXN_12" />
        <signal name="XLXN_14" />
        <signal name="XLXN_15(7:0)" />
        <port polarity="Input" name="PB1_P45" />
        <port polarity="Input" name="clock_P123" />
        <port polarity="Input" name="SW_DIP(7:0)" />
        <port polarity="Output" name="tx_P98" />
        <port polarity="Output" name="XLXN_12" />
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <blockdef name="UART_TX">
            <timestamp>2020-12-18T12:20:56</timestamp>
            <rect width="304" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="432" y1="-160" y2="-160" x1="368" />
            <line x2="432" y1="-96" y2="-96" x1="368" />
            <line x2="432" y1="-32" y2="-32" x1="368" />
        </blockdef>
        <block symbolname="buf" name="XLXI_5">
            <blockpin signalname="tx_P98" name="I" />
            <blockpin signalname="XLXN_12" name="O" />
        </block>
        <block symbolname="UART_TX" name="XLXI_9">
            <blockpin signalname="clock_P123" name="i_Clk" />
            <blockpin signalname="PB1_P45" name="i_TX_DV" />
            <blockpin signalname="SW_DIP(7:0)" name="i_TX_Byte(7:0)" />
            <blockpin name="o_TX_Active" />
            <blockpin signalname="tx_P98" name="o_TX_Serial" />
            <blockpin name="o_TX_Done" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7040" height="5440">
        <branch name="SW_DIP(7:0)">
            <wire x2="1584" y1="1424" y2="1424" x1="1408" />
            <wire x2="1712" y1="1424" y2="1424" x1="1584" />
            <wire x2="1728" y1="1424" y2="1424" x1="1712" />
            <wire x2="1776" y1="1328" y2="1328" x1="1728" />
            <wire x2="1728" y1="1328" y2="1424" x1="1728" />
        </branch>
        <branch name="tx_P98">
            <wire x2="2176" y1="1104" y2="1104" x1="2160" />
            <wire x2="2160" y1="1104" y2="1120" x1="2160" />
            <wire x2="2272" y1="1120" y2="1120" x1="2160" />
            <wire x2="2272" y1="1120" y2="1264" x1="2272" />
            <wire x2="2176" y1="1088" y2="1104" x1="2176" />
            <wire x2="2256" y1="1088" y2="1088" x1="2176" />
            <wire x2="2528" y1="1088" y2="1088" x1="2256" />
            <wire x2="2272" y1="1264" y2="1264" x1="2208" />
            <wire x2="2256" y1="1008" y2="1088" x1="2256" />
            <wire x2="2336" y1="1008" y2="1008" x1="2256" />
        </branch>
        <iomarker fontsize="28" x="1520" y="1280" name="clock_P123" orien="R180" />
        <branch name="clock_P123">
            <wire x2="1600" y1="1280" y2="1280" x1="1520" />
            <wire x2="1712" y1="1280" y2="1280" x1="1600" />
            <wire x2="1728" y1="1264" y2="1264" x1="1712" />
            <wire x2="1712" y1="1264" y2="1280" x1="1712" />
            <wire x2="1776" y1="1200" y2="1200" x1="1728" />
            <wire x2="1728" y1="1200" y2="1264" x1="1728" />
        </branch>
        <iomarker fontsize="28" x="1408" y="1424" name="SW_DIP(7:0)" orien="R180" />
        <iomarker fontsize="28" x="2528" y="1088" name="tx_P98" orien="R0" />
        <instance x="2336" y="1040" name="XLXI_5" orien="R0" />
        <branch name="XLXN_12">
            <wire x2="2592" y1="1008" y2="1008" x1="2560" />
        </branch>
        <iomarker fontsize="28" x="2592" y="1008" name="XLXN_12" orien="R0" />
        <iomarker fontsize="28" x="1536" y="1104" name="PB1_P45" orien="R180" />
        <instance x="1776" y="1360" name="XLXI_9" orien="R0">
        </instance>
        <branch name="PB1_P45">
            <wire x2="1616" y1="1104" y2="1104" x1="1536" />
            <wire x2="1712" y1="1104" y2="1104" x1="1616" />
            <wire x2="1728" y1="1104" y2="1104" x1="1712" />
            <wire x2="1744" y1="1104" y2="1104" x1="1728" />
            <wire x2="1744" y1="1104" y2="1264" x1="1744" />
            <wire x2="1776" y1="1264" y2="1264" x1="1744" />
        </branch>
    </sheet>
</drawing>