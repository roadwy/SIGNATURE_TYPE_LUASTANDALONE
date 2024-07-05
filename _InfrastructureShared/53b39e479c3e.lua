local L0_0, L1_1, L2_2, L3_3, L4_4
if L1_1 then
  L0_0 = L1_1.utf8p2
else
  return L1_1
end
if not L0_0 then
  return L1_1
end
hexToAscii = L1_1
for L4_4 in L1_1(L2_2, L3_3) do
  if L4_4:find("^68747470") then
    L4_4 = hexToAscii(L4_4)
    bm.add_related_string("bmurl", L4_4, bm.RelatedStringBMReport)
  else
    L4_4 = hexToAscii(L4_4)
    bm.add_related_file(L4_4)
  end
end
return L1_1
