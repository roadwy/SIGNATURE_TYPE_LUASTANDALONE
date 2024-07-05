local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 > 10240 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = nil
L2_2 = mp
L2_2 = L2_2.HEADERPAGE_SZ
if L0_0 <= L2_2 then
  L2_2 = tostring
  L3_3 = headerpage
  L2_2 = L2_2(L3_3)
  L1_1 = L2_2
else
  L2_2 = mp
  L2_2 = L2_2.readprotection
  L3_3 = false
  L2_2(L3_3)
  L2_2 = tostring
  L3_3 = mp
  L3_3 = L3_3.readfile
  L8_8 = L3_3(L4_4, L5_5)
  L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L3_3(L4_4, L5_5))
  L1_1 = L2_2
end
L2_2 = string
L2_2 = L2_2.gmatch
L3_3 = L1_1
L2_2 = L2_2(L3_3, L4_4)
L3_3 = 0
for L7_7 in L2_2, nil, nil do
  L8_8 = MpCommon
  L8_8 = L8_8.Base64Decode
  L8_8 = L8_8(L7_7)
  if L8_8 ~= nil and L8_8 ~= "" then
    mp.vfo_add_buffer(L8_8, string.format("[PythonBase64][%02X]", L3_3), mp.ADD_VFO_TAKE_ACTION_ON_DAD)
    L3_3 = L3_3 + 1
  end
end
if L3_3 > 0 then
  return L4_4
end
return L4_4
