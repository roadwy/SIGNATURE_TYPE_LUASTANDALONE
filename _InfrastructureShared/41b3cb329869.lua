local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L1_1 = L1_1.utf8p2
  if L1_1 ~= nil then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[1]
    L0_0 = L1_1.utf8p2
  end
end
if L0_0 ~= nil then
  L1_1 = mp
  L1_1 = L1_1.GetExecutablesFromCommandLine
  L2_2 = L0_0
  L1_1 = L1_1(L2_2)
  L2_2 = {}
  L2_2[".xls"] = true
  L2_2.xlsx = true
  L2_2.xlsb = true
  L2_2.xltx = true
  L2_2.xltm = true
  L2_2.xlam = true
  L2_2[".xla"] = true
  L2_2.xlsm = true
  for L6_6, L7_7 in L3_3(L4_4) do
    if string.len(L7_7) > 4 and sysio.IsFileExists(L7_7) and L2_2[string.sub(L7_7, -4)] then
      bm.add_related_file(L7_7)
      return mp.INFECTED
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
