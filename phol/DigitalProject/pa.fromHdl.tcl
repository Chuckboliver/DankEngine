
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name DigitalProject -dir "C:/Users/Ken/OneDrive - KMITL/Digital System Fundamentals/githubDigitalAssign/phol/DigitalProject/planAhead_run_1" -part xc6slx9tqg144-3
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "serial_gen.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {serial_gen_used.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top serial_gen $srcset
add_files [list {serial_gen.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc6slx9tqg144-3
