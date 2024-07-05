local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = string
L0_0 = L0_0.lower
L1_1 = mp
L1_1 = L1_1.getfilename
L5_5 = L1_1()
L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4, L5_5, L1_1())
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.len
  L1_1 = L1_1(L2_2)
elseif L1_1 < 10 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = L0_0.find
L5_5 = true
L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
if L1_1 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = ""
for L5_5 in L2_2(L3_3, L4_4) do
  L1_1 = L1_1 .. L5_5 .. "*"
end
L2_2["zip*msi*"] = true
L2_2["rar*msi*"] = true
L2_2["7z*msi*"] = true
L2_2["iso*msi*"] = true
L2_2["msi*msi*"] = true
L2_2["msi*zip*"] = true
if L3_3 == true then
  return L3_3
end
return L3_3
