local L0_0, L1_1, L2_2
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = L0_0.ppid
  if L1_1 ~= nil then
    L1_1 = TrackPidAndTechniqueBM
    L2_2 = L0_0.ppid
    L1_1(L2_2, "T1112", "revil_malware", 28800)
    L1_1 = bm
    L1_1 = L1_1.get_process_relationships
    L2_2 = L1_1()
    for _FORV_6_, _FORV_7_ in ipairs(L2_2) do
      TrackPidAndTechniqueBM(_FORV_7_.ppid, "T1112", "revil_child_malware", 28800)
    end
    return mp.INFECTED
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
