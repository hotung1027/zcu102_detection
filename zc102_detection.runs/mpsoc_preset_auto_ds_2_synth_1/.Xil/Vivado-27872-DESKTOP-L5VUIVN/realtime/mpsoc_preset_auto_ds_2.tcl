# 
# Synthesis run script generated by Vivado
# 

namespace eval rt {
    variable rc
}
set rt::rc [catch {
  uplevel #0 {
    set ::env(BUILTIN_SYNTH) true
    source $::env(HRT_TCL_PATH)/rtSynthPrep.tcl
    rt::HARTNDb_resetJobStats
    rt::HARTNDb_resetSystemStats
    rt::HARTNDb_startSystemStats
    rt::HARTNDb_startJobStats
    set rt::cmdEcho 0
    rt::set_parameter writeXmsg true
    rt::set_parameter enableParallelHelperSpawn true
    set ::env(RT_TMP) "C:/Users/SKLTMW05/workspace/zc102_detection/zc102_detection.runs/mpsoc_preset_auto_ds_2_synth_1/.Xil/Vivado-27872-DESKTOP-L5VUIVN/realtime/tmp"
    if { [ info exists ::env(RT_TMP) ] } {
      file delete -force $::env(RT_TMP)
      file mkdir $::env(RT_TMP)
    }

    rt::delete_design

    rt::set_parameter datapathDensePacking false
    set rt::partid xczu9eg-ffvb1156-2-e
    source $::env(HRT_TCL_PATH)/rtSynthParallelPrep.tcl
     file delete -force synth_hints.os

    set rt::multiChipSynthesisFlow false
    source $::env(SYNTH_COMMON)/common.tcl
    set rt::defaultWorkLibName xil_defaultlib

    set rt::useElabCache false
    if {$rt::useElabCache == false} {
      rt::read_verilog -sv -include c:/Users/SKLTMW05/workspace/zc102_detection/zc102_detection.gen/sources_1/bd/mpsoc_preset/ipshared/ec67/hdl {
      D:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv
      D:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv
      D:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv
    }
      rt::read_verilog -include c:/Users/SKLTMW05/workspace/zc102_detection/zc102_detection.gen/sources_1/bd/mpsoc_preset/ipshared/ec67/hdl {
      c:/Users/SKLTMW05/workspace/zc102_detection/zc102_detection.gen/sources_1/bd/mpsoc_preset/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v
      c:/Users/SKLTMW05/workspace/zc102_detection/zc102_detection.gen/sources_1/bd/mpsoc_preset/ipshared/3111/hdl/axi_data_fifo_v2_1_vl_rfs.v
      c:/Users/SKLTMW05/workspace/zc102_detection/zc102_detection.gen/sources_1/bd/mpsoc_preset/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v
      c:/Users/SKLTMW05/workspace/zc102_detection/zc102_detection.gen/sources_1/bd/mpsoc_preset/ipshared/f0b4/hdl/axi_register_slice_v2_1_vl_rfs.v
      c:/Users/SKLTMW05/workspace/zc102_detection/zc102_detection.gen/sources_1/bd/mpsoc_preset/ipshared/aeb3/hdl/axi_protocol_converter_v2_1_vl_rfs.v
      c:/Users/SKLTMW05/workspace/zc102_detection/zc102_detection.gen/sources_1/bd/mpsoc_preset/ipshared/b8be/hdl/axi_clock_converter_v2_1_vl_rfs.v
      c:/Users/SKLTMW05/workspace/zc102_detection/zc102_detection.gen/sources_1/bd/mpsoc_preset/ipshared/4675/hdl/axi_dwidth_converter_v2_1_vlsyn_rfs.v
      c:/Users/SKLTMW05/workspace/zc102_detection/zc102_detection.gen/sources_1/bd/mpsoc_preset/ip/mpsoc_preset_auto_ds_2/synth/mpsoc_preset_auto_ds_2.v
    }
      rt::read_vhdl -lib xpm D:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_VCOMP.vhd
      rt::read_vhdl -lib blk_mem_gen_v8_4_5 c:/Users/SKLTMW05/workspace/zc102_detection/zc102_detection.gen/sources_1/bd/mpsoc_preset/ipshared/25a8/hdl/blk_mem_gen_v8_4_vhsyn_rfs.vhd
      rt::read_vhdl -lib fifo_generator_v13_2_7 c:/Users/SKLTMW05/workspace/zc102_detection/zc102_detection.gen/sources_1/bd/mpsoc_preset/ipshared/83df/hdl/fifo_generator_v13_2_vhsyn_rfs.vhd
      rt::filesetChecksum
    }
    rt::set_parameter usePostFindUniquification false
    set rt::top mpsoc_preset_auto_ds_2
    rt::set_parameter enableIncremental true
    rt::set_parameter markDebugPreservationLevel "enable"
    set rt::reportTiming false
    rt::set_parameter elaborateOnly true
    rt::set_parameter elaborateRtl true
    rt::set_parameter eliminateRedundantBitOperator false
    rt::set_parameter dataflowBusHighlighting false
    rt::set_parameter generateDataflowBusNetlist false
    rt::set_parameter dataFlowViewInElab false
    rt::set_parameter busViewFixBrokenConnections false
    rt::set_parameter elaborateRtlOnlyFlow false
    rt::set_parameter writeBlackboxInterface true
    rt::set_parameter merge_flipflops true
    rt::set_parameter srlDepthThreshold 3
    rt::set_parameter rstSrlDepthThreshold 4
# MODE: 
    rt::set_parameter webTalkPath {}
    rt::set_parameter synthDebugLog false
    rt::set_parameter printModuleName false
    rt::set_parameter enableSplitFlowPath "C:/Users/SKLTMW05/workspace/zc102_detection/zc102_detection.runs/mpsoc_preset_auto_ds_2_synth_1/.Xil/Vivado-27872-DESKTOP-L5VUIVN/"
    set ok_to_delete_rt_tmp true 
    if { [rt::get_parameter parallelDebug] } { 
       set ok_to_delete_rt_tmp false 
    } 
    if {$rt::useElabCache == false} {
        set oldMIITMVal [rt::get_parameter maxInputIncreaseToMerge]; rt::set_parameter maxInputIncreaseToMerge 1000
        set oldCDPCRL [rt::get_parameter createDfgPartConstrRecurLimit]; rt::set_parameter createDfgPartConstrRecurLimit 1
        $rt::db readXRFFile
      rt::run_rtlelab -module $rt::top
        rt::set_parameter maxInputIncreaseToMerge $oldMIITMVal
        rt::set_parameter createDfgPartConstrRecurLimit $oldCDPCRL
    }

    set rt::flowresult [ source $::env(SYNTH_COMMON)/flow.tcl ]
    rt::HARTNDb_stopJobStats
    if { $rt::flowresult == 1 } { return -code error }


    if { [ info exists ::env(RT_TMP) ] } {
      if { [info exists ok_to_delete_rt_tmp] && $ok_to_delete_rt_tmp } { 
        file delete -force $::env(RT_TMP)
      }
    }

    source $::env(HRT_TCL_PATH)/rtSynthCleanup.tcl
  } ; #end uplevel
} rt::result]

if { $rt::rc } {
  $rt::db resetHdlParse
  set hsKey [rt::get_parameter helper_shm_key] 
  if { $hsKey != "" && [info exists ::env(BUILTIN_SYNTH)] && [rt::get_parameter enableParallelHelperSpawn] } { 
     $rt::db killSynthHelper $hsKey
  } 
  source $::env(HRT_TCL_PATH)/rtSynthCleanup.tcl
  return -code "error" $rt::result
}
