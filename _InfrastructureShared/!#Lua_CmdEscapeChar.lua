local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "PACKED_WITH:[CMDEmbedded]"
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 > 1048576 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.readprotection
L1_1(false)
L1_1 = mp
L1_1 = L1_1.readfile
L1_1 = L1_1(0, L0_0)
if string.find(L1_1, "%^") then
  L1_1 = string.gsub(L1_1, "%^", "")
  mp.vfo_add_buffer(L1_1, "[CmdEscapeChar]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
end
return mp.CLEAN
