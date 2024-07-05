local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
L2_2 = this_sigattrlog
L2_2 = L2_2[3]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = string
  L2_2 = L2_2.lower
  L2_2 = L2_2(L3_3)
  L0_0 = L2_2
end
L2_2 = this_sigattrlog
L2_2 = L2_2[4]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L1_1 = L2_2[4]
end
L2_2 = getMalwareManifest
L2_2 = L2_2()
if L2_2 ~= nil then
  for L6_6, L7_7 in L3_3(L4_4) do
    if L0_0 == L7_7 then
      L8_8 = mp
      L8_8 = L8_8.INFECTED
      return L8_8
    end
    if L1_1 ~= nil then
      L8_8 = string
      L8_8 = L8_8.lower
      L9_9 = L1_1.utf8p1
      L8_8 = L8_8(L9_9)
      if L8_8 ~= nil then
        L9_9 = string
        L9_9 = L9_9.find
        L9_9 = L9_9(L8_8, L7_7, 1, true)
        if L9_9 then
          L9_9 = bm
          L9_9 = L9_9.add_related_file
          L9_9(L7_7)
          L9_9 = mp
          L9_9 = L9_9.INFECTED
          return L9_9
        end
      end
      L9_9 = string
      L9_9 = L9_9.lower
      L9_9 = L9_9(L1_1.utf8p2)
      if string.find(L9_9, L7_7, 1, true) then
        bm.add_related_file(L7_7)
        return mp.INFECTED
      end
    end
  end
end
return L3_3
