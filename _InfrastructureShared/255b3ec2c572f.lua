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
else
  L1_1 = this_sigattrlog
  L1_1 = L1_1[2]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[2]
    L1_1 = L1_1.utf8p2
    if L1_1 ~= nil then
      L1_1 = this_sigattrlog
      L1_1 = L1_1[2]
      L0_0 = L1_1.utf8p2
    end
  else
    L1_1 = this_sigattrlog
    L1_1 = L1_1[3]
    L1_1 = L1_1.matched
    if L1_1 then
      L1_1 = this_sigattrlog
      L1_1 = L1_1[3]
      L1_1 = L1_1.utf8p2
      if L1_1 ~= nil then
        L1_1 = this_sigattrlog
        L1_1 = L1_1[3]
        L0_0 = L1_1.utf8p2
      end
    else
      L1_1 = this_sigattrlog
      L1_1 = L1_1[4]
      L1_1 = L1_1.matched
      if L1_1 then
        L1_1 = this_sigattrlog
        L1_1 = L1_1[4]
        L1_1 = L1_1.utf8p2
        if L1_1 ~= nil then
          L1_1 = this_sigattrlog
          L1_1 = L1_1[4]
          L0_0 = L1_1.utf8p2
        end
      end
    end
  end
end
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = {}
L1_1[".vbs"] = true
L2_2 = mp
L2_2 = L2_2.GetExecutablesFromCommandLine
L2_2 = L2_2(L3_3)
for L6_6, L7_7 in L3_3(L4_4) do
  if 4 < string.len(L7_7) and sysio.IsFileExists(L7_7) and L1_1[string.sub(L7_7, -4)] then
    bm.add_threat_file(L7_7)
  end
end
return L3_3
