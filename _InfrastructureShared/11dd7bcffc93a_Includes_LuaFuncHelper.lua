local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = mp
L0_0 = L0_0.GetScannedPPID
L0_0 = L0_0()
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.GetProcessCommandLine
L2_2 = L0_0
L1_1 = L1_1(L2_2)
if L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.lower
L2_2 = L2_2(L3_3)
L1_1 = L2_2
L2_2 = {
  L3_3,
  L4_4,
  L5_5,
  L6_6,
  L7_7
}
L6_6 = "scab"
L7_7 = "huf_inc_var"
for L6_6, L7_7 in L3_3(L4_4) do
  if StringEndsWith(L1_1, L7_7) then
    return mp.INFECTED
  end
end
return L3_3
