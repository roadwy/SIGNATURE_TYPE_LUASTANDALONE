local L0_0, L1_1, L2_2, L3_3
L0_0 = bm
L0_0 = L0_0.get_imagepath
L0_0 = L0_0()
L1_1 = MpCommon
L1_1 = L1_1.GetOriginalFileName
L2_2 = L0_0
L1_1 = L1_1(L2_2)
if L1_1 == nil then
  L2_2 = bm
  L2_2 = L2_2.add_related_string
  L3_3 = "OriginalFileName_PeParser"
  L2_2(L3_3, "NULL", bm.RelatedStringBMReport)
else
  L2_2 = bm
  L2_2 = L2_2.add_related_string
  L3_3 = "OriginalFileName_PeParser"
  L2_2(L3_3, L1_1, bm.RelatedStringBMReport)
end
L2_2 = nil
L3_3 = this_sigattrlog
L3_3 = L3_3[1]
L3_3 = L3_3.matched
if L3_3 then
  L3_3 = string
  L3_3 = L3_3.lower
  L3_3 = L3_3(this_sigattrlog[1].utf8p1)
  L2_2 = L3_3
end
L3_3 = nil
if this_sigattrlog[2].matched then
  L3_3 = string.lower(this_sigattrlog[2].utf8p1)
end
if L2_2 ~= L3_3 then
  return mp.CLEAN
end
return mp.INFECTED
