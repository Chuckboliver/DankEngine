<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_28" />
        <signal name="clock_P123" />
        <signal name="switchForMove(15:0)" />
        <signal name="newGame_Switch" />
        <signal name="blackSwitch" />
        <signal name="whiteSwitch" />
        <signal name="upSwitch" />
        <signal name="downSwitch" />
        <signal name="rook_PSW" />
        <signal name="knight_PSW" />
        <signal name="bishop_PSW" />
        <signal name="queen_PSW" />
        <signal name="level_seg_ALT(6:0)" />
        <signal name="common_P126_ALT" />
        <signal name="RX_P97" />
        <signal name="seg7_move_FPGA(6:0)" />
        <signal name="common_move_FPGA(3:0)" />
        <signal name="promoteLED_ALT(3:0)" />
        <signal name="winTypeLED_ALT(1:0)" />
        <signal name="ERR_MOV_ALT_LED" />
        <signal name="ERR_PRO_LED_ALT" />
        <signal name="whoWin_ALT_LED(1:0)" />
        <signal name="XLXN_31" />
        <signal name="XLXN_33" />
        <signal name="TX_P98" />
        <signal name="XLXN_50" />
        <signal name="L0_P82" />
        <port polarity="Input" name="clock_P123" />
        <port polarity="Input" name="switchForMove(15:0)" />
        <port polarity="Input" name="newGame_Switch" />
        <port polarity="Input" name="blackSwitch" />
        <port polarity="Input" name="whiteSwitch" />
        <port polarity="Input" name="upSwitch" />
        <port polarity="Input" name="downSwitch" />
        <port polarity="Input" name="rook_PSW" />
        <port polarity="Input" name="knight_PSW" />
        <port polarity="Input" name="bishop_PSW" />
        <port polarity="Input" name="queen_PSW" />
        <port polarity="Output" name="level_seg_ALT(6:0)" />
        <port polarity="Output" name="common_P126_ALT" />
        <port polarity="Input" name="RX_P97" />
        <port polarity="Output" name="seg7_move_FPGA(6:0)" />
        <port polarity="Output" name="common_move_FPGA(3:0)" />
        <port polarity="Output" name="promoteLED_ALT(3:0)" />
        <port polarity="Output" name="winTypeLED_ALT(1:0)" />
        <port polarity="Output" name="ERR_MOV_ALT_LED" />
        <port polarity="Output" name="ERR_PRO_LED_ALT" />
        <port polarity="Output" name="whoWin_ALT_LED(1:0)" />
        <port polarity="Output" name="TX_P98" />
        <port polarity="Output" name="L0_P82" />
        <blockdef name="tx">
            <timestamp>2020-12-16T23:14:13</timestamp>
            <rect width="512" x="64" y="-704" height="704" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-672" y2="-672" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="640" y1="-480" y2="-480" x1="576" />
            <line x2="640" y1="-544" y2="-544" x1="576" />
            <line x2="640" y1="-608" y2="-608" x1="576" />
            <rect width="64" x="576" y="-620" height="24" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <rect width="64" x="0" y="-620" height="24" />
            <line x2="640" y1="-672" y2="-672" x1="576" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
        </blockdef>
        <blockdef name="rx">
            <timestamp>2020-12-16T18:49:7</timestamp>
            <rect width="512" x="64" y="-448" height="448" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="640" y1="-352" y2="-352" x1="576" />
            <rect width="64" x="576" y="-364" height="24" />
            <line x2="640" y1="-160" y2="-160" x1="576" />
            <line x2="640" y1="-96" y2="-96" x1="576" />
            <line x2="640" y1="-288" y2="-288" x1="576" />
            <rect width="64" x="576" y="-300" height="24" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="640" y1="-416" y2="-416" x1="576" />
            <rect width="64" x="576" y="-428" height="24" />
            <line x2="640" y1="-32" y2="-32" x1="576" />
            <rect width="64" x="576" y="-44" height="24" />
            <line x2="640" y1="-224" y2="-224" x1="576" />
            <rect width="64" x="576" y="-236" height="24" />
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
        <block symbolname="rx" name="XLXI_3">
            <blockpin signalname="XLXN_28" name="clear_error_move" />
            <blockpin signalname="XLXN_28" name="clear_Error_Promote" />
            <blockpin signalname="XLXN_28" name="clear_Promote" />
            <blockpin signalname="XLXN_28" name="clear_whoWin" />
            <blockpin signalname="XLXN_28" name="clear_winType" />
            <blockpin signalname="clock_P123" name="clk_P123" />
            <blockpin signalname="common_move_FPGA(3:0)" name="common_move(3:0)" />
            <blockpin signalname="ERR_MOV_ALT_LED" name="error_move_LED" />
            <blockpin signalname="ERR_PRO_LED_ALT" name="error_promote_LED" />
            <blockpin signalname="promoteLED_ALT(3:0)" name="promote_LED(3:0)" />
            <blockpin signalname="RX_P97" name="rx_P97" />
            <blockpin signalname="seg7_move_FPGA(6:0)" name="seg7_move(6:0)" />
            <blockpin signalname="whoWin_ALT_LED(1:0)" name="whoWin_LED(1:0)" />
            <blockpin signalname="winTypeLED_ALT(1:0)" name="winTypeLED_ALT(1:0)" />
        </block>
        <block symbolname="gnd" name="XLXI_4">
            <blockpin signalname="XLXN_28" name="G" />
        </block>
        <block symbolname="tx" name="XLXI_2">
            <blockpin signalname="bishop_PSW" name="bishop_sw" />
            <blockpin signalname="blackSwitch" name="blackSwitch" />
            <blockpin signalname="clock_P123" name="clock_P123" />
            <blockpin signalname="downSwitch" name="downSwitch" />
            <blockpin signalname="knight_PSW" name="knight_sw" />
            <blockpin signalname="L0_P82" name="L0_P82" />
            <blockpin signalname="common_P126_ALT" name="level_common" />
            <blockpin signalname="level_seg_ALT(6:0)" name="level_seg(6:0)" />
            <blockpin signalname="newGame_Switch" name="newgame_switch" />
            <blockpin signalname="queen_PSW" name="queen_sw" />
            <blockpin signalname="rook_PSW" name="rook_sw" />
            <blockpin signalname="switchForMove(15:0)" name="switch_Move(15:0)" />
            <blockpin signalname="TX_P98" name="TX_P98" />
            <blockpin signalname="upSwitch" name="upSwitch" />
            <blockpin signalname="whiteSwitch" name="whiteSwitch" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7609" height="5382">
        <attr value="CM" name="LengthUnitName" />
        <attr value="4" name="GridsPerUnit" />
        <instance x="3120" y="3280" name="XLXI_3" orien="R0">
        </instance>
        <instance x="2912" y="3472" name="XLXI_4" orien="R0" />
        <branch name="XLXN_28">
            <wire x2="3120" y1="2992" y2="2992" x1="2976" />
            <wire x2="2976" y1="2992" y2="3056" x1="2976" />
            <wire x2="3120" y1="3056" y2="3056" x1="2976" />
            <wire x2="2976" y1="3056" y2="3120" x1="2976" />
            <wire x2="3120" y1="3120" y2="3120" x1="2976" />
            <wire x2="2976" y1="3120" y2="3184" x1="2976" />
            <wire x2="3120" y1="3184" y2="3184" x1="2976" />
            <wire x2="2976" y1="3184" y2="3248" x1="2976" />
            <wire x2="3120" y1="3248" y2="3248" x1="2976" />
            <wire x2="2976" y1="3248" y2="3344" x1="2976" />
        </branch>
        <branch name="clock_P123">
            <wire x2="1904" y1="2480" y2="2480" x1="1776" />
            <wire x2="1904" y1="2480" y2="2768" x1="1904" />
            <wire x2="1920" y1="2768" y2="2768" x1="1904" />
            <wire x2="3104" y1="2480" y2="2480" x1="1904" />
            <wire x2="3104" y1="2480" y2="2864" x1="3104" />
            <wire x2="3120" y1="2864" y2="2864" x1="3104" />
        </branch>
        <iomarker fontsize="28" x="1776" y="2480" name="clock_P123" orien="R180" />
        <iomarker fontsize="28" x="1904" y="2832" name="switchForMove(15:0)" orien="R180" />
        <iomarker fontsize="28" x="1904" y="2896" name="newGame_Switch" orien="R180" />
        <iomarker fontsize="28" x="1904" y="2960" name="blackSwitch" orien="R180" />
        <iomarker fontsize="28" x="1904" y="3024" name="whiteSwitch" orien="R180" />
        <iomarker fontsize="28" x="1904" y="3088" name="upSwitch" orien="R180" />
        <iomarker fontsize="28" x="1904" y="3152" name="downSwitch" orien="R180" />
        <iomarker fontsize="28" x="1904" y="3216" name="rook_PSW" orien="R180" />
        <iomarker fontsize="28" x="1904" y="3280" name="knight_PSW" orien="R180" />
        <iomarker fontsize="28" x="1904" y="3344" name="bishop_PSW" orien="R180" />
        <iomarker fontsize="28" x="1904" y="3408" name="queen_PSW" orien="R180" />
        <branch name="level_seg_ALT(6:0)">
            <wire x2="2768" y1="2832" y2="2832" x1="2560" />
        </branch>
        <branch name="RX_P97">
            <wire x2="3120" y1="2928" y2="2928" x1="3088" />
        </branch>
        <iomarker fontsize="28" x="3088" y="2928" name="RX_P97" orien="R180" />
        <branch name="seg7_move_FPGA(6:0)">
            <wire x2="3792" y1="2864" y2="2864" x1="3760" />
        </branch>
        <iomarker fontsize="28" x="3792" y="2864" name="seg7_move_FPGA(6:0)" orien="R0" />
        <branch name="common_move_FPGA(3:0)">
            <wire x2="3792" y1="2928" y2="2928" x1="3760" />
        </branch>
        <iomarker fontsize="28" x="3792" y="2928" name="common_move_FPGA(3:0)" orien="R0" />
        <branch name="promoteLED_ALT(3:0)">
            <wire x2="3792" y1="2992" y2="2992" x1="3760" />
        </branch>
        <iomarker fontsize="28" x="3792" y="2992" name="promoteLED_ALT(3:0)" orien="R0" />
        <branch name="winTypeLED_ALT(1:0)">
            <wire x2="3936" y1="3056" y2="3056" x1="3760" />
        </branch>
        <branch name="ERR_MOV_ALT_LED">
            <wire x2="3792" y1="3120" y2="3120" x1="3760" />
        </branch>
        <iomarker fontsize="28" x="3792" y="3120" name="ERR_MOV_ALT_LED" orien="R0" />
        <branch name="ERR_PRO_LED_ALT">
            <wire x2="3792" y1="3184" y2="3184" x1="3760" />
        </branch>
        <iomarker fontsize="28" x="3792" y="3184" name="ERR_PRO_LED_ALT" orien="R0" />
        <branch name="whoWin_ALT_LED(1:0)">
            <wire x2="3792" y1="3248" y2="3248" x1="3760" />
        </branch>
        <iomarker fontsize="28" x="3792" y="3248" name="whoWin_ALT_LED(1:0)" orien="R0" />
        <iomarker fontsize="28" x="3936" y="3056" name="winTypeLED_ALT(1:0)" orien="R0" />
        <iomarker fontsize="28" x="2752" y="2768" name="TX_P98" orien="R0" />
        <iomarker fontsize="28" x="2768" y="2832" name="level_seg_ALT(6:0)" orien="R0" />
        <branch name="queen_PSW">
            <wire x2="1920" y1="3408" y2="3408" x1="1904" />
        </branch>
        <branch name="bishop_PSW">
            <wire x2="1920" y1="3344" y2="3344" x1="1904" />
        </branch>
        <branch name="knight_PSW">
            <wire x2="1920" y1="3280" y2="3280" x1="1904" />
        </branch>
        <branch name="rook_PSW">
            <wire x2="1920" y1="3216" y2="3216" x1="1904" />
        </branch>
        <branch name="downSwitch">
            <wire x2="1920" y1="3152" y2="3152" x1="1904" />
        </branch>
        <branch name="upSwitch">
            <wire x2="1920" y1="3088" y2="3088" x1="1904" />
        </branch>
        <branch name="whiteSwitch">
            <wire x2="1920" y1="3024" y2="3024" x1="1904" />
        </branch>
        <branch name="blackSwitch">
            <wire x2="1920" y1="2960" y2="2960" x1="1904" />
        </branch>
        <branch name="newGame_Switch">
            <wire x2="1920" y1="2896" y2="2896" x1="1904" />
        </branch>
        <branch name="switchForMove(15:0)">
            <wire x2="1920" y1="2832" y2="2832" x1="1904" />
        </branch>
        <branch name="common_P126_ALT">
            <wire x2="2624" y1="2896" y2="2896" x1="2560" />
        </branch>
        <iomarker fontsize="28" x="2624" y="2896" name="common_P126_ALT" orien="R0" />
        <branch name="TX_P98">
            <wire x2="2752" y1="2768" y2="2768" x1="2560" />
        </branch>
        <instance x="1920" y="3440" name="XLXI_2" orien="R0">
        </instance>
        <branch name="L0_P82">
            <wire x2="2592" y1="2960" y2="2960" x1="2560" />
        </branch>
        <iomarker fontsize="28" x="2592" y="2960" name="L0_P82" orien="R0" />
    </sheet>
</drawing>