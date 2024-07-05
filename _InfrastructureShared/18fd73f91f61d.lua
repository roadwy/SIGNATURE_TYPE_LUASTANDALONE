local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = mp
L0_0 = L0_0.GetScannedPPID
L0_0 = L0_0()
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L2_2 = mp
L2_2 = L2_2.GetProcessCommandLine
L3_3 = L0_0
L4_4 = L2_2(L3_3)
L1_1 = L1_1(L2_2, L3_3, L4_4, L2_2(L3_3))
L2_2 = string
L2_2 = L2_2.find
L3_3 = L1_1
L4_4 = "sdelete"
L2_2 = L2_2(L3_3, L4_4, 1, true)
if L2_2 ~= nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = versioning
L2_2 = L2_2.GetLocaleIdentifier
L2_2 = L2_2()
if L2_2 ~= 1058 then
  L3_3 = MpCommon
  L3_3 = L3_3.QueryPersistContextNoPath
  L4_4 = "MacMatchesHighRiskProtectionTarget"
  L3_3 = L3_3(L4_4, "on")
elseif L3_3 then
  L3_3 = mp
  L3_3 = L3_3.GetParentProcInfo
  L3_3 = L3_3()
  if L3_3 ~= nil then
    L4_4 = string
    L4_4 = L4_4.lower
    L4_4 = L4_4(string.sub(L3_3.image_path, -12))
    if string.find(L4_4, "svchost.exe", 1, true) ~= nil or string.find(L4_4, "wmiprvse.exe", 1, true) ~= nil or L4_4 == nil then
      return mp.INFECTED
    end
  end
end
L3_3 = mp
L3_3 = L3_3.CLEAN
return L3_3
