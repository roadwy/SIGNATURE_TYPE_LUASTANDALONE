local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "SCPT:Worm:VBS/Jenxcus!Crypt39"
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 30000 or L0_0 > 300000 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = tostring
L2_2 = footerpage
L1_1 = L1_1(L2_2)
L2_2 = string
L2_2 = L2_2.lower
L3_3 = L1_1
L2_2 = L2_2(L3_3)
L1_1 = L2_2
L3_3 = L1_1
L2_2 = L1_1.match
L4_4 = "%a-%s-=%s-split%(%a-%(0%),\"(.)\"%)"
L2_2 = L2_2(L3_3, L4_4)
if L2_2 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L4_4 = L1_1
L3_3 = L1_1.match
L5_5 = "&%s-chr%(%a-%(%a-%)%+(%d)%)"
L3_3 = L3_3(L4_4, L5_5)
if L3_3 == nil then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = mp
L4_4 = L4_4.readprotection
L5_5 = false
L4_4(L5_5)
L4_4 = mp
L4_4 = L4_4.readfile
L5_5 = 0
L4_4 = L4_4(L5_5, L0_0)
L5_5 = L4_4.match
L5_5 = L5_5(L4_4, "'(.-)\r\n")
if L5_5 == nil then
  return mp.CLEAN
end
mp.vfo_add_buffer(fastDec2BinWithKey(L5_5, "(%d+)[^%d]+", L3_3, function(A0_6, A1_7)
  return A1_7 - A0_6
end), "[Crypt39]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
return mp.CLEAN
