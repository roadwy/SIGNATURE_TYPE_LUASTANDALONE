local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L2_2 = mp
L2_2 = L2_2.CLEAN
L3_3 = this_sigattrlog
L3_3 = L3_3[2]
L0_0 = L3_3.utf8p2
L3_3 = this_sigattrlog
L3_3 = L3_3[3]
L1_1 = L3_3.utf8p1
if not L0_0 or not L1_1 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = string
L3_3 = L3_3.lower
L3_3 = L3_3(L4_4)
L0_0 = L3_3
L3_3 = string
L3_3 = L3_3.lower
L3_3 = L3_3(L4_4)
L1_1 = L3_3
L3_3 = string
L3_3 = L3_3.find
L7_7 = true
L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7)
if L3_3 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = string
L3_3 = L3_3.find
L7_7 = true
L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7)
if L3_3 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = mp
L3_3 = L3_3.GetExecutablesFromCommandLine
L3_3 = L3_3(L4_4)
if L3_3 then
  for L7_7, L8_8 in L4_4(L5_5) do
    if 3 <= string.len(L8_8) then
      if L2_2 ~= mp.INFECTED and string.find(L1_1, L8_8, 1, true) then
        L2_2 = mp.INFECTED
      elseif sysio.IsFileExists(L8_8) and not mp.IsKnownFriendlyFile(L8_8, false, false) then
        bm.add_related_file(L8_8)
      end
    end
  end
end
if L0_0 ~= L4_4 then
  return L4_4
end
return L4_4
