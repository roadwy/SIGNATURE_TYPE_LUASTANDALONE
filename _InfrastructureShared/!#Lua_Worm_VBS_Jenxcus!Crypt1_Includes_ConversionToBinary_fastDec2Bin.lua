local L0_0, L1_1, L2_2
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
if L0_0 < 70000 or L0_0 > 130000 then
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
L1_1 = L1_1(L2_2, L0_0)
L2_2 = string
L2_2 = L2_2.lower
L2_2 = L2_2(L1_1)
L1_1 = L2_2
L2_2 = L1_1.match
L2_2 = L2_2(L1_1, "'execute%(%p([%d%s&%p%(%)]-)%)\r\n")
if L2_2 == nil then
  return mp.CLEAN
end
mp.vfo_add_buffer(fastDec2Bin(L2_2, "%((%d+)%)%s?&?%s?%p?"), "[Crypt1]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
return mp.CLEAN
