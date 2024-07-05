local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.utf8p2
if not L0_0 then
  return L1_1
end
L0_0 = L1_1
if not L0_0 then
  return L1_1
end
for L4_4, L5_5 in L1_1(L2_2) do
  if L5_5 and sysio.IsFileExists(L5_5) and not mp.IsKnownFriendlyFile(L5_5, false, false) then
    bm.add_related_file(L5_5)
  end
end
return L1_1
