
 add_fsm_encoding \
       {gtwizard_ultrascale_v1_6_5_gtwiz_reset.sm_reset_tx} \
       { }  \
       {{000 000} {001 001} {010 010} {011 011} {100 100} {101 101} {110 110} }

 add_fsm_encoding \
       {gtwizard_ultrascale_v1_6_5_gtwiz_reset.sm_reset_rx} \
       { }  \
       {{000 000} {001 001} {010 010} {011 011} {100 100} {101 101} {110 110} {111 111} }

 add_fsm_encoding \
       {gtwizard_ultrascale_v1_6_5_gtwiz_reset.sm_reset_all} \
       { }  \
       {{000 111} {001 000} {010 001} {011 010} {100 011} {101 100} {110 101} {111 110} }
