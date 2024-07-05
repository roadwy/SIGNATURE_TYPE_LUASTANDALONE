local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "TARG:Worm:VBS/Jenxcus!Crypt16"
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 50000 or L0_0 > 200000 then
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
L4_4 = "&%schr%(%a-%(%a-%)%-(%d-)%)"
L2_2 = L2_2(L3_3, L4_4)
if L2_2 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = mp
L3_3 = L3_3.readprotection
L4_4 = false
L3_3(L4_4)
L3_3 = mp
L3_3 = L3_3.readfile
L4_4 = 0
L3_3 = L3_3(L4_4, L0_0)
L4_4 = L3_3.match
L4_4 = L4_4(L3_3, "%a-%s=%s\"(%w-)\"\r\n")
if L4_4 == nil then
  return mp.CLEAN
end
mp.vfo_add_buffer(fastDec2BinWithKey(L4_4, "(%d+)[^%d]?", L2_2, function(A0_5, A1_6)
  return A1_6 + A0_5
end), "[Crypt16]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
return mp.CLEAN
