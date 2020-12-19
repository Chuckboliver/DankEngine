<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1(15:0)" />
        <signal name="XLXN_5(15:0)" />
        <signal name="XLXN_6(15:0)" />
        <signal name="XLXN_8(15:0)" />
        <signal name="XLXN_9(15:0)" />
        <signal name="XLXN_11" />
        <signal name="XLXN_15" />
        <signal name="XLXN_16(15:0)" />
        <signal name="XLXN_17(15:0)" />
        <signal name="XLXN_19" />
        <signal name="XLXN_21(15:0)" />
        <signal name="XLXN_22" />
        <signal name="XLXN_23(15:0)" />
        <signal name="XLXN_24" />
        <signal name="clk_P123" />
        <signal name="rx_P97" />
        <signal name="rx_clear_move" />
        <signal name="rx_clear_error" />
        <signal name="rx_clear_promote" />
        <signal name="rx_clear_endgame" />
        <signal name="move_7seg_FPGA(6:0)" />
        <signal name="common_7seg_FPGA(3:0)" />
        <signal name="L7L6_P67P74(1:0)" />
        <signal name="L5L4L3_P75_P78_P79(3:0)" />
        <signal name="L2L1_P80P81(1:0)" />
        <signal name="MN_P88_P92(1:0)" />
        <port polarity="Input" name="clk_P123" />
        <port polarity="Input" name="rx_P97" />
        <port polarity="Input" name="rx_clear_move" />
        <port polarity="Input" name="rx_clear_error" />
        <port polarity="Input" name="rx_clear_promote" />
        <port polarity="Input" name="rx_clear_endgame" />
        <port polarity="Output" name="move_7seg_FPGA(6:0)" />
        <port polarity="Output" name="common_7seg_FPGA(3:0)" />
        <port polarity="Output" name="L7L6_P67P74(1:0)" />
        <port polarity="Output" name="L5L4L3_P75_P78_P79(3:0)" />
        <port polarity="Output" name="L2L1_P80P81(1:0)" />
        <port polarity="Output" name="MN_P88_P92(1:0)" />
        <blockdef name="serial_rx">
            <timestamp>2020-12-17T10:6:4</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="demux1to4">
            <timestamp>2020-12-17T10:5:54</timestamp>
            <rect width="352" x="64" y="-256" height="256" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="416" y="-236" height="24" />
            <line x2="480" y1="-224" y2="-224" x1="416" />
            <rect width="64" x="416" y="-172" height="24" />
            <line x2="480" y1="-160" y2="-160" x1="416" />
            <rect width="64" x="416" y="-108" height="24" />
            <line x2="480" y1="-96" y2="-96" x1="416" />
            <rect width="64" x="416" y="-44" height="24" />
            <line x2="480" y1="-32" y2="-32" x1="416" />
        </blockdef>
        <blockdef name="register16bits">
            <timestamp>2020-12-17T10:5:44</timestamp>
            <rect width="320" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="384" y="-172" height="24" />
            <line x2="448" y1="-160" y2="-160" x1="384" />
        </blockdef>
        <blockdef name="checkEmptyRegister16bits">
            <timestamp>2020-12-17T10:5:32</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="move_7seg_decoder">
            <timestamp>2020-12-17T10:5:23</timestamp>
            <rect width="64" x="0" y="20" height="24" />
            <line x2="0" y1="32" y2="32" x1="64" />
            <rect width="64" x="448" y="20" height="24" />
            <line x2="512" y1="32" y2="32" x1="448" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="448" y="-364" height="24" />
            <line x2="512" y1="-352" y2="-352" x1="448" />
            <rect width="384" x="64" y="-384" height="448" />
        </blockdef>
        <blockdef name="Error_Decoder_LED">
            <timestamp>2020-12-17T10:5:10</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="promote_Decoder_LED">
            <timestamp>2020-12-17T10:4:4</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="EndGame_Decoder_LED">
            <timestamp>2020-12-17T10:3:54</timestamp>
            <rect width="64" x="320" y="20" height="24" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <rect width="64" x="320" y="84" height="24" />
            <line x2="384" y1="96" y2="96" x1="320" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="256" x="64" y="-128" height="256" />
        </blockdef>
        <block symbolname="serial_rx" name="XLXI_1">
            <blockpin signalname="clk_P123" name="clock" />
            <blockpin signalname="rx_P97" name="rx" />
            <blockpin signalname="XLXN_11" name="data_done" />
            <blockpin signalname="XLXN_1(15:0)" name="data(15:0)" />
        </block>
        <block symbolname="demux1to4" name="XLXI_2">
            <blockpin signalname="XLXN_1(15:0)" name="rx_in(15:0)" />
            <blockpin signalname="XLXN_5(15:0)" name="bot_Move_Out(15:0)" />
            <blockpin signalname="XLXN_6(15:0)" name="error_Out(15:0)" />
            <blockpin signalname="XLXN_8(15:0)" name="promote_Out(15:0)" />
            <blockpin signalname="XLXN_9(15:0)" name="end_Game_Out(15:0)" />
        </block>
        <block symbolname="register16bits" name="XLXI_3">
            <blockpin signalname="XLXN_11" name="clk" />
            <blockpin signalname="rx_clear_endgame" name="reset" />
            <blockpin signalname="XLXN_9(15:0)" name="para_in(15:0)" />
            <blockpin signalname="XLXN_23(15:0)" name="para_out(15:0)" />
        </block>
        <block symbolname="register16bits" name="XLXI_4">
            <blockpin signalname="XLXN_11" name="clk" />
            <blockpin signalname="rx_clear_promote" name="reset" />
            <blockpin signalname="XLXN_8(15:0)" name="para_in(15:0)" />
            <blockpin signalname="XLXN_21(15:0)" name="para_out(15:0)" />
        </block>
        <block symbolname="register16bits" name="XLXI_5">
            <blockpin signalname="XLXN_11" name="clk" />
            <blockpin signalname="rx_clear_error" name="reset" />
            <blockpin signalname="XLXN_6(15:0)" name="para_in(15:0)" />
            <blockpin signalname="XLXN_17(15:0)" name="para_out(15:0)" />
        </block>
        <block symbolname="register16bits" name="XLXI_6">
            <blockpin signalname="XLXN_11" name="clk" />
            <blockpin signalname="rx_clear_move" name="reset" />
            <blockpin signalname="XLXN_5(15:0)" name="para_in(15:0)" />
            <blockpin signalname="XLXN_16(15:0)" name="para_out(15:0)" />
        </block>
        <block symbolname="checkEmptyRegister16bits" name="XLXI_7">
            <blockpin signalname="XLXN_23(15:0)" name="para_in(15:0)" />
            <blockpin signalname="XLXN_24" name="noData" />
        </block>
        <block symbolname="checkEmptyRegister16bits" name="XLXI_8">
            <blockpin signalname="XLXN_21(15:0)" name="para_in(15:0)" />
            <blockpin signalname="XLXN_22" name="noData" />
        </block>
        <block symbolname="checkEmptyRegister16bits" name="XLXI_9">
            <blockpin signalname="XLXN_17(15:0)" name="para_in(15:0)" />
            <blockpin signalname="XLXN_19" name="noData" />
        </block>
        <block symbolname="checkEmptyRegister16bits" name="XLXI_10">
            <blockpin signalname="XLXN_16(15:0)" name="para_in(15:0)" />
            <blockpin signalname="XLXN_15" name="noData" />
        </block>
        <block symbolname="move_7seg_decoder" name="XLXI_11">
            <blockpin signalname="clk_P123" name="clock" />
            <blockpin signalname="XLXN_15" name="nodata" />
            <blockpin signalname="XLXN_16(15:0)" name="data_move(15:0)" />
            <blockpin signalname="move_7seg_FPGA(6:0)" name="out_7seg(6:0)" />
            <blockpin signalname="common_7seg_FPGA(3:0)" name="common_7seg_FPGA(3:0)" />
        </block>
        <block symbolname="Error_Decoder_LED" name="XLXI_12">
            <blockpin signalname="XLXN_19" name="nodata" />
            <blockpin signalname="XLXN_17(15:0)" name="inp(15:0)" />
            <blockpin signalname="L7L6_P67P74(1:0)" name="LED(1:0)" />
        </block>
        <block symbolname="promote_Decoder_LED" name="XLXI_13">
            <blockpin signalname="XLXN_22" name="nodata" />
            <blockpin signalname="XLXN_21(15:0)" name="inp(15:0)" />
            <blockpin signalname="L5L4L3_P75_P78_P79(3:0)" name="LED(3:0)" />
        </block>
        <block symbolname="EndGame_Decoder_LED" name="XLXI_14">
            <blockpin signalname="XLXN_24" name="nodata" />
            <blockpin signalname="XLXN_23(15:0)" name="inp(15:0)" />
            <blockpin signalname="MN_P88_P92(1:0)" name="whoWin_LED(1:0)" />
            <blockpin signalname="L2L1_P80P81(1:0)" name="winType_LED(1:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7040" height="5440">
        <instance x="416" y="1888" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1600" y="1952" name="XLXI_2" orien="R0">
        </instance>
        <instance x="4016" y="4384" name="XLXI_7" orien="R0">
        </instance>
        <instance x="3872" y="2688" name="XLXI_8" orien="R0">
        </instance>
        <instance x="3680" y="1168" name="XLXI_9" orien="R0">
        </instance>
        <instance x="3696" y="384" name="XLXI_10" orien="R0">
        </instance>
        <instance x="2672" y="480" name="XLXI_6" orien="R0">
        </instance>
        <instance x="2736" y="1312" name="XLXI_5" orien="R0">
        </instance>
        <instance x="2800" y="2784" name="XLXI_4" orien="R0">
        </instance>
        <instance x="2880" y="4400" name="XLXI_3" orien="R0">
        </instance>
        <instance x="4912" y="544" name="XLXI_11" orien="R0">
        </instance>
        <instance x="4992" y="1216" name="XLXI_12" orien="R0">
        </instance>
        <instance x="4944" y="2656" name="XLXI_13" orien="R0">
        </instance>
        <branch name="XLXN_1(15:0)">
            <wire x2="1200" y1="1856" y2="1856" x1="800" />
            <wire x2="1200" y1="1728" y2="1856" x1="1200" />
            <wire x2="1600" y1="1728" y2="1728" x1="1200" />
        </branch>
        <branch name="XLXN_5(15:0)">
            <wire x2="2368" y1="1728" y2="1728" x1="2080" />
            <wire x2="2368" y1="448" y2="1728" x1="2368" />
            <wire x2="2672" y1="448" y2="448" x1="2368" />
        </branch>
        <branch name="XLXN_6(15:0)">
            <wire x2="2400" y1="1792" y2="1792" x1="2080" />
            <wire x2="2400" y1="1280" y2="1792" x1="2400" />
            <wire x2="2736" y1="1280" y2="1280" x1="2400" />
        </branch>
        <branch name="XLXN_8(15:0)">
            <wire x2="2688" y1="1856" y2="1856" x1="2080" />
            <wire x2="2688" y1="1856" y2="2672" x1="2688" />
            <wire x2="2688" y1="2672" y2="2752" x1="2688" />
            <wire x2="2800" y1="2752" y2="2752" x1="2688" />
        </branch>
        <branch name="XLXN_9(15:0)">
            <wire x2="2480" y1="1920" y2="1920" x1="2080" />
            <wire x2="2480" y1="1920" y2="4368" x1="2480" />
            <wire x2="2880" y1="4368" y2="4368" x1="2480" />
        </branch>
        <branch name="XLXN_11">
            <wire x2="864" y1="1728" y2="1728" x1="800" />
            <wire x2="864" y1="1728" y2="2624" x1="864" />
            <wire x2="2800" y1="2624" y2="2624" x1="864" />
            <wire x2="864" y1="2624" y2="4240" x1="864" />
            <wire x2="2880" y1="4240" y2="4240" x1="864" />
            <wire x2="2672" y1="320" y2="320" x1="864" />
            <wire x2="864" y1="320" y2="1152" x1="864" />
            <wire x2="864" y1="1152" y2="1728" x1="864" />
            <wire x2="2736" y1="1152" y2="1152" x1="864" />
        </branch>
        <branch name="XLXN_15">
            <wire x2="4496" y1="352" y2="352" x1="4080" />
            <wire x2="4496" y1="256" y2="352" x1="4496" />
            <wire x2="4912" y1="256" y2="256" x1="4496" />
        </branch>
        <branch name="XLXN_16(15:0)">
            <wire x2="3408" y1="320" y2="320" x1="3120" />
            <wire x2="3408" y1="320" y2="352" x1="3408" />
            <wire x2="3696" y1="352" y2="352" x1="3408" />
            <wire x2="3408" y1="352" y2="576" x1="3408" />
            <wire x2="4912" y1="576" y2="576" x1="3408" />
        </branch>
        <branch name="XLXN_17(15:0)">
            <wire x2="3200" y1="1152" y2="1152" x1="3184" />
            <wire x2="3200" y1="1136" y2="1152" x1="3200" />
            <wire x2="3344" y1="1136" y2="1136" x1="3200" />
            <wire x2="3680" y1="1136" y2="1136" x1="3344" />
            <wire x2="3344" y1="1136" y2="1184" x1="3344" />
            <wire x2="4992" y1="1184" y2="1184" x1="3344" />
        </branch>
        <branch name="XLXN_19">
            <wire x2="4528" y1="1136" y2="1136" x1="4064" />
            <wire x2="4528" y1="1120" y2="1136" x1="4528" />
            <wire x2="4992" y1="1120" y2="1120" x1="4528" />
        </branch>
        <branch name="XLXN_21(15:0)">
            <wire x2="3552" y1="2624" y2="2624" x1="3248" />
            <wire x2="3552" y1="2624" y2="2656" x1="3552" />
            <wire x2="3872" y1="2656" y2="2656" x1="3552" />
            <wire x2="3552" y1="2656" y2="2752" x1="3552" />
            <wire x2="4320" y1="2752" y2="2752" x1="3552" />
            <wire x2="4320" y1="2624" y2="2752" x1="4320" />
            <wire x2="4944" y1="2624" y2="2624" x1="4320" />
        </branch>
        <branch name="XLXN_22">
            <wire x2="4592" y1="2656" y2="2656" x1="4256" />
            <wire x2="4592" y1="2560" y2="2656" x1="4592" />
            <wire x2="4944" y1="2560" y2="2560" x1="4592" />
        </branch>
        <branch name="XLXN_24">
            <wire x2="4416" y1="4352" y2="4352" x1="4400" />
            <wire x2="4736" y1="4352" y2="4352" x1="4416" />
            <wire x2="4736" y1="4304" y2="4352" x1="4736" />
            <wire x2="5088" y1="4304" y2="4304" x1="4736" />
        </branch>
        <branch name="clk_P123">
            <wire x2="384" y1="1728" y2="1728" x1="368" />
            <wire x2="416" y1="1728" y2="1728" x1="384" />
            <wire x2="400" y1="1328" y2="1328" x1="384" />
            <wire x2="416" y1="1328" y2="1328" x1="400" />
            <wire x2="384" y1="1328" y2="1728" x1="384" />
            <wire x2="416" y1="112" y2="1328" x1="416" />
            <wire x2="4640" y1="112" y2="112" x1="416" />
            <wire x2="4640" y1="112" y2="144" x1="4640" />
            <wire x2="4880" y1="144" y2="144" x1="4640" />
            <wire x2="4880" y1="144" y2="192" x1="4880" />
            <wire x2="4912" y1="192" y2="192" x1="4880" />
        </branch>
        <iomarker fontsize="28" x="368" y="1728" name="clk_P123" orien="R180" />
        <branch name="rx_P97">
            <wire x2="416" y1="1856" y2="1856" x1="384" />
        </branch>
        <iomarker fontsize="28" x="384" y="1856" name="rx_P97" orien="R180" />
        <branch name="rx_clear_move">
            <wire x2="2672" y1="384" y2="384" x1="2640" />
        </branch>
        <iomarker fontsize="28" x="2640" y="384" name="rx_clear_move" orien="R180" />
        <branch name="rx_clear_error">
            <wire x2="2720" y1="592" y2="592" x1="2624" />
            <wire x2="2720" y1="592" y2="1216" x1="2720" />
            <wire x2="2736" y1="1216" y2="1216" x1="2720" />
        </branch>
        <branch name="rx_clear_promote">
            <wire x2="2752" y1="752" y2="752" x1="2672" />
            <wire x2="2752" y1="752" y2="848" x1="2752" />
            <wire x2="2752" y1="848" y2="848" x1="2672" />
            <wire x2="2672" y1="848" y2="2688" x1="2672" />
            <wire x2="2784" y1="2688" y2="2688" x1="2672" />
            <wire x2="2800" y1="2688" y2="2688" x1="2784" />
        </branch>
        <branch name="rx_clear_endgame">
            <wire x2="2352" y1="944" y2="944" x1="2272" />
            <wire x2="2352" y1="944" y2="1040" x1="2352" />
            <wire x2="2352" y1="1040" y2="1040" x1="2272" />
            <wire x2="2272" y1="1040" y2="4304" x1="2272" />
            <wire x2="2864" y1="4304" y2="4304" x1="2272" />
            <wire x2="2880" y1="4304" y2="4304" x1="2864" />
        </branch>
        <branch name="move_7seg_FPGA(6:0)">
            <wire x2="5456" y1="192" y2="192" x1="5424" />
        </branch>
        <iomarker fontsize="28" x="5456" y="192" name="move_7seg_FPGA(6:0)" orien="R0" />
        <branch name="common_7seg_FPGA(3:0)">
            <wire x2="5456" y1="576" y2="576" x1="5424" />
        </branch>
        <iomarker fontsize="28" x="5456" y="576" name="common_7seg_FPGA(3:0)" orien="R0" />
        <branch name="L7L6_P67P74(1:0)">
            <wire x2="5408" y1="1120" y2="1120" x1="5376" />
        </branch>
        <iomarker fontsize="28" x="5408" y="1120" name="L7L6_P67P74(1:0)" orien="R0" />
        <branch name="L5L4L3_P75_P78_P79(3:0)">
            <wire x2="5360" y1="2560" y2="2560" x1="5328" />
        </branch>
        <iomarker fontsize="28" x="5360" y="2560" name="L5L4L3_P75_P78_P79(3:0)" orien="R0" />
        <iomarker fontsize="28" x="2624" y="592" name="rx_clear_error" orien="R180" />
        <iomarker fontsize="28" x="2672" y="752" name="rx_clear_promote" orien="R180" />
        <iomarker fontsize="28" x="2272" y="944" name="rx_clear_endgame" orien="R180" />
        <branch name="XLXN_23(15:0)">
            <wire x2="3664" y1="4240" y2="4240" x1="3328" />
            <wire x2="3664" y1="4240" y2="4352" x1="3664" />
            <wire x2="4016" y1="4352" y2="4352" x1="3664" />
            <wire x2="3664" y1="4352" y2="4448" x1="3664" />
            <wire x2="4480" y1="4448" y2="4448" x1="3664" />
            <wire x2="4480" y1="4368" y2="4448" x1="4480" />
            <wire x2="5088" y1="4368" y2="4368" x1="4480" />
        </branch>
        <instance x="5088" y="4400" name="XLXI_14" orien="R0">
        </instance>
        <iomarker fontsize="28" x="5712" y="4496" name="L2L1_P80P81(1:0)" orien="R0" />
        <branch name="L2L1_P80P81(1:0)">
            <wire x2="5504" y1="4496" y2="4496" x1="5472" />
            <wire x2="5504" y1="4448" y2="4496" x1="5504" />
            <wire x2="5552" y1="4448" y2="4448" x1="5504" />
            <wire x2="5552" y1="4448" y2="4496" x1="5552" />
            <wire x2="5712" y1="4496" y2="4496" x1="5552" />
        </branch>
        <branch name="MN_P88_P92(1:0)">
            <wire x2="5616" y1="4432" y2="4432" x1="5472" />
        </branch>
        <iomarker fontsize="28" x="5616" y="4432" name="MN_P88_P92(1:0)" orien="R0" />
    </sheet>
</drawing>