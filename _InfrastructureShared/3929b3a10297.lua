local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0()
L1_1 = string
L1_1 = L1_1.find
L2_2 = L0_0
L1_1 = L1_1(L2_2, "->[XLMSharedStrings]", -20, true)
if L1_1 ~= nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.GetNormalizedScript
L2_2 = true
L1_1 = L1_1(L2_2)
L2_2 = nil
L1_1, L2_2 = string.gsub(L1_1, "\"&amp;\"", "")
if L2_2 > 3 then
  mp.vfo_add_buffer(L1_1, "[XLMSharedStrings]", mp.ADD_VFO_TAKE_ACTION_ON_DAD)
  return mp.INFECTED
end
return mp.CLEAN
