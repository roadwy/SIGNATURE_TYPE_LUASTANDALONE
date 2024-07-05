local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 15000 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
if L0_0 > 500000 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = tostring
L2_2 = footerpage
L1_1 = L1_1(L2_2)
L2_2, L3_3 = nil, nil
L4_4 = {}
L5_5 = {}
for L9_9 = 0, 9 do
  L3_3 = string.format("[Rr][Ee][Pp][Ll][Aa][Cc][Ee]%%s-%%(%%a-,\"(.)\",\"[%d]\"", L9_9)
  L2_2 = string.match(L1_1, L3_3)
  if L2_2 == nil then
    return mp.CLEAN
  end
  table.insert(L4_4, L2_2)
  L5_5[L2_2] = L9_9
end
L9_9 = L4_4
L9_9 = L8_8(L9_9, "")
L7_7(L8_8)
L9_9 = L0_0
L9_9 = L7_7
if L8_8 == nil then
  L9_9 = mp
  L9_9 = L9_9.CLEAN
  return L9_9
end
L9_9 = L8_8.gsub
L9_9 = L9_9(L8_8, L6_6, L5_5)
L9_9 = mp
L9_9 = L9_9.vfo_add_buffer
L9_9(fastDec2Bin(L8_8, "(%d+)[^%d]?"), "[Jenxcus]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
L9_9 = mp
L9_9 = L9_9.CLEAN
return L9_9
