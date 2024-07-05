local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L2_2 = this_sigattrlog
L2_2 = L2_2[3]
L2_2 = L2_2.matched
if L2_2 then
  L2_2 = this_sigattrlog
  L2_2 = L2_2[6]
  L2_2 = L2_2.matched
elseif not L2_2 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = this_sigattrlog
L2_2 = L2_2[3]
L0_0 = L2_2.utf8p2
L2_2 = this_sigattrlog
L2_2 = L2_2[6]
L1_1 = L2_2.utf8p2
L2_2 = "user-agent"
L3_3 = 100
L4_4 = 3
L5_5 = pcall
L6_6 = MpCommon
L6_6 = L6_6.RollingQueueCreate
L6_6 = L5_5(L6_6, L2_2, L3_3, L4_4, 1)
if not L5_5 then
  return mp.CLEAN
end
L5_5, L6_6 = pcall(MpCommon.RollingQueueAppend, L2_2, L0_0, L1_1, L4_4)
if not L5_5 then
  return mp.CLEAN
end
return mp.INFECTED
