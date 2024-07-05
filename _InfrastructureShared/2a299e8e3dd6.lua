local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "//AGGR:OleFile"
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.get_mpattribute
  L1_1 = "Lua:FileSizeLT2000"
  L0_0 = L0_0(L1_1)
  if not L0_0 then
    L0_0 = mp
    L0_0 = L0_0.CLEAN
    return L0_0
  end
end
L0_0 = string
L0_0 = L0_0.lower
L1_1 = tostring
L2_2 = headerpage
L3_3 = L1_1(L2_2)
L0_0 = L0_0(L1_1, L2_2, L3_3, L1_1(L2_2))
L1_1 = string
L1_1 = L1_1.find
L2_2 = L0_0
L3_3 = "(<a href%=\"http%://.-\">http%://mail%.vodafone%.co%.uk/)"
L3_3 = L1_1(L2_2, L3_3)
if nil == L3_3 then
  return mp.CLEAN
end
if nil == string.match(L3_3, "<a href%=\"http%://mail%.vodafone%.co%.uk/.-\">http%://mail%.vodafone%.co%.uk/") then
  return mp.INFECTED
end
return mp.CLEAN
