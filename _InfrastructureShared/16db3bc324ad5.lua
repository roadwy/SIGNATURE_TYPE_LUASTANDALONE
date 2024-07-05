local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L1_1 = this_sigattrlog
L1_1 = L1_1[14]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[14]
  L0_0 = L1_1.utf8p1
else
  L1_1 = this_sigattrlog
  L1_1 = L1_1[15]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[15]
    L0_0 = L1_1.utf8p1
  else
    L1_1 = this_sigattrlog
    L1_1 = L1_1[16]
    L1_1 = L1_1.matched
    if L1_1 then
      L1_1 = this_sigattrlog
      L1_1 = L1_1[16]
      L0_0 = L1_1.utf8p1
    else
      L1_1 = this_sigattrlog
      L1_1 = L1_1[17]
      L1_1 = L1_1.matched
      if L1_1 then
        L1_1 = this_sigattrlog
        L1_1 = L1_1[17]
        L0_0 = L1_1.utf8p1
      else
        L1_1 = mp
        L1_1 = L1_1.CLEAN
        return L1_1
      end
    end
  end
end
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = -1
L2_2 = -1
L3_3 = MpCommon
L3_3 = L3_3.GetPersistContext
L3_3 = L3_3(L4_4)
if L3_3 ~= nil then
  for L7_7, L8_8 in L4_4(L5_5) do
    if tonumber(string.match(L8_8, "^Age:([0-9]+)$")) ~= nil and L1_1 < tonumber(string.match(L8_8, "^Age:([0-9]+)$")) then
      L1_1 = tonumber(string.match(L8_8, "^Age:([0-9]+)$"))
    end
    if tonumber(string.match(L8_8, "^Prevalence:([0-9]+)$")) ~= nil and L2_2 < tonumber(string.match(L8_8, "^Prevalence:([0-9]+)$")) then
      L2_2 = tonumber(string.match(L8_8, "^Prevalence:([0-9]+)$"))
    end
  end
  if L1_1 > -1 and L1_1 <= 1 and L2_2 > -1 and L2_2 <= 100 then
    return L4_4
  end
end
return L4_4
