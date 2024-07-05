local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10
L0_0 = "BM_MT"
L1_1 = mp
L1_1 = L1_1.enum_mpattributesubstring
L2_2 = L0_0
L1_1 = L1_1(L2_2)
if L1_1 ~= nil then
  L2_2 = #L1_1
  if L2_2 ~= 0 then
    L2_2 = #L1_1
    if not (L2_2 >= 100) then
      L2_2 = type
      L3_3 = L1_1
      L2_2 = L2_2(L3_3)
    end
  end
elseif L2_2 ~= "table" then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = {}
L3_3 = {}
for L7_7, L8_8 in L4_4(L5_5) do
  L9_9 = string
  L9_9 = L9_9.match
  L10_10 = L8_8
  L10_10 = L9_9(L10_10, "^BM_M(([tT][0-9][0-9][0-9][0-9])[%.]?[0-9]?[0-9]?[0-9]?):?(.*)")
  if L9_9 ~= nil and L10_10 ~= nil then
    if #L9_9 > 6 then
      table.insert(L3_3, L9_9)
      mp.set_mpattribute("BM_M" .. L9_9)
    end
    table.insert(L2_2, L10_10)
    mp.set_mpattribute("BM_M" .. L10_10)
  end
end
if L4_4 <= 1 then
  if L4_4 <= 1 then
    return L4_4
  end
end
if L4_4 > 1 then
  if L4_4 ~= nil then
    if L5_5 >= 2 then
      L5_5(L6_6)
    end
    if L5_5 >= 3 then
      L5_5(L6_6)
    end
    if L5_5 >= 4 then
      L5_5(L6_6)
    end
  end
end
if L4_4 > 1 then
  if L4_4 ~= nil then
    if L5_5 >= 2 then
      L5_5(L6_6)
    end
    if L5_5 >= 3 then
      L5_5(L6_6)
    end
    if L5_5 >= 4 then
      L5_5(L6_6)
    end
  end
end
return L4_4
