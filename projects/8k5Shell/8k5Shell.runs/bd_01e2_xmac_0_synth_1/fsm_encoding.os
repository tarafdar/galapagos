
 add_fsm_encoding \
       {ten_gig_eth_mac_v15_1_2_pfc_tx_cntl.legacy_state} \
       { }  \
       {{000 0001} {001 0010} {010 0100} {011 1000} }

 add_fsm_encoding \
       {ten_gig_eth_mac_v15_1_2_rx_fsm.rx_state_int} \
       { }  \
       {{000 000} {001 001} {010 010} {011 011} {100 100} }

 add_fsm_encoding \
       {ten_gig_eth_mac_v15_1_2_rx_control.pause_state} \
       { }  \
       {{000 00001} {001 00010} {100 00100} {101 01000} {110 10000} }
