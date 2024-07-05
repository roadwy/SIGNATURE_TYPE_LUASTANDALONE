local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L3_3 = this_sigattrlog
L3_3 = L3_3[1]
L3_3 = L3_3.matched
if L3_3 then
  L3_3 = this_sigattrlog
  L3_3 = L3_3[1]
  L0_0 = L3_3.utf8p2
  L3_3 = this_sigattrlog
  L3_3 = L3_3[1]
  L1_1 = L3_3.utf8p1
end
L3_3 = this_sigattrlog
L3_3 = L3_3[2]
L3_3 = L3_3.matched
if L3_3 then
  L3_3 = this_sigattrlog
  L3_3 = L3_3[2]
  L2_2 = L3_3.utf8p2
else
  L3_3 = this_sigattrlog
  L3_3 = L3_3[3]
  L3_3 = L3_3.matched
  if L3_3 then
    L3_3 = this_sigattrlog
    L3_3 = L3_3[3]
    L2_2 = L3_3.utf8p2
    if L2_2 and L1_1 then
      L3_3 = string
      L3_3 = L3_3.find
      L7_7 = true
      L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7)
      if L3_3 then
        L3_3 = string
        L3_3 = L3_3.find
        L7_7 = true
        L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7)
        if L3_3 then
          L3_3 = mp
          L3_3 = L3_3.CLEAN
          return L3_3
        end
      end
    end
  else
    L3_3 = this_sigattrlog
    L3_3 = L3_3[4]
    L3_3 = L3_3.matched
    if L3_3 then
      L3_3 = this_sigattrlog
      L3_3 = L3_3[4]
      L2_2 = L3_3.utf8p2
    end
  end
end
if L2_2 then
  L3_3 = mp
  L3_3 = L3_3.GetExecutablesFromCommandLine
  L3_3 = L3_3(L4_4)
  if L3_3 then
    for L7_7, L8_8 in L4_4(L5_5) do
      bm.add_related_file(L8_8)
    end
  end
end
if L0_0 then
  L3_3 = mp
  L3_3 = L3_3.GetExecutablesFromCommandLine
  L3_3 = L3_3(L4_4)
  if L3_3 then
    for L7_7, L8_8 in L4_4(L5_5) do
      bm.add_related_file(L8_8)
    end
  end
end
L3_3 = add_parents
L3_3()
L3_3 = mp
L3_3 = L3_3.INFECTED
return L3_3
