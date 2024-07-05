local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = MpCommon
L0_0 = L0_0.GetPersistContextNoPath
L1_1 = "EmailCollection"
L0_0 = L0_0(L1_1)
if L0_0 == nil then
  L1_1 = {}
  L0_0 = L1_1
  L1_1 = table
  L1_1 = L1_1.insert
  L1_1(L2_2, L3_3)
  L1_1 = MpCommon
  L1_1 = L1_1.SetPersistContextNoPath
  L1_1(L2_2, L3_3, L4_4)
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = nil
for L5_5, L6_6 in L2_2(L3_3) do
  L1_1 = tonumber(L6_6)
end
L1_1 = L1_1 + 1
if L1_1 == 9 then
  L2_2()
  return L2_2
else
  L0_0[1] = L1_1
  L5_5 = 60
  L2_2(L3_3, L4_4, L5_5)
  return L2_2
end
return L2_2
