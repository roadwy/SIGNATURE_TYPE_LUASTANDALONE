local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 5000000 then
  L1_1 = mp
  L1_1 = L1_1.readprotection
  L2_2 = false
  L1_1(L2_2)
  L1_1 = mp
  L1_1 = L1_1.readfile
  L2_2 = 0
  L3_3 = L0_0
  L1_1 = L1_1(L2_2, L3_3)
  L2_2, L3_3, L4_4 = nil, nil, nil
  L5_5 = 1
  L6_6 = string
  L6_6 = L6_6.find
  L3_3, L6_6 = L1_1, L6_6(L1_1, "%:%:FromBase64String%(")
  L2_2 = L6_6
  if L2_2 ~= nil then
    L6_6 = string
    L6_6 = L6_6.find
    L3_3, L4_4, L6_6 = L1_1, "([%w/+=]+)", L6_6(L1_1, "([%w/+=]+)", L3_3 + 1)
    L2_2 = L6_6
    if L2_2 ~= nil then
      L6_6 = nil
      L6_6 = MpCommon.Base64Decode(L4_4)
      if L6_6 ~= nil and L6_6 ~= "" then
        mp.vfo_add_buffer(L6_6, string.format("[PSBase64][%02X]", L5_5), mp.ADD_VFO_TAKE_ACTION_ON_DAD)
        L5_5 = L5_5 + 1
      end
      return mp.INFECTED
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
