local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 1000 or L0_0 > 5000 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = tostring
L2_2 = headerpage
L1_1 = L1_1(L2_2)
L3_3 = L1_1
L2_2 = L1_1.sub
L4_4 = 1024
L5_5 = 1056
L2_2 = L2_2(L3_3, L4_4, L5_5)
L3_3 = L2_2
L2_2 = L2_2.find
L4_4 = "R%zo%zo%zt%z %zE%zn%zt%zr%zy%z"
L2_2 = L2_2(L3_3, L4_4)
if L2_2 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L3_3 = L1_1
L2_2 = L1_1.sub
L4_4 = 1056
L5_5 = 3072
L2_2 = L2_2(L3_3, L4_4, L5_5)
L3_3 = L2_2
L2_2 = L2_2.find
L4_4 = "E%zq%zu%za%zt%zi%zo%zn%z %zN%za%zt%zi%zv%ze"
L4_4 = L2_2(L3_3, L4_4)
if L3_3 == nil then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = L3_3 + 1056
L2_2, L3_3, L4_4 = L1_1:sub(L5_5, 3328):find("%z%z%z%z%z%z%z%z\028%z%z%z")
if L3_3 == nil then
  return mp.CLEAN
end
L2_2 = L3_3 + L5_5
L3_3 = L2_2 + 128
if L1_1:sub(L2_2, L3_3):find("\193..f...\139.\139.\139.1.\176.\001.\255") ~= nil then
  mp.set_mpattribute("LUA:Malformed.Equation.B")
end
return mp.CLEAN
