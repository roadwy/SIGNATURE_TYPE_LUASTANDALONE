local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "TARG:Worm:VBS/Jenxcus!Crypt1"
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 110000 or L0_0 > 500000 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = tostring
L2_2 = headerpage
L1_1 = L1_1(L2_2)
L2_2 = string
L2_2 = L2_2.lower
L3_3 = L1_1
L2_2 = L2_2(L3_3)
L1_1 = L2_2
L3_3 = L1_1
L2_2 = L1_1.match
L4_4 = "'execute%(%p%((%d%d%d?%d?)%-%s(%d%d%d?%d?)%)%s&%s%p%((%d%d%d?%d?)%-%s(%d%d%d?%d?)%)%s&%s%p%((%d%d%d?%d?)%-%s(%d%d%d?%d?)%)"
L7_7 = L2_2(L3_3, L4_4)
if L2_2 == nil then
  L8_8 = mp
  L8_8 = L8_8.CLEAN
  return L8_8
end
if L3_3 == nil then
  L8_8 = mp
  L8_8 = L8_8.CLEAN
  return L8_8
end
if L4_4 == nil then
  L8_8 = mp
  L8_8 = L8_8.CLEAN
  return L8_8
end
if L5_5 == nil then
  L8_8 = mp
  L8_8 = L8_8.CLEAN
  return L8_8
end
if L6_6 == nil then
  L8_8 = mp
  L8_8 = L8_8.CLEAN
  return L8_8
end
if L7_7 == nil then
  L8_8 = mp
  L8_8 = L8_8.CLEAN
  return L8_8
end
L8_8 = L2_2 - L3_3
if string.char(L8_8) ~= "'" and string.char(L8_8) ~= "\r" then
  return mp.CLEAN
end
L8_8 = L4_4 - L5_5
if string.char(L8_8) ~= "=" and string.char(L8_8) ~= "<" and string.char(L8_8) ~= "\n" then
  return mp.CLEAN
end
L8_8 = L6_6 - L7_7
if string.char(L8_8) ~= "-" and string.char(L8_8) ~= "[" and string.char(L8_8) ~= "h" then
  return mp.CLEAN
end
return mp.INFECTED
