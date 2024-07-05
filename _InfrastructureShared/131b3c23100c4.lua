local L0_0, L1_1, L2_2, L3_3
L0_0 = this_sigattrlog
L0_0 = L0_0[4]
L0_0 = L0_0.matched
if L0_0 then
  L0_0 = this_sigattrlog
  L0_0 = L0_0[4]
  L0_0 = L0_0.utf8p2
  if L0_0 ~= nil then
    L0_0 = string
    L0_0 = L0_0.lower
    L1_1 = this_sigattrlog
    L1_1 = L1_1[4]
    L1_1 = L1_1.utf8p2
    L0_0 = L0_0(L1_1)
    L2_2 = L0_0
    L1_1 = L0_0.match
    L3_3 = "totalsizeappend:(%d+);"
    L1_1 = L1_1(L2_2, L3_3)
    if L1_1 then
      L2_2 = tonumber
      L3_3 = L1_1
      L2_2 = L2_2(L3_3)
      L1_1 = L2_2
    end
    L3_3 = L0_0
    L2_2 = L0_0.match
    L2_2 = L2_2(L3_3, "totalsizewrite:(%d+);")
    if L2_2 then
      L3_3 = tonumber
      L3_3 = L3_3(L2_2)
      L2_2 = L3_3
    end
    if L2_2 > 0 and L1_1 > 0 then
      L3_3 = L0_0.match
      L3_3 = L3_3(L0_0, "numwrites:(%d+);")
      bm.add_related_string("write_size", tostring(L2_2), bm.RelatedStringBMReport)
      bm.add_related_string("append_size", tostring(L1_1), bm.RelatedStringBMReport)
      bm.add_related_string("num_writes", tostring(L3_3), bm.RelatedStringBMReport)
      return mp.INFECTED
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
