local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = 5
L1_1 = "servicestop"
L2_2 = ""
L3_3 = {}
if L4_4 then
  L2_2 = L4_4.utf8p2
  L3_3[L4_4] = L5_5
elseif L4_4 then
  L2_2 = L4_4.utf8p2
  L3_3[L4_4] = L5_5
elseif L4_4 then
  L2_2 = L4_4.utf8p2
  L3_3[L4_4] = L5_5
elseif L4_4 then
  L2_2 = L4_4.utf8p2
  L3_3[L4_4] = L5_5
elseif L4_4 then
  L2_2 = L4_4.utf8p2
  L3_3[L4_4] = L5_5
elseif L4_4 then
  L2_2 = L4_4.utf8p2
  L3_3[L4_4] = L5_5
elseif L4_4 then
  L2_2 = L4_4.utf8p2
  L8_8 = 1
  if L5_5 then
    L8_8 = ""
    L8_8 = ","
    L8_8 = L6_6(L7_7, L8_8)
    for L8_8, _FORV_9_ in L5_5(L6_6, L7_7, L8_8, L6_6(L7_7, L8_8)) do
      L3_3[#L3_3 + 1] = _FORV_9_
    end
  end
elseif L4_4 then
  L2_2 = L4_4.utf8p2
  L3_3[L4_4] = L5_5
elseif L4_4 then
  L2_2 = L4_4.utf8p2
  L3_3[L4_4] = L5_5
elseif L4_4 then
  L2_2 = L4_4.utf8p2
  L3_3[L4_4] = L5_5
elseif L4_4 then
  L2_2 = L4_4.utf8p2
  L3_3[L4_4] = L5_5
end
if L0_0 < L4_4 then
  for L7_7, L8_8 in L4_4(L5_5) do
    bm.add_related_string("service_kill", L8_8, bm.RelatedStringBMReport)
  end
  return L4_4
end
for L7_7, L8_8 in L4_4(L5_5) do
  if not MpCommon.QueryPersistContextNoPath(L1_1, L8_8) then
    MpCommon.AppendPersistContextNoPath(L1_1, L8_8, 600)
  end
end
if L0_0 < L4_4 then
  L8_8 = L6_6(L7_7)
  L3_3 = L5_5
  L8_8 = bm
  L8_8 = L8_8.RelatedStringBMReport
  L5_5(L6_6, L7_7, L8_8)
  L8_8 = 1
  L5_5(L6_6, L7_7, L8_8)
  return L5_5
end
return L5_5
