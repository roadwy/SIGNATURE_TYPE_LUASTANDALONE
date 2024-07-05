local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
L2_2 = this_sigattrlog
L2_2 = L2_2[1]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[1]
  L2_2 = L2_2.utf8p2
  if L2_2 ~= nil then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[1]
    L0_0 = L2_2.utf8p2
  end
end
L2_2 = this_sigattrlog
L2_2 = L2_2[2]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[2]
  L2_2 = L2_2.utf8p2
  if L2_2 ~= nil then
    L2_2 = this_sigattrlog
    L2_2 = L2_2[2]
    L1_1 = L2_2.utf8p2
  end
end
L2_2 = string
L2_2 = L2_2.lower
L3_3 = L1_1
L2_2 = L2_2(L3_3)
L3_3 = string
L3_3 = L3_3.find
L4_4 = L2_2
L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7)
if not L3_3 then
  L3_3 = string
  L3_3 = L3_3.find
  L4_4 = L2_2
  L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7)
elseif L3_3 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
if L0_0 ~= nil then
  L3_3 = mp
  L3_3 = L3_3.GetExecutablesFromCommandLine
  L4_4 = L0_0
  L3_3 = L3_3(L4_4)
  L4_4 = {}
  L4_4[".xls"] = true
  L4_4.xlsx = true
  L4_4.xlsb = true
  L4_4.xltx = true
  L4_4.xltm = true
  L4_4.xlam = true
  L4_4[".xla"] = true
  L4_4.xlsm = true
  for L8_8, L9_9 in L5_5(L6_6) do
    if string.len(L9_9) > 4 and sysio.IsFileExists(L9_9) and L4_4[string.sub(L9_9, -4)] then
      bm.add_related_file(L9_9)
      return mp.INFECTED
    end
  end
end
L3_3 = mp
L3_3 = L3_3.CLEAN
return L3_3
