#set_property HD.RECONFIGURABLE 1 [get_cells pr_wrapper_i/pr_i]
#startgroup
#create_pblock pblock_pr_i
#resize_pblock pblock_pr_i -add {SLICE_X23Y62:SLICE_X121Y299 DSP48E2_X5Y26:DSP48E2_X22Y119 RAMB18_X3Y26:RAMB18_X14Y119 RAMB36_X3Y13:RAMB36_X14Y59}
##add_cells_to_pblock pblock_pr_i [get_cells [list pr_wrapper_i/pr_i]] -clear_locs
#add_cells_to_pblock pblock_pr_i [get_cells [list pr_wrapper_i]] -clear_locs
#endgroup
#set_property RESET_AFTER_RECONFIG 1 [get_pblocks pblock_pr_i]
#set_property SNAPPING_MODE ON [get_pblocks pblock_pr_i]

create_pblock pblock_pr_i
add_cells_to_pblock pblock_pr_i [get_cells -quiet [list pr_i]]
##v1 
#resize_pblock pblock_pr_i -add {SLICE_X23Y62:SLICE_X121Y299 DSP48E2_X5Y26:DSP48E2_X22Y119 RAMB18_X3Y26:RAMB18_X14Y119 RAMB36_X3Y13:RAMB36_X14Y59}

#v2
resize_pblock pblock_pr_i -add {SLICE_X0Y0:SLICE_X103Y542 DSP48E2_X0Y0:DSP48E2_X18Y215 LAGUNA_X0Y0:LAGUNA_X17Y365 RAMB18_X0Y0:RAMB18_X12Y215 RAMB36_X0Y0:RAMB36_X12Y107}

set_property HD.RECONFIGURABLE 1 [get_cells pr_i]
set_property SNAPPING_MODE ON [get_pblocks pblock_pr_i]
set_property RESET_AFTER_RECONFIG 1 [get_pblocks pblock_pr_i]

opt_design
place_design
route_design
update_design -cell pr_wrapper_i/pr_i -black_box
lock_design -level routing

write_checkpoint shells/projects/$projName/$dcpName
