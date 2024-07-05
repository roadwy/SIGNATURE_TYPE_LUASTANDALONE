local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.GetParentProcInfo
L0_0 = L0_0()
L1_1 = isnull
L2_2 = L0_0
L1_1 = L1_1(L2_2)
if not L1_1 then
  L1_1 = isnull
  L2_2 = L0_0.image_path
  L1_1 = L1_1(L2_2)
  if not L1_1 then
    L1_1 = string
    L1_1 = L1_1.lower
    L2_2 = string
    L2_2 = L2_2.sub
    L2_2 = L2_2(L0_0.image_path, -11)
    L1_1 = L1_1(L2_2, L2_2(L0_0.image_path, -11))
    if L1_1 ~= "svchost.exe" then
      L2_2 = mp
      L2_2 = L2_2.CLEAN
      return L2_2
    end
  end
end
L1_1 = mp
L1_1 = L1_1.GetScannedPPID
L1_1 = L1_1()
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
if GetRollingQueueKeyValues("gpo_schtasks", L2_2) then
  return mp.INFECTED
end
return mp.CLEAN
