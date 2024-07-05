local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
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
L8_8 = L2_2(L3_3)
L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L2_2(L3_3))
L2_2 = {
  L3_3,
  L4_4,
  L5_5,
  L6_6
}
L3_3 = "(?:set|add)-mppreference\\s+-exclusionextension\\s+\\*\\.?(?:exe|dll)\\s"
L3_3 = false
for L7_7, L8_8 in L4_4(L5_5) do
  L3_3, L7_7 = MpCommon.StringRegExpSearch(L8_8, L1_1)
  if L3_3 then
    return mp.LOWFI
  end
end
return L4_4
