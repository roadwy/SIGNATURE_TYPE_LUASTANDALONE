local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.GetParentProcInfo
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = L0_0.ppid
  if L1_1 ~= "" and L1_1 ~= nil then
    TrackPidAndTechnique(L1_1, "T1505.003", "webshell_parent", 604800)
  end
end
L1_1 = mp
L1_1 = L1_1.INFECTED
return L1_1
