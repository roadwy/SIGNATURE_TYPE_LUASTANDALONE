local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = mp
L0_0 = L0_0.readprotection
L1_1 = false
L0_0(L1_1)
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 >= 1792 then
  L0_0 = mp
  L0_0 = L0_0.readfile
  L1_1 = 0
  L2_2 = 1792
  L0_0 = L0_0(L1_1, L2_2)
  L1_1 = string
  L1_1 = L1_1.find
  L2_2 = L0_0
  L3_3 = "[dD][eE][cC][rR][yY][pP][tT]"
  L2_2 = L1_1(L2_2, L3_3)
  L3_3 = false
  L4_4 = nil
  if L1_1 ~= nil then
    L5_5 = mp
    L5_5 = L5_5.readfile
    L6_6 = L1_1 + 8
    L7_7 = mp
    L7_7 = L7_7.getfilesize
    L7_7 = L7_7()
    L7_7 = L7_7 - L1_1
    L7_7 = L7_7 - 8
    L5_5 = L5_5(L6_6, L7_7)
    L4_4 = L5_5
    L3_3 = true
  else
    L5_5 = string
    L5_5 = L5_5.find
    L6_6 = L0_0
    L7_7 = "\"[A-Za-z0-9%+/][A-Za-z0-9%+/][A-Za-z0-9%+/][A-Za-z0-9%+/][A-Za-z0-9%+/][A-Za-z0-9%+/][A-Za-z0-9%+/][A-Za-z0-9%+/]"
    L6_6 = L5_5(L6_6, L7_7)
    if L5_5 ~= nil then
      L7_7 = mp
      L7_7 = L7_7.readfile
      L7_7 = L7_7(L5_5, mp.getfilesize() - L5_5)
      L4_4 = L7_7
      L3_3 = true
    end
  end
  if L3_3 then
    L5_5 = mp
    L5_5 = L5_5.set_mpattribute
    L6_6 = "//MpBase64DecodeLongLines"
    L5_5(L6_6)
    L6_6 = L4_4
    L5_5 = L4_4.gsub
    L7_7 = "\"%).+"
    L5_5 = L5_5(L6_6, L7_7, "")
    L7_7 = L5_5
    L6_6 = L5_5.len
    L6_6 = L6_6(L7_7)
    L7_7 = L6_6 / 4
    L7_7 = L7_7 * 4
    L7_7 = L6_6 - L7_7
    mp.vfo_add_buffer(L5_5 .. string.rep("=", L7_7), "[Safa_Crypt]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
