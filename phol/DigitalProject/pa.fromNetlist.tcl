
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name DigitalProject -dir "C:/Users/Ken/OneDrive - KMITL/Digital System Fundamentals/githubDigitalAssign/phol/DigitalProject/planAhead_run_5" -part xc6slx9tqg144-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/Ken/OneDrive - KMITL/Digital System Fundamentals/githubDigitalAssign/phol/DigitalProject/mainCircuit.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/Ken/OneDrive - KMITL/Digital System Fundamentals/githubDigitalAssign/phol/DigitalProject} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "mainCircuit.ucf" [current_fileset -constrset]
add_files [list {mainCircuit.ucf}] -fileset [get_property constrset [current_run]]
link_design
