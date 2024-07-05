local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 <= 500000 or L0_0 > 4000000 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = tostring
L2_2 = headerpage
L1_1 = L1_1(L2_2)
L2_2 = L1_1
L1_1 = L1_1.sub
L3_3 = 0
L4_4 = 512
L1_1 = L1_1(L2_2, L3_3, L4_4)
L2_2 = L1_1
L1_1 = L1_1.find
L3_3 = "= \".-39"
L2_2 = L1_1(L2_2, L3_3)
L3_3 = tostring
L4_4 = footerpage
L3_3 = L3_3(L4_4)
L4_4 = L3_3
L3_3 = L3_3.find
L5_5 = "%d[%D]-\"%s"
L4_4 = L3_3(L4_4, L5_5)
L5_5 = mp
L5_5 = L5_5.readprotection
L5_5(false)
L5_5 = mp
L5_5 = L5_5.readfile
L5_5 = L5_5(L2_2 - 2, L0_0 - 4098 + L4_4)
if L5_5 ~= nil then
  mp.vfo_add_buffer(fastDec2Bin(L5_5, "(%d+)[%D]+"), "[Micwix]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
  return mp.INFECTED
end
return mp.CLEAN
