local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L0_0 = L1_1.utf8p1
else
  L1_1 = this_sigattrlog
  L1_1 = L1_1[2]
  L1_1 = L1_1.matched
  if L1_1 then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[2]
    L0_0 = L1_1.utf8p1
  else
    L1_1 = this_sigattrlog
    L1_1 = L1_1[3]
    L1_1 = L1_1.matched
    if L1_1 then
      L1_1 = this_sigattrlog
      L1_1 = L1_1[3]
      L0_0 = L1_1.utf8p1
    end
  end
end
L1_1 = string
L1_1 = L1_1.lower
L2_2 = L0_0
L1_1 = L1_1(L2_2)
L0_0 = L1_1
L1_1 = string
L1_1 = L1_1.lower
L2_2 = this_sigattrlog
L2_2 = L2_2[4]
L2_2 = L2_2.utf8p1
L1_1 = L1_1(L2_2)
L2_2 = {
  L3_3,
  L4_4,
  L5_5,
  L6_6
}
L3_3 = "/firefox$"
L3_3 = {
  L4_4,
  L5_5,
  L6_6
}
for L7_7, L8_8 in L4_4(L5_5) do
  if string.find(L1_1, L8_8) then
    return mp.CLEAN
  end
end
for L7_7, L8_8 in L4_4(L5_5) do
  if string.find(L0_0, L8_8) then
    return mp.INFECTED
  end
end
return L4_4
