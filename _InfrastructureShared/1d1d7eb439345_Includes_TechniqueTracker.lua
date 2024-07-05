local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.GetParentProcInfo
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.lower
  L2_2 = L0_0.image_path
  L1_1 = L1_1(L2_2)
  L2_2 = L1_1.match
  L2_2 = L2_2(L1_1, "([^\\]+)$")
  if L2_2 == "edgetransport.exe" then
    L2_2 = L0_0.ppid
    TrackPidAndTechnique(L2_2, "T1505.002", "transport_parent", 28800)
    return mp.INFECTED
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
