open_run synth_1 -name synth_1
create_pblock pblock_pr_i
resize_pblock pblock_pr_i -add CLOCKREGION_X0Y5:CLOCKREGION_X5Y9
add_cells_to_pblock pblock_pr_i [get_cells [list pr_i]] -clear_locs
opt_design -directive Explore
place_design -directive Explore
phys_opt_design -directive Explore
route_design -directive Explore
write_bitstream projects/$projName/$fpgaNum/$fpgaNum.bit 
