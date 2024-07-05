local L0_0, L1_1, L2_2, L3_3
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
elseif L2_2 <= 10 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = "\\w:\\\\windows\\\\(help|debug|inf|media)\\\\\\w+\\.exe\\s+.*\\w:\\\\windows\\\\(help|debug|inf|media)\\\\\\w+\\.dat\\s+.*\\:\\{[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}\\}"
L3_3 = false
L3_3, _ = MpCommon.StringRegExpSearch(L2_2, L1_1)
if L3_3 then
  return mp.INFECTED
end
return mp.CLEAN
