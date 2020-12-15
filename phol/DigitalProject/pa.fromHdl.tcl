
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name DigitalProject -dir "C:/Users/Ken/OneDrive - KMITL/Digital System Fundamentals/githubDigitalAssign/phol/DigitalProject/planAhead_run_3" -part xc6slx9tqg144-3
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "main_sch.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {serial_rx_used.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {reg_12bits.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {move_12bits_7seg_decoder.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {demux1_3.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {main_sch.vf}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top main_sch $srcset
add_files [list {main_sch.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc6slx9tqg144-3
