if this_sigattrlog[1].matched or this_sigattrlog[4].matched then
  TrackPidAndTechniqueBM("BM", "T1070.004", "DefenseEvasion_IndicatorRemoval_FileDeletion")
end
TrackPidAndTechniqueBM("BM", "T1070.003", "DefenseEvasion_IndicatorRemoval_ClearCmdHistory")
mp.set_mpattribute("BM_ClearCmdHistory")
return mp.INFECTED
