local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
if L1_1 > 5 then
  L0_0 = L1_1 - 5
else
  L0_0 = 1
end
for L4_4 = L1_1.SIGATTR_LOG_SZ, L0_0, -1 do
  L5_5 = sigattr_tail
  L5_5 = L5_5[L4_4]
  L5_5 = L5_5.attribute
  if L5_5 ~= 12305 then
    L5_5 = sigattr_tail
    L5_5 = L5_5[L4_4]
    L5_5 = L5_5.attribute
    if L5_5 ~= 12362 then
      L5_5 = sigattr_tail
      L5_5 = L5_5[L4_4]
      L5_5 = L5_5.attribute
      if L5_5 == 12421 then
        L5_5 = mp
        L5_5 = L5_5.INFECTED
        return L5_5
      else
        L5_5 = mp
        L5_5 = L5_5.CLEAN
        return L5_5
      end
    end
  end
end
return L1_1
