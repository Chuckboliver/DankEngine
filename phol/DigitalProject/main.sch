<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <blockdef name="move_12bits_to_7seg">
            <timestamp>2020-12-15T10:55:13</timestamp>
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
        <blockdef name="shift_register12">
            <timestamp>2020-12-15T10:36:15</timestamp>
            <rect width="288" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="352" y="-172" height="24" />
            <line x2="416" y1="-160" y2="-160" x1="352" />
        </blockdef>
        <blockdef name="serial_rx">
            <timestamp>2020-12-15T10:37:1</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="demux1_3">
            <timestamp>2020-12-15T10:47:22</timestamp>
            <rect width="320" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="384" y="-236" height="24" />
            <line x2="448" y1="-224" y2="-224" x1="384" />
            <rect width="64" x="384" y="-140" height="24" />
            <line x2="448" y1="-128" y2="-128" x1="384" />
            <rect width="64" x="384" y="-44" height="24" />
            <line x2="448" y1="-32" y2="-32" x1="384" />
        </blockdef>
        <block symbolname="serial_rx" name="XLXI_4">
            <blockpin name="clock" />
            <blockpin name="rx" />
            <blockpin name="data_done" />
            <blockpin name="data(7:0)" />
        </block>
        <block symbolname="shift_register12" name="XLXI_3">
            <blockpin name="CLR" />
            <blockpin name="CLK" />
            <blockpin name="reg_in(11:0)" />
            <blockpin name="reg_out(11:0)" />
        </block>
        <block symbolname="demux1_3" name="XLXI_11">
            <blockpin name="S0" />
            <blockpin name="S1" />
            <blockpin name="S2" />
            <blockpin name="demux_in(11:0)" />
            <blockpin name="Move(11:0)" />
            <blockpin name="Error(5:0)" />
            <blockpin name="Promote(4:0)" />
        </block>
        <block symbolname="move_12bits_to_7seg" name="XLXI_12">
            <blockpin name="clock" />
            <blockpin name="first_Move_IN(2:0)" />
            <blockpin name="second_Move_IN(2:0)" />
            <blockpin name="third_Move_IN(2:0)" />
            <blockpin name="forth_Move_IN(2:0)" />
            <blockpin name="out_7seg(6:0)" />
            <blockpin name="common(3:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="2016" y="1760" name="XLXI_3" orien="R0">
        </instance>
        <instance x="2560" y="1680" name="XLXI_12" orien="R0">
        </instance>
        <instance x="704" y="1664" name="XLXI_4" orien="R0">
        </instance>
        <instance x="1312" y="1552" name="XLXI_11" orien="R0">
        </instance>
    </sheet>
</drawing>