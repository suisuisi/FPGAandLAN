
 add_fsm_encoding \
       {axi_datamover_pcc.sig_pcc_sm_state} \
       { }  \
       {{000 000} {001 001} {010 010} {011 011} {100 100} {101 101} {110 110} {111 111} }

 add_fsm_encoding \
       {axi_datamover_pcc__parameterized0.sig_pcc_sm_state} \
       { }  \
       {{000 000} {001 001} {010 010} {011 011} {100 100} {101 101} {110 110} {111 111} }

 add_fsm_encoding \
       {axi_datamover_s2mm_realign.sig_cmdcntl_sm_state} \
       { }  \
       {{000 000} {001 001} {010 010} {011 011} {101 100} }

 add_fsm_encoding \
       {axi_dma_mm2s_sm.mm2s_cs} \
       { }  \
       {{00 00} {01 01} {11 10} }

 add_fsm_encoding \
       {axi_dma_s2mm_sm.GEN_SM_FOR_LENGTH.s2mm_cs} \
       { }  \
       {{000 000} {001 001} {010 010} {011 011} {100 100} }
