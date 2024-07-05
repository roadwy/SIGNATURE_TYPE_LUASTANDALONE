local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
if L0_0 == 0 then
  return L0_0
end
for L3_3 = L0_0.SIGATTR_LOG_SZ, 1, -1 do
  L4_4 = sigattr_tail
  L4_4 = L4_4[L3_3]
  L5_5 = L4_4.matched
  if L5_5 then
    L5_5 = L4_4.utf8p2
    if L5_5 then
      L5_5 = string
      L5_5 = L5_5.lower
      L6_6 = L4_4.utf8p2
      L5_5 = L5_5(L6_6)
      L6_6 = false
      L7_7 = "\\{[0-9a-f]{8}\\-[0-9a-f]{4}\\-[0-9a-f]{4}\\-[0-9a-f]{4}\\-[0-9a-f]{12}\\}"
      L6_6, _ = MpCommon.StringRegExpSearch(L7_7, L5_5)
      if L6_6 then
        return mp.CLEAN
      end
    end
  end
  L5_5 = L4_4.matched
  if L5_5 then
    L5_5 = L4_4.utf8p2
    if not L5_5 then
      L5_5 = mp
      L5_5 = L5_5.CLEAN
      return L5_5
    end
  end
end
return L0_0
