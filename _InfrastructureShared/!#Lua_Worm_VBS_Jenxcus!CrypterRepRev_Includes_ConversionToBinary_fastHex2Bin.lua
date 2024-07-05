local L0_0, L1_1, L2_2, L3_3, L4_4
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "SCPT:Worm:VBS/Jenxcus!CryptRepRev"
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 < 9000 or L0_0 > 300000 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = tostring
L2_2 = footerpage
L1_1 = L1_1(L2_2)
L3_3 = L1_1
L2_2 = L1_1.match
L4_4 = "=%s-replace%s-%(%a-%s-,%s-\"..?.?.?.?.?\"%s-,%s-\"(%d-)\"%)%s"
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
L4_4 = L4_4(L3_3, "'(.-)%s")
if L4_4 == nil then
  return mp.CLEAN
end
L4_4 = L4_4:gsub("[^0-9A-F][^0-9A-F]?[^0-9A-F]?[^0-9A-F]?[^0-9A-F]?[^0-9A-F]?", L2_2)
L4_4 = L4_4:reverse()
mp.vfo_add_buffer(fastHex2Bin(L4_4, "(..)"), "[CrypterRepRev]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
return mp.CLEAN
