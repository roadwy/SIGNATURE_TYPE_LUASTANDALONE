local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = "%localappdata%\\Microsoft\\Edge\\User Data\\Default\\Extensions\\"
L1_1 = sysio
L1_1 = L1_1.FindFiles
L1_1 = L1_1(L2_2, L3_3, L4_4)
for L5_5, L6_6 in L2_2(L3_3) do
  bm.add_related_file(L6_6)
  bm.add_related_string("file", L6_6, bm.RelatedStringBMReport)
  bm.add_related_string("file", L6_6, bm.RelatedStringFileReport)
  if L5_5 > 10 then
    break
  end
end
return L2_2
