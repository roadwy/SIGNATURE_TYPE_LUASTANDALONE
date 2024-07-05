local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 64 or L0_0 > 65536 then
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
L2_2 = L2_2.find
L3_3 = L1_1
L4_4 = "-EncodedCommand%s+([%w+/]+=?=?)"
L4_4 = L2_2(L3_3, L4_4)
if not L2_2 then
  L2_2, L3_3, L4_4 = string.find(L1_1, "[%-/]e.?c%a*%s+([%w+/]+=?=?)")
  if not L2_2 then
    return mp.CLEAN
  end
  return mp.CLEAN
end
mp.vfo_add_buffer(MpCommon.Base64Decode(L4_4), "[PowEncCmdLnk]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
return mp.CLEAN
