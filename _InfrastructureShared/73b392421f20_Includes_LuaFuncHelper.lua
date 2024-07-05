local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L2_2 = "RcloneMega"
L3_3 = "|"
L4_4 = this_sigattrlog
L4_4 = L4_4[1]
L4_4 = L4_4.matched
if L4_4 then
  L4_4 = this_sigattrlog
  L4_4 = L4_4[1]
  L4_4 = L4_4.utf8p1
  if L4_4 ~= nil then
    L4_4 = this_sigattrlog
    L4_4 = L4_4[1]
    L4_4 = L4_4.utf8p2
    if L4_4 ~= nil then
      L4_4 = this_sigattrlog
      L4_4 = L4_4[1]
      L0_0 = L4_4.utf8p1
      L4_4 = this_sigattrlog
      L4_4 = L4_4[1]
      L1_1 = L4_4.ppid
    end
  end
end
L4_4 = L0_0
L5_5 = L3_3
L4_4 = L4_4 .. L5_5 .. L1_1
L5_5 = GetRollingQueueKeyValue
L5_5 = L5_5(L2_2, L4_4)
if L5_5 ~= nil or type(L5_5) == "table" then
  bm.add_related_string(L2_2, safeJsonSerialize(L5_5), bm.RelatedStringBMReport)
end
return mp.INFECTED
