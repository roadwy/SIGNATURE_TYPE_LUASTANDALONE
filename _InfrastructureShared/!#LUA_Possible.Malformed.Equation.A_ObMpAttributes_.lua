local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 100000 or L0_0 > 3500000 then
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
L2_2 = L2_2(L3_3, L4_4, 1056)
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
L4_4 = 2049
L2_2 = L2_2(L3_3, L4_4, 2049)
L3_3 = L2_2
L2_2 = L2_2.find
L4_4 = "[\026\028]"
L2_2 = L2_2(L3_3, L4_4)
if L2_2 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L3_3 = L1_1
L2_2 = L1_1.sub
L4_4 = 2048
L2_2 = L2_2(L3_3, L4_4, 2054)
L3_3 = L2_2
L2_2 = L2_2.find
L4_4 = "([\026\028]...)"
L4_4 = L2_2(L3_3, L4_4)
if L4_4 == nil then
  return mp.CLEAN
end
mp.readprotection(false)
L1_1 = tostring(mp.readfile(2064, 26624))
L2_2, L3_3, _ = L1_1:find("\255\255\255\255\255\255\255\255" .. L4_4)
L3_3 = L3_3 + 128
if L2_2 ~= nil and string.find(L1_1:sub(L2_2, L3_3), "\255.\005....[-\005]....\255") ~= nil then
  mp.set_mpattribute("LUA:Malformed.Equation.A")
end
return mp.CLEAN
