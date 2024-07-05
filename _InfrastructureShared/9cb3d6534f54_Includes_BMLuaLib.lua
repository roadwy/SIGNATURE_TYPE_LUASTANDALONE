local L0_0, L1_1, L2_2
L0_0 = isTamperProtectionOn
L0_0 = L0_0()
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = nil
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L0_0 = L1_1.utf8p2
end
if not L0_0 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L2_2 = L0_0
L1_1 = L1_1(L2_2)
L0_0 = L1_1
L1_1 = "(windows-defender(-features|-gui)?[^-\\w])"
L2_2 = false
L2_2, _ = MpCommon.StringRegExpSearch(L1_1, L0_0)
if L2_2 == true then
  return mp.INFECTED
end
return mp.CLEAN
