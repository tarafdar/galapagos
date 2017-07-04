
 add_fsm_encoding \
       {xdma_v3_0_1_axi_str_masterbr_wrrd_br_v.memreqsm_cs} \
       { }  \
       {{000 000} {001 001} {010 010} {011 100} {100 011} }

 add_fsm_encoding \
       {xdma_v3_0_1_pcie_userapp_tgt_intr_ctrl.intr_issue_state} \
       { }  \
       {{0000 0000} {0001 0001} {0010 0010} {0011 0011} {0100 0100} {0101 0101} {0110 0110} {0111 0111} {1001 1000} }

 add_fsm_encoding \
       {shell_xdma_0_0_pcie3_ip_phy_rst.fsm} \
       { }  \
       {{000 111} {001 000} {010 001} {011 010} {100 011} {101 100} {110 101} {111 110} }

 add_fsm_encoding \
       {shell_xdma_0_0_pcie3_ip_phy_txeq.fsm} \
       { }  \
       {{000 000} {001 001} {010 010} {011 011} {100 100} {101 101} }

 add_fsm_encoding \
       {shell_xdma_0_0_pcie3_ip_phy_rxeq.fsm} \
       { }  \
       {{000 000} {001 001} {010 010} {011 011} {100 100} }
