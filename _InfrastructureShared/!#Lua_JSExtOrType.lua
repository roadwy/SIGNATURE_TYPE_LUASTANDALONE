local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = false
L1_1 = string
L1_1 = L1_1.lower
L2_2 = mp
L2_2 = L2_2.getfilename
L7_7 = L2_2()
L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L2_2())
L2_2 = string
L2_2 = L2_2.sub
L3_3 = L1_1
L2_2 = L2_2(L3_3, L4_4)
if L2_2 == ".js" then
  L0_0 = true
end
L3_3 = string
L3_3 = L3_3.sub
L3_3 = L3_3(L4_4, L5_5)
L2_2 = L3_3
if L2_2 == ".jse" then
  L0_0 = true
end
L3_3 = mp
L3_3 = L3_3.get_mpattribute
L3_3 = L3_3(L4_4)
if L3_3 then
  L0_0 = true
end
if L0_0 == false then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = mp
L3_3 = L3_3.getfilesize
L3_3 = L3_3()
if L3_3 <= 86 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = mp
L3_3 = L3_3.readprotection
L3_3(L4_4)
L3_3 = mp
L3_3 = L3_3.readfile
L3_3 = L3_3(L4_4, L5_5)
for L7_7 = 0, 32 do
  if string.byte(L3_3, L7_7) == 60 or string.byte(L3_3, L7_7) == 37 or string.byte(L3_3, L7_7) == 91 or string.byte(L3_3, L7_7) == 92 or string.byte(L3_3, L7_7) == 38 or string.byte(L3_3, L7_7) == 60 or string.byte(L3_3, L7_7) == 35 or string.byte(L3_3, L7_7) == 125 then
    return mp.CLEAN
  end
  if string.byte(L3_3, L7_7) ~= 32 and string.byte(L3_3, L7_7) ~= 13 and string.byte(L3_3, L7_7) ~= 10 and string.byte(L3_3, L7_7) ~= 9 then
    return mp.INFECTED
  end
end
return L4_4
