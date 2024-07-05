local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 524288 then
  L0_0 = mp
  L0_0 = L0_0.readprotection
  L1_1 = false
  L0_0(L1_1)
  L0_0 = mp
  L0_0 = L0_0.readfile
  L1_1 = 0
  L2_2 = mp
  L2_2 = L2_2.getfilesize
  L7_7 = L2_2()
  L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L2_2())
  L2_2 = L0_0
  L1_1 = L0_0.find
  L3_3 = "=\""
  L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
  if L1_1 == nil then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
  L3_3 = L0_0
  L2_2 = L0_0.match
  L2_2 = L2_2(L3_3, L4_4, L5_5)
  L3_3 = {}
  for L7_7 = 0, 255 do
    L3_3[string.format("%d", L7_7)] = string.format("%c", L7_7)
  end
  L7_7 = L3_3
  L7_7 = "[Ascii]"
  L5_5(L6_6, L7_7, mp.ADD_VFO_TAKE_ACTION_ON_DAD)
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
