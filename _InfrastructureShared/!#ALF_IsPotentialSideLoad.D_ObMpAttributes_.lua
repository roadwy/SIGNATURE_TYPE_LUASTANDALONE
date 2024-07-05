local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = string
L0_0 = L0_0.lower
L1_1 = mp
L1_1 = L1_1.getfilename
L2_2 = L1_1()
L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4, L5_5, L1_1())
L1_1 = string
L1_1 = L1_1.find
L2_2 = L0_0
L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
if L1_1 == nil then
  L1_1 = string
  L1_1 = L1_1.find
  L2_2 = L0_0
  L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
  if L1_1 == nil then
    L1_1 = string
    L1_1 = L1_1.find
    L2_2 = L0_0
    L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
  end
elseif L1_1 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = pe
L1_1 = L1_1.get_exports
L2_2 = L1_1()
if L1_1 == nil or L1_1 < 8 then
  return L3_3
end
for _FORV_6_ = 2, L1_1 do
  if L2_2[_FORV_6_ - 1].rva ~= L2_2[_FORV_6_].rva then
    return mp.CLEAN
  end
end
L3_3(L4_4)
if L3_3 == nil or L3_3 <= 288 then
  return L4_4
end
for _FORV_9_ = 1, #L4_4 do
  if string.find(L5_5, L4_4[_FORV_9_], 1, true) ~= nil then
    return mp.CLEAN
  end
end
return _FOR_.INFECTED
