local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 4096 or L0_0 > 1048576 then
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
L2_2 = mp
L2_2 = L2_2.readprotection
L3_3 = true
L2_2(L3_3)
L2_2 = "base64.+Content%-Type:.+application/x%-mso([%s%w+/]+=?=?)"
L3_3 = 0
L4_4 = 1
while L3_3 <= 10 do
  L5_5 = string
  L5_5 = L5_5.find
  L6_6 = L1_1
  L7_7 = L2_2
  L7_7 = L5_5(L6_6, L7_7, L4_4)
  if not L5_5 then
    break
  end
  if #L7_7 > 100 then
    L3_3 = L3_3 + 1
    mp.vfo_add_buffer(MpCommon.Base64Decode(L7_7), "[RtfMso]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
  end
  L4_4 = L6_6 + 1
end
L5_5 = mp
L5_5 = L5_5.CLEAN
return L5_5
