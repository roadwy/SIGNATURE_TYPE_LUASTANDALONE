local L0_0, L1_1
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = L0_0.ppid
  if L1_1 ~= nil then
    L1_1 = L0_0.ppid
    TrackPidAndTechniqueBM(L1_1, "ttexclusion", "ttexclusion_gp")
    return mp.INFECTED
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
