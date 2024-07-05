local L0_0, L1_1, L2_2
L0_0 = pcall
L1_1 = bm
L1_1 = L1_1.get_current_process_startup_info
L1_1 = L0_0(L1_1)
if L0_0 and L1_1 ~= nil then
  L2_2 = L1_1.ppid
  if L2_2 ~= nil then
    TrackPidAndTechniqueBM(L2_2, "T1055.002", "processinjection_source_dridex")
    return mp.INFECTED
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
