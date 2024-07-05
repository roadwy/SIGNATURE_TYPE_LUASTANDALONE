local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "TARG:Worm:VBS/Jenxcus!Crypt1"
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 60000 or L0_0 > 500000 then
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
L2_2 = L2_2.lower
L3_3 = L1_1
L2_2 = L2_2(L3_3)
L1_1 = L2_2
L3_3 = L1_1
L2_2 = L1_1.match
L4_4 = "'execute%(%p%(?(.-)%)?%)\r\n"
L2_2 = L2_2(L3_3, L4_4)
if L2_2 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
function L3_3(A0_5, A1_6)
  return A0_5 - A1_6
end
L4_4 = L2_2.gsub
L4_4 = L4_4(L2_2, "(%d%d?%d?%d?)%-%s(%d%d?%d?%d?)[^%d]?%)?%s?%p?%s?%p?", L3_3)
mp.vfo_add_buffer(fastDec2Bin(L4_4, "(%d+)[^%d]?"), "[JenxcusCrypt1.1]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
return mp.CLEAN
