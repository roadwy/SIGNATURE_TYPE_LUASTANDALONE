local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = this_sigattrlog
L0_0 = L0_0[1]
L0_0 = L0_0.utf8p2
L1_1 = false
L2_2 = string
L2_2 = L2_2.find
L6_6 = true
L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
if L2_2 then
  L1_1 = true
else
  L2_2 = StringSplit
  L2_2 = L2_2(L3_3, L4_4)
  for L6_6 = 1, #L2_2 do
    L7_7 = L2_2[L6_6]
    if L7_7:sub(1, 1) == "-" and string.find(L7_7, "c", 1, true) then
      L1_1 = true
    end
  end
end
if L1_1 then
  L2_2 = TrackPidAndTechniqueBM
  L2_2(L3_3, L4_4, L5_5)
  L2_2 = mp
  L2_2 = L2_2.INFECTED
  return L2_2
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
