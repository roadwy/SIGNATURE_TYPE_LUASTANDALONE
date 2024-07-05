local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
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
  L1_1 = L1_1(L2_2, L3_3)
  L2_2 = string
  L2_2 = L2_2.find
  L6_6 = true
  L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
  if L2_2 then
    L2_2 = 1
    for L6_6 in L3_3(L4_4, L5_5) do
      L7_7 = nil
      L7_7 = MpCommon.Base64Decode(L6_6)
      if L7_7 ~= nil and L7_7 ~= "" then
        mp.vfo_add_buffer(L7_7, string.format("[PSBase64][%02X]", L2_2), mp.ADD_VFO_TAKE_ACTION_ON_DAD)
        L2_2 = L2_2 + 1
      end
    end
    return L3_3
  end
else
  L1_1 = mp
  L1_1 = L1_1.set_mpattribute
  L2_2 = "Lua:Psb64ExeBSize"
  L1_1(L2_2)
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
