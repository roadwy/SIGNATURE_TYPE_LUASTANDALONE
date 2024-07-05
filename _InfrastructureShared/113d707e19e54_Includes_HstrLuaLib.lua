local L0_0, L1_1, L2_2, L3_3
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
L3_3 = L2_2(L3_3)
L1_1 = L1_1(L2_2, L3_3, L2_2(L3_3))
L2_2 = "rmdir\\s+['\"]\\w:\\\\(?:programdata\\\\microsoft|program files \\(x86\\)|program files)\\\\windows defender(?: advanced threat protection)?['\"]\\s+-recurse"
L3_3 = false
L3_3, _ = MpCommon.StringRegExpSearch(L2_2, L1_1)
if L3_3 == false then
  return mp.CLEAN
end
return mp.INFECTED
