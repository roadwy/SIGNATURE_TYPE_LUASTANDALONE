local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.GetParentProcInfo
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.lower
  L2_2 = L0_0.image_path
  L1_1 = L1_1(L2_2)
  L2_2 = L0_0.ppid
  if L1_1 == nil then
    return mp.CLEAN
  end
  if L2_2 ~= "" and L2_2 ~= nil then
    TrackPidAndTechnique(L2_2, "T1003.002", "shadowcopy_create")
    if IsTechniqueObservedForPid(L2_2, "iis_exch_web") or IsTechniqueObservedForPid(L2_2, "iis_exch_childproc") or IsTechniqueObservedForPid(L2_2, "webshell_parent") then
      return mp.INFECTED
    end
  end
end
L1_1 = mp
L1_1 = L1_1.LOWFI
return L1_1
