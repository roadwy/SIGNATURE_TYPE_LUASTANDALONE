local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10
if L0_0 > 200000000 then
  return L0_0
end
if L0_0 <= 0 then
  return L0_0
end
for L3_3 = 1, L1_1.SIGATTR_LOG_SZ do
  L4_4 = sigattr_head
  L4_4 = L4_4[L3_3]
  L4_4 = L4_4.matched
  if L4_4 then
    L4_4 = sigattr_head
    L4_4 = L4_4[L3_3]
    L4_4 = L4_4.attribute
    if L4_4 == 16384 then
      L4_4 = string
      L4_4 = L4_4.lower
      L5_5 = sigattr_head
      L5_5 = L5_5[L3_3]
      L5_5 = L5_5.utf8p1
      L4_4 = L4_4(L5_5)
      L5_5 = MpCommon
      L5_5 = L5_5.GetPersistContextNoPath
      L5_5 = L5_5(L6_6)
      for L9_9, L10_10 in L6_6(L7_7) do
        if L10_10 == L4_4 then
          bm.add_threat_file(L10_10)
          return mp.INFECTED
        end
      end
    end
  end
end
return L0_0
