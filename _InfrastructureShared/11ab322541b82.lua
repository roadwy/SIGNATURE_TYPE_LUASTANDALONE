local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = mp
L0_0 = L0_0.SIGATTR_LOG_SZ
if L0_0 == 0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = {}
for L4_4 = L1_1.SIGATTR_LOG_SZ, 1, -1 do
  L5_5 = sigattr_tail
  L5_5 = L5_5[L4_4]
  L6_6 = L5_5.attribute
  if L6_6 == 16435 then
    L6_6 = L5_5.utf8p1
    if L6_6 then
      L7_7 = string
      L7_7 = L7_7.format
      L8_8 = "virtualalloc: %s"
      L7_7 = L7_7(L8_8, L6_6)
      L8_8 = L0_0[L7_7]
      if not L8_8 then
        L8_8 = bm
        L8_8 = L8_8.add_related_string
        L8_8("cs_al", L7_7, bm.RelatedStringBMReport)
        L0_0[L7_7] = true
      end
    end
  end
  L6_6 = L5_5.attribute
  if L6_6 == 16505 then
    L6_6 = L5_5.utf8p2
    if L6_6 then
      L7_7 = string
      L7_7 = L7_7.match
      L8_8 = L6_6
      L7_7 = L7_7(L8_8, "regionsize:(%d+)")
      if L7_7 then
        L8_8 = string
        L8_8 = L8_8.format
        L8_8 = L8_8("protectvm: %s", L7_7)
        if not L0_0[L8_8] then
          bm.add_related_string("cs_al", L8_8, bm.RelatedStringBMReport)
          L0_0[L8_8] = true
        end
      end
    end
  end
  L6_6 = L5_5.attribute
  if L6_6 == 16523 then
    L6_6 = L5_5.utf8p1
    if L6_6 then
      L7_7 = string
      L7_7 = L7_7.format
      L8_8 = "mapview: %s"
      L7_7 = L7_7(L8_8, L6_6)
      L8_8 = L0_0[L7_7]
      if not L8_8 then
        L8_8 = bm
        L8_8 = L8_8.add_related_string
        L8_8("cs_al", L7_7, bm.RelatedStringBMReport)
        L0_0[L7_7] = true
      end
    end
  end
end
for L5_5, L6_6 in L2_2(L3_3) do
  break
end
if not L1_1 then
  return L2_2
end
return L2_2
