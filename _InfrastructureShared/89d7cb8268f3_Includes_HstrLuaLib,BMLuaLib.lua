local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
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
L9_9 = L2_2(L3_3)
L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L2_2(L3_3))
L2_2 = mp
L2_2 = L2_2.GetParentProcInfo
L2_2 = L2_2()
if L2_2 ~= nil then
  L3_3 = string
  L3_3 = L3_3.lower
  L4_4 = L2_2.image_path
  L3_3 = L3_3(L4_4)
  L4_4 = mp
  L4_4 = L4_4.GetProcessCommandLine
  L4_4 = L4_4(L5_5)
  L8_8 = L3_3
  L9_9 = L5_5
  if L7_7 then
    return L7_7
  end
  L8_8 = L4_4
  L9_9 = L6_6
  if L7_7 then
    return L7_7
  end
end
L3_3 = {
  L4_4,
  L5_5,
  L6_6
}
L4_4 = "(?:set|add)-mppreference\\s+-exclusionpath\\s+c:\\\\\\s*$"
L4_4 = false
for L8_8, L9_9 in L5_5(L6_6) do
  L4_4, L8_8 = MpCommon.StringRegExpSearch(L9_9, L1_1)
  if L4_4 then
    if versioning.IsSeville() then
      return mp.INFECTED
    else
      return mp.LOWFI
    end
  end
end
return L5_5
