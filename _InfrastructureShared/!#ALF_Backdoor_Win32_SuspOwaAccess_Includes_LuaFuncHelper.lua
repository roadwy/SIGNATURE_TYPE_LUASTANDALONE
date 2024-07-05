local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L2_2 = tostring
L3_3 = headerpage
L2_2 = L2_2(L3_3)
L0_0 = L2_2
if L0_0 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L3_3 = L0_0
L2_2 = L0_0.match
L4_4 = "([^:]+:)"
L2_2 = L2_2(L3_3, L4_4)
if not L2_2 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = #L2_2
L4_4 = #L0_0
if not (L3_3 < L4_4) then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = string
L3_3 = L3_3.lower
L4_4 = L2_2
L3_3 = L3_3(L4_4)
L2_2 = L3_3
L4_4 = L2_2
L3_3 = L2_2.match
L5_5 = "post(/.*.aspx)"
L3_3 = L3_3(L4_4, L5_5)
L1_1 = L3_3
if not L1_1 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = "SuspOwaAccess"
L4_4 = 3600
L5_5 = 10
AppendToRollingQueue(L3_3, L1_1, 1, L4_4, L5_5)
return mp.INFECTED
