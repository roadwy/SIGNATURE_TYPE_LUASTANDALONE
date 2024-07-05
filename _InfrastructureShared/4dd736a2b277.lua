local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = mp
L0_0 = L0_0.GetScannedPPID
L0_0 = L0_0()
if not L0_0 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.GetProcessCommandLine
L2_2 = L0_0
L1_1 = L1_1(L2_2)
if L1_1 then
  L2_2 = #L1_1
elseif L2_2 <= 18 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.lower
L3_3 = L1_1
L2_2 = L2_2(L3_3)
L1_1 = L2_2
L2_2 = string
L2_2 = L2_2.match
L3_3 = L1_1
L4_4 = "%-p \"?([%d]+)\"? %-r \"?([%d]+)\"?"
L3_3 = L2_2(L3_3, L4_4)
if not L2_2 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L3_3 = L3_3 or 999
L4_4 = tonumber
L4_4 = L4_4(L2_2)
L2_2 = L4_4
L4_4 = tonumber
L4_4 = L4_4(L3_3)
L3_3 = L4_4
L4_4 = mp
L4_4 = L4_4.GetPPidFromPid
L4_4 = L4_4(L2_2)
MpCommon.SetTaintedProcess(L4_4, L3_3)
return mp.INFECTED
