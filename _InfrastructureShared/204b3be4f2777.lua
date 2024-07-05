local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L1_1 = this_sigattrlog
L1_1 = L1_1[2]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[2]
  L0_0 = L1_1.utf8p2
else
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[1]
    L0_0 = L1_1.utf8p2
  end
end
if L0_0 ~= nil then
  L1_1 = mp
  L1_1 = L1_1.GetExecutablesFromCommandLine
  L1_1 = L1_1(L2_2)
  for L5_5, L6_6 in L2_2(L3_3) do
    L7_7 = nil
    if L6_6:len() > 12 then
      L7_7 = string.lower(string.sub(L6_6, -12))
    end
    if L7_7 ~= "rundll32.exe" and L7_7 ~= "regsvr32.exe" and sysio.IsFileExists(L6_6) then
      bm.add_related_file(L6_6)
    end
  end
end
L1_1 = mp
L1_1 = L1_1.INFECTED
return L1_1
