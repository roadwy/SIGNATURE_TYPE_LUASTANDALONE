local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "SCPT:Worm:VBS/Jenxcus!CryptRepsRev"
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 50000 or L0_0 > 200000 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readprotection
L2_2 = false
L1_1(L2_2)
L1_1 = mp
L1_1 = L1_1.readfile
L2_2 = 0
L3_3 = L0_0
L1_1 = L1_1(L2_2, L3_3)
L2_2 = string
L2_2 = L2_2.match
L3_3 = L1_1
L4_4 = "[']([^0-9]-)%s"
L2_2 = L2_2(L3_3, L4_4)
if L2_2 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3, L4_4 = nil, nil
for L8_8 = 0, 9 do
  L4_4 = string.format("[Rr][Ee][Pp][Ll][Aa][Cc][Ee]%%s-%%(%%a-%%s-,%%s-\"([^0-9]-)\"%%s-,%%s-\"[%d]\"", L8_8)
  L3_3 = string.match(L1_1, L4_4)
  if L3_3 == nil then
    return mp.CLEAN
  end
  L2_2 = L2_2:gsub(L3_3, L8_8)
end
L2_2 = L5_5
L8_8 = "(..)"
L8_8 = mp
L8_8 = L8_8.ADD_VFO_TAKE_ACTION_ON_DAD
L5_5(L6_6, L7_7, L8_8)
return L5_5
