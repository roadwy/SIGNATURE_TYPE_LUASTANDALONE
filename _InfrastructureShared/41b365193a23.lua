local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L3_3 = this_sigattrlog
L3_3 = L3_3[1]
L3_3 = L3_3.matched
if L3_3 then
  L3_3 = this_sigattrlog
  L3_3 = L3_3[1]
  L0_0 = L3_3.utf8p1
end
L3_3 = this_sigattrlog
L3_3 = L3_3[2]
L3_3 = L3_3.matched
if L3_3 then
  L3_3 = this_sigattrlog
  L3_3 = L3_3[2]
  L1_1 = L3_3.utf8p1
end
L3_3 = this_sigattrlog
L3_3 = L3_3[3]
L3_3 = L3_3.matched
if L3_3 then
  L3_3 = this_sigattrlog
  L3_3 = L3_3[3]
  L2_2 = L3_3.utf8p1
end
if L0_0 == nil or L1_1 == nil or L2_2 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
if L1_1 ~= L2_2 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L4_4 = L0_0
L3_3 = L0_0.match
L5_5 = "(.+\\)([^\\]+)$"
L4_4 = L3_3(L4_4, L5_5)
L6_6 = L1_1
L5_5 = L1_1.match
L7_7 = "(.+\\)([^\\]+)$"
L6_6 = L5_5(L6_6, L7_7)
if L3_3 ~= L5_5 then
  L7_7 = mp
  L7_7 = L7_7.CLEAN
  return L7_7
end
L7_7 = string
L7_7 = L7_7.match
L8_8 = L4_4
L7_7 = L7_7(L8_8, "(.+)(%.[^%.]*)")
L8_8 = string
L8_8 = L8_8.match
L8_8 = L8_8(L6_6, "(.+)(%.[^%.]*)")
if L7_7 == nil or L8_8 == nil then
  return mp.CLEAN
end
if string.match(L8_8, "(.+)%(%d%d%d%d%)$") ~= L7_7 then
  return mp.CLEAN
end
return mp.INFECTED
