local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 >= 131072 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readprotection
L2_2 = false
L1_1(L2_2)
L1_1 = tostring
L2_2 = mp
L2_2 = L2_2.readfile
L3_3 = 0
L4_4 = L0_0
L8_8 = L2_2(L3_3, L4_4)
L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L2_2(L3_3, L4_4))
L2_2 = string
L2_2 = L2_2.match
L3_3 = L1_1
L4_4 = "base64.b64decode%(b'([%w%+/]+=-)'%)"
L2_2 = L2_2(L3_3, L4_4)
if L2_2 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = string
L3_3 = L3_3.match
L4_4 = L1_1
L5_5 = "itertools.cycle%(b'(%w+)'%)"
L3_3 = L3_3(L4_4, L5_5)
if L3_3 == nil then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = MpCommon
L4_4 = L4_4.Base64Decode
L5_5 = L2_2
L4_4 = L4_4(L5_5)
if L4_4 == nil then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = string
L5_5 = L5_5.len
L6_6 = L4_4
L5_5 = L5_5(L6_6)
L6_6 = string
L6_6 = L6_6.len
L7_7 = L3_3
L6_6 = L6_6(L7_7)
L5_5 = L5_5 / L6_6
L5_5 = L5_5 / 2
L6_6 = L5_5 / 2
L6_6 = L5_5 + L6_6
L7_7 = string
L7_7 = L7_7.len
L8_8 = L3_3
L7_7 = L7_7(L8_8)
L6_6 = L6_6 * L7_7
L7_7 = string
L7_7 = L7_7.sub
L8_8 = L4_4
L7_7 = L7_7(L8_8, L6_6 + 1, string.len(L4_4))
L4_4 = L7_7
L7_7 = ""
L8_8 = 1
for _FORV_14_ in L4_4:gmatch(".") do
  if L8_8 > L3_3:len() then
    L8_8 = 1
  end
  L7_7 = L7_7 .. string.char(mp.bitxor(_FORV_14_:byte(), L3_3:sub(L8_8, L8_8):byte()))
  L8_8 = L8_8 + 1
  if 1 + 1 > 2500 then
    break
  end
end
mp.vfo_add_buffer(L7_7, "(MedDecrypt)", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
return mp.INFECTED
