local L0_0, L1_1, L2_2
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = string
  L1_1 = L1_1.lower
  L2_2 = this_sigattrlog
  L2_2 = L2_2[1]
  L2_2 = L2_2.utf8p2
  L1_1 = L1_1(L2_2)
  L0_0 = L1_1
end
L1_1 = "\\w:\\\\windows\\\\(?:help|debug|inf|media)\\\\\\w+\\.exe\\s+.*\\w:\\\\windows\\\\(?:help|debug|inf|media)\\\\\\w+\\.dat\\s+.*\\:\\{[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}\\}"
L2_2 = false
L2_2, _ = MpCommon.StringRegExpSearch(L1_1, L0_0)
if L2_2 then
  return mp.INFECTED
end
return mp.CLEAN
