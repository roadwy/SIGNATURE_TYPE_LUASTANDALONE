local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.GetParentProcInfo
L0_0 = L0_0()
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.lower
  L2_2 = string
  L2_2 = L2_2.sub
  L2_2 = L2_2(L0_0.image_path, -8)
  L1_1 = L1_1(L2_2, L2_2(L0_0.image_path, -8))
  if L1_1 == "w3wp.exe" then
    L1_1 = L0_0.ppid
    if L1_1 == "" or L1_1 == nil then
      L2_2 = mp
      L2_2 = L2_2.CLEAN
      return L2_2
    end
    L2_2 = mp
    L2_2 = L2_2.GetProcessCommandLine
    L2_2 = L2_2(L1_1)
    if L2_2 == "" or L2_2 == nil then
      return mp.CLEAN
    end
    L2_2 = string.lower(L2_2)
    if string.find(L2_2, "-ap \"sharepoint", 1, true) then
      TrackPidAndTechnique(L1_1, "T1505.003", "webshell_parent_sp", 604800)
      return mp.INFECTED
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
