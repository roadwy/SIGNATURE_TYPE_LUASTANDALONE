local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 1280 or L0_0 > 65536 then
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
L4_4 = "encodedcommand"
L4_4 = L2_2(L3_3, L4_4, 1, true)
if L2_2 ~= nil then
  L2_2, L3_3, L4_4 = string.find(L1_1, "([%w/+=]+)", L3_3 + 1)
  if L2_2 ~= nil then
    mp.set_mpattribute("//MpBase64DecodeLongLines")
    mp.set_mpattribute("FromEncodedCommand")
    mp.vfo_add_buffer(L4_4, "[PSEncodedCommand]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
  end
end
L2_2, L3_3 = string.find(L1_1, "%:%:FromBase64String%(%'")
if L2_2 ~= nil then
  L2_2, L3_3, L4_4 = string.find(L1_1, "([%w/+=]+)", L3_3 + 1)
  if L2_2 ~= nil then
    mp.set_mpattribute("//MpBase64DecodeLongLines")
    mp.set_mpattribute("FromBase64String")
    mp.vfo_add_buffer(L4_4, "[PSBase64String]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
  end
end
return mp.CLEAN
