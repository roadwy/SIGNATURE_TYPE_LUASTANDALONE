local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L4_4 = this_sigattrlog
L4_4 = L4_4[1]
L4_4 = L4_4.matched
if L4_4 then
  L4_4 = this_sigattrlog
  L4_4 = L4_4[1]
  L4_4 = L4_4.wp2
  if L4_4 == nil then
    L4_4 = mp
    L4_4 = L4_4.CLEAN
    return L4_4
  end
end
L4_4 = string
L4_4 = L4_4.lower
L5_5 = this_sigattrlog
L5_5 = L5_5[1]
L5_5 = L5_5.utf8p2
L4_4 = L4_4(L5_5)
L5_5 = string
L5_5 = L5_5.match
L6_6 = L4_4
L7_7 = "\\([^\\]+)$"
L5_5 = L5_5(L6_6, L7_7)
L1_1 = L5_5
L5_5 = this_sigattrlog
L5_5 = L5_5[1]
L5_5 = L5_5.wp1
if L5_5 == nil then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = string
L5_5 = L5_5.lower
L6_6 = this_sigattrlog
L6_6 = L6_6[1]
L6_6 = L6_6.utf8p1
L5_5 = L5_5(L6_6)
L6_6 = string
L6_6 = L6_6.match
L7_7 = L5_5
L6_6 = L6_6(L7_7, "\\([^\\]+)$")
L0_0 = L6_6
L6_6 = this_sigattrlog
L6_6 = L6_6[2]
L6_6 = L6_6.matched
if L6_6 then
  L6_6 = this_sigattrlog
  L6_6 = L6_6[2]
  L6_6 = L6_6.wp1
  if L6_6 == nil then
    L6_6 = mp
    L6_6 = L6_6.CLEAN
    return L6_6
  end
end
L6_6 = string
L6_6 = L6_6.lower
L7_7 = this_sigattrlog
L7_7 = L7_7[2]
L7_7 = L7_7.utf8p1
L6_6 = L6_6(L7_7)
L7_7 = string
L7_7 = L7_7.match
L7_7 = L7_7(L6_6, "\\([^\\]+)$")
L2_2 = L7_7
L7_7 = this_sigattrlog
L7_7 = L7_7[3]
L7_7 = L7_7.matched
if L7_7 then
  L7_7 = this_sigattrlog
  L7_7 = L7_7[3]
  L7_7 = L7_7.wp2
  if L7_7 == nil then
    L7_7 = mp
    L7_7 = L7_7.CLEAN
    return L7_7
  end
end
L7_7 = string
L7_7 = L7_7.lower
L7_7 = L7_7(this_sigattrlog[3].utf8p2)
L3_3 = string.match(L7_7, "\\([^\\]+)$")
if L1_1 == L2_2 and L1_1 ~= nil and L0_0 == L3_3 and L0_0 ~= nil then
  return mp.INFECTED
end
return mp.CLEAN
