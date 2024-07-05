local L0_0, L1_1, L2_2, L3_3
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 >= 2048 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L2_2 = tostring
L3_3 = headerpage
L3_3 = L2_2(L3_3)
L1_1 = L1_1(L2_2, L3_3, L2_2(L3_3))
L2_2 = 0
L3_3 = string
L3_3 = L3_3.gsub
L3_3 = L3_3(L1_1, " ", "")
L1_1 = L3_3
L3_3 = string
L3_3 = L3_3.gsub
L3_3 = L3_3(L1_1, "`", "")
L1_1 = L3_3
L3_3 = string
L3_3 = L3_3.gsub
L2_2, L3_3 = L1_1, L3_3(L1_1, "'%+'", "")
L1_1 = L3_3
if L2_2 < 20 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = string
L3_3 = L3_3.len
L3_3 = L3_3(L1_1)
if L3_3 > 2048 then
  L3_3 = string
  L3_3 = L3_3.find
  L3_3 = L3_3(L1_1, "%z")
  if L3_3 == nil then
    return mp.CLEAN
  end
  L1_1 = string.sub(L1_1, 1, L3_3)
end
L3_3 = mp
L3_3 = L3_3.vfo_add_buffer
L3_3(L1_1, "[StrConcat]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
L3_3 = mp
L3_3 = L3_3.INFECTED
return L3_3
