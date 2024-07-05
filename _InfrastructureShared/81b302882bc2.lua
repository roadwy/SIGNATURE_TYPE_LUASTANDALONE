local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L1_1 = "|.js|jse|vbs|vbe|"
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
if L0_0 ~= nil then
  L2_2 = mp
  L2_2 = L2_2.GetExecutablesFromCommandLine
  L2_2 = L2_2(L3_3)
  for L6_6, L7_7 in L3_3(L4_4) do
    L8_8 = sysio
    L8_8 = L8_8.IsFileExists
    L8_8 = L8_8(L7_7)
    if L8_8 then
      L8_8 = string
      L8_8 = L8_8.lower
      L8_8 = L8_8(string.sub(L7_7, -3))
      if string.find(L1_1, L8_8, 1, true) then
        bm.add_related_file(L7_7)
      end
    end
  end
end
L2_2 = mp
L2_2 = L2_2.INFECTED
return L2_2
