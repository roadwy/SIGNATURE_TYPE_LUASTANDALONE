local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
L0_0 = {}
if L1_1 == 0 then
  return L1_1
end
for L4_4 = L1_1.SIGATTR_LOG_SZ, 1, -1 do
  L5_5 = sigattr_tail
  L5_5 = L5_5[L4_4]
  L6_6 = L5_5.attribute
  if L6_6 == 16402 then
    L6_6 = L5_5.utf8p2
    if L6_6 then
      L6_6 = string
      L6_6 = L6_6.match
      L7_7 = L5_5.utf8p2
      L8_8 = "DestIp=([%d%.]+);DestPort=(%d+);.+;Uri=(.-);"
      L8_8 = L6_6(L7_7, L8_8)
      if L6_6 and L7_7 then
        L9_9 = string
        L9_9 = L9_9.format
        L9_9 = L9_9("ip:%s;port:%s:uri:%s", L6_6, L7_7, L8_8)
        if not L0_0[L9_9] then
          L0_0[L9_9] = true
          bm.add_related_string("c7de7b1b", L9_9, bm.RelatedStringBMReport)
        end
      end
    end
  end
end
return L1_1
