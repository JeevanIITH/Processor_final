# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
create_project -in_memory -part xc7a100tcsg324-3

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /home/lab/JeevanS/processor-vivado/final_processor/processor/processor.cache/wt [current_project]
set_property parent.project_path /home/lab/JeevanS/processor-vivado/final_processor/processor/processor.xpr [current_project]
set_property XPM_LIBRARIES XPM_MEMORY [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property ip_output_repo /home/lab/JeevanS/processor-vivado/final_processor/processor/processor.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
add_files /home/lab/JeevanS/processor-vivado/final_processor/processor/processor.srcs/sources_1/imports/p1/instructions_coe.coe
add_files /home/lab/JeevanS/processor-vivado/final_processor/processor/processor.srcs/sources_1/imports/p1/memory_init.coe
read_vhdl -library xil_defaultlib {
  /home/lab/JeevanS/processor-vivado/final_processor/processor/processor.srcs/sources_1/imports/p1/AND.vhd
  /home/lab/JeevanS/processor-vivado/final_processor/processor/processor.srcs/sources_1/imports/p1/Adder.vhd
  /home/lab/JeevanS/processor-vivado/final_processor/processor/processor.srcs/sources_1/imports/p1/Control_Unit.vhd
  /home/lab/JeevanS/processor-vivado/final_processor/processor/processor.srcs/sources_1/imports/p1/Divider_module.vhd
  /home/lab/JeevanS/processor-vivado/final_processor/processor/processor.srcs/sources_1/imports/p1/Dot_prod_module.vhd
  /home/lab/JeevanS/processor-vivado/final_processor/processor/processor.srcs/sources_1/imports/p1/MUlT.vhd
  /home/lab/JeevanS/processor-vivado/final_processor/processor/processor.srcs/sources_1/imports/p1/Register_Dot.vhd
  /home/lab/JeevanS/processor-vivado/final_processor/processor/processor.srcs/sources_1/imports/p1/Shift_right_module.vhd
  /home/lab/JeevanS/processor-vivado/final_processor/processor/processor.srcs/sources_1/imports/p1/Two_bit_adder.vhd
  /home/lab/JeevanS/processor-vivado/final_processor/processor/processor.srcs/sources_1/imports/p1/add_branch.vhd
  /home/lab/JeevanS/processor-vivado/final_processor/processor/processor.srcs/sources_1/imports/p1/add_enable.vhd
  /home/lab/JeevanS/processor-vivado/final_processor/processor/processor.srcs/sources_1/imports/p1/add_pc.vhd
  /home/lab/JeevanS/processor-vivado/final_processor/processor/processor.srcs/sources_1/imports/p1/adder-16.vhd
  /home/lab/JeevanS/processor-vivado/final_processor/processor/processor.srcs/sources_1/imports/p1/adder_32.vhd
  /home/lab/JeevanS/processor-vivado/final_processor/processor/processor.srcs/sources_1/imports/p1/adder_8bit.vhd
  /home/lab/JeevanS/processor-vivado/final_processor/processor/processor.srcs/sources_1/imports/p1/alu.vhd
  /home/lab/JeevanS/processor-vivado/final_processor/processor/processor.srcs/sources_1/imports/p1/alu_control.vhd
  /home/lab/JeevanS/processor-vivado/final_processor/processor/processor.srcs/sources_1/imports/p1/branch_and.vhd
  /home/lab/JeevanS/processor-vivado/final_processor/processor/processor.srcs/sources_1/imports/p1/counter_module.vhd
  /home/lab/JeevanS/processor-vivado/final_processor/processor/processor.srcs/sources_1/imports/p1/demux.vhd
  /home/lab/JeevanS/processor-vivado/final_processor/processor/processor.srcs/sources_1/imports/p1/div1.vhd
  /home/lab/JeevanS/processor-vivado/final_processor/processor/processor.srcs/sources_1/imports/p1/dot_mux_module.vhd
  /home/lab/JeevanS/processor-vivado/final_processor/processor/processor.srcs/sources_1/imports/p1/enable_demux_bus.vhd
  /home/lab/JeevanS/processor-vivado/final_processor/processor/processor.srcs/sources_1/imports/p1/four_bit_adder.vhd
  /home/lab/JeevanS/processor-vivado/final_processor/processor/processor.srcs/sources_1/imports/p1/jump_mux.vhd
  /home/lab/JeevanS/processor-vivado/final_processor/processor/processor.srcs/sources_1/imports/p1/jump_shift_left_2.vhd
  /home/lab/JeevanS/processor-vivado/final_processor/processor/processor.srcs/sources_1/imports/p1/mem_addr_helper.vhd
  /home/lab/JeevanS/processor-vivado/final_processor/processor/processor.srcs/sources_1/imports/p1/multiplier.vhd
  /home/lab/JeevanS/processor-vivado/final_processor/processor/processor.srcs/sources_1/imports/p1/mux_alu.vhd
  /home/lab/JeevanS/processor-vivado/final_processor/processor/processor.srcs/sources_1/imports/p1/mux_mem.vhd
  /home/lab/JeevanS/processor-vivado/final_processor/processor/processor.srcs/sources_1/imports/p1/mux_reg.vhd
  /home/lab/JeevanS/processor-vivado/final_processor/processor/processor.srcs/sources_1/imports/p1/one_bit_adder.vhd
  /home/lab/JeevanS/processor-vivado/final_processor/processor/processor.srcs/sources_1/imports/p1/or_bit.vhd
  /home/lab/JeevanS/processor-vivado/final_processor/processor/processor.srcs/sources_1/imports/p1/pc_main.vhd
  /home/lab/JeevanS/processor-vivado/final_processor/processor/processor.srcs/sources_1/imports/p1/pc_main_helper.vhd
  /home/lab/JeevanS/processor-vivado/final_processor/processor/processor.srcs/sources_1/imports/p1/pc_mux.vhd
  /home/lab/JeevanS/processor-vivado/final_processor/processor/processor.srcs/sources_1/imports/p1/register_file.vhd
  /home/lab/JeevanS/processor-vivado/final_processor/processor/processor.srcs/sources_1/imports/p1/set_less_module.vhd
  /home/lab/JeevanS/processor-vivado/final_processor/processor/processor.srcs/sources_1/imports/p1/shift_left_2.vhd
  /home/lab/JeevanS/processor-vivado/final_processor/processor/processor.srcs/sources_1/imports/p1/shift_left_module.vhd
  /home/lab/JeevanS/processor-vivado/final_processor/processor/processor.srcs/sources_1/imports/p1/sign_extend.vhd
  /home/lab/JeevanS/processor-vivado/final_processor/processor/processor.srcs/sources_1/imports/p1/two_complement.vhd
  /home/lab/JeevanS/processor-vivado/final_processor/processor/processor.srcs/sources_1/imports/p1/xor_bit.vhd
  /home/lab/JeevanS/processor-vivado/final_processor/processor/processor.srcs/sources_1/imports/p1/zero_m.vhd
  /home/lab/JeevanS/processor-vivado/final_processor/processor/processor.srcs/sources_1/imports/p1/processor.vhd
}
read_ip -quiet /home/lab/JeevanS/processor-vivado/final_processor/processor/processor.srcs/sources_1/ip/instruction_block_module/instruction_block_module.xci
set_property used_in_implementation false [get_files -all /home/lab/JeevanS/processor-vivado/final_processor/processor/processor.srcs/sources_1/ip/instruction_block_module/instruction_block_module_ooc.xdc]

read_ip -quiet /home/lab/JeevanS/processor-vivado/final_processor/processor/processor.srcs/sources_1/ip/memory_block_module/memory_block_module.xci
set_property used_in_implementation false [get_files -all /home/lab/JeevanS/processor-vivado/final_processor/processor/processor.srcs/sources_1/ip/memory_block_module/memory_block_module_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top processor -part xc7a100tcsg324-3 -flatten_hierarchy none


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef processor.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file processor_utilization_synth.rpt -pb processor_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
