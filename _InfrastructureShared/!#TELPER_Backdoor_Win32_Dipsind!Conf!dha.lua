local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 2000 or L0_0 > 2500 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.bitand
L2_2 = mp
L2_2 = L2_2.readu_u32
L2_2 = L2_2(headerpage, 1)
L1_1 = L1_1(L2_2, 91)
if L1_1 ~= 91 then
  L1_1 = mp
  L1_1 = L1_1.bitand
  L2_2 = mp
  L2_2 = L2_2.readu_u32
  L2_2 = L2_2(headerpage, 1)
  L1_1 = L1_1(L2_2, 23296)
  if L1_1 ~= 23296 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
end
L1_1 = tostring
L2_2 = headerpage
L1_1 = L1_1(L2_2)
L2_2 = string
L2_2 = L2_2.lower
L2_2 = L2_2(L1_1)
if string.match(string.sub(L2_2, 0, 30), "(%[[/%a%d]+?%])") == nil then
  return mp.CLEAN
end
if string.match(string.sub(L2_2, 10, 370), "([/%a%d]+%?%?=[/%a%d]+%?)") == nil then
  return mp.CLEAN
end
return mp.INFECTED
