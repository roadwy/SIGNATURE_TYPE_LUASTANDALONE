local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = isTamperProtectionOn
L0_0 = L0_0()
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.GetScannedPPID
L0_0 = L0_0()
if L0_0 == "" or L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.GetProcessCommandLine
L2_2 = L0_0
L1_1 = L1_1(L2_2)
L2_2 = false
L3_3 = MpCommon
L3_3 = L3_3.StringRegExpSearch
L4_4 = "(\\s(/TI)(\\s+1)?\\s+$)"
L4_4 = L3_3(L4_4, L1_1)
_ = L4_4
L2_2 = L3_3
if L2_2 == false then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = mp
L3_3 = L3_3.GetParentProcInfo
L3_3 = L3_3()
if L3_3 == nil then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = mp
L4_4 = L4_4.GetProcessCommandLine
L4_4 = L4_4(L3_3.ppid)
if L4_4 == nil then
  return mp.CLEAN
end
L2_2, _ = MpCommon.StringRegExpSearch("(\\s(/SYS)\\s+)", L4_4)
if L2_2 == false then
  return mp.CLEAN
end
return mp.INFECTED
