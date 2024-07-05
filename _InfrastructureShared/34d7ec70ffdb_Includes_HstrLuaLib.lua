local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = mp
L0_0 = L0_0.GetScannedPPID
L0_0 = L0_0()
if L0_0 == "" or L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L2_2 = mp
L2_2 = L2_2.GetProcessCommandLine
L3_3 = L0_0
L5_5 = L2_2(L3_3)
L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5, L2_2(L3_3))
L2_2 = false
L3_3 = MpCommon
L3_3 = L3_3.StringRegExpSearch
L4_4 = "(\\s(diagtrack)(\\s|$))"
L5_5 = L1_1
L4_4 = L3_3(L4_4, L5_5)
_ = L4_4
L2_2 = L3_3
if L2_2 == true then
  L3_3 = isTamperProtectionOn
  L3_3 = L3_3()
  if L3_3 then
    L3_3 = mp
    L3_3 = L3_3.INFECTED
    return L3_3
  end
end
L3_3 = mp
L3_3 = L3_3.GetParentProcInfo
L3_3 = L3_3()
if L2_2 == true and L3_3 ~= nil then
  L4_4 = string
  L4_4 = L4_4.lower
  L5_5 = L3_3.image_path
  L4_4 = L4_4(L5_5)
  L5_5 = L4_4.match
  L5_5 = L5_5(L4_4, "([^\\]+)$")
  if L5_5 and (L5_5 == "services.exe" or string.find(L5_5, "nsudo", 1, true) or string.find(L5_5, "advrun", 1, true) or string.find(L5_5, "runas", 1, true) or string.find(L5_5, "runfrom", 1, true)) then
    return mp.INFECTED
  end
end
L4_4 = mp
L4_4 = L4_4.CLEAN
return L4_4
