local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 == nil or L0_0 < 500 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readprotection
L2_2 = false
L1_1(L2_2)
L1_1 = 6291456
L2_2 = mp
L2_2 = L2_2.readfile
L3_3 = 0
L11_11 = L4_4(L5_5, L6_6)
L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L4_4(L5_5, L6_6))
if L2_2 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = 0
for L7_7 in L4_4(L5_5, L6_6) do
  if L8_8 > 500 then
    for L11_11 in L8_8(L9_9, L10_10) do
      if #L11_11 > 500 then
        mp.vfo_add_buffer(MpCommon.Base64Decode(L11_11), "[HTMLsmuggling]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
        L3_3 = L3_3 + 1
      end
    end
  end
end
if L3_3 > 0 then
  return L4_4
end
return L4_4
