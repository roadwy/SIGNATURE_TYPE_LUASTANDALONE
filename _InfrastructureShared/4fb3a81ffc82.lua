local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L1_1 = L1_1.utf8p2
  if L1_1 ~= nil then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[1]
    L0_0 = L1_1.utf8p2
  end
end
L2_2 = L0_0
L1_1 = L0_0.match
L1_1 = L1_1(L2_2, L3_3)
if L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = false
for L6_6 in L3_3(L4_4, L5_5) do
  if sysio.IsFileExists(L6_6) then
    bm.add_related_file(L6_6)
    L2_2 = true
  end
end
if L2_2 then
  return L3_3
end
return L3_3
