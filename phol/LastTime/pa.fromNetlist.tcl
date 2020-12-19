
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name LastTime -dir "C:/Users/Ken/OneDrive - KMITL/Digital System Fundamentals/githubDigitalAssign/phol/LastTime/planAhead_run_1" -part xc6slx9tqg144-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/Ken/OneDrive - KMITL/Digital System Fundamentals/githubDigitalAssign/phol/LastTime/main.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/Ken/OneDrive - KMITL/Digital System Fundamentals/githubDigitalAssign/phol/LastTime} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "main.ucf" [current_fileset -constrset]
add_files [list {main.ucf}] -fileset [get_property constrset [current_run]]
link_design
