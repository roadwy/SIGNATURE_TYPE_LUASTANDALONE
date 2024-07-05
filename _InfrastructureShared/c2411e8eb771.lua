local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L1_1 = "ssh-brute-"
L2_2 = 100
L3_3 = 30
L4_4 = 0
L5_5 = 10
L6_6 = this_sigattrlog
L6_6 = L6_6[3]
L6_6 = L6_6.matched
if L6_6 then
  L6_6 = this_sigattrlog
  L6_6 = L6_6[3]
  L0_0 = L6_6.utf8p1
end
if L0_0 ~= nil then
  L6_6 = L1_1
  L7_7 = L0_0
  L6_6 = L6_6 .. L7_7
  L7_7 = pcall
  L8_8 = MpCommon
  L8_8 = L8_8.RollingQueueCreate
  L8_8 = L7_7(L8_8, L6_6, L2_2, L3_3, 0)
  if not L7_7 then
    return mp.CLEAN
  end
  L7_7, L8_8 = pcall(MpCommon.RollingQueueAppend, L6_6, "1", "1", L3_3)
  if not L7_7 then
    return mp.CLEAN
  end
  L7_7, L4_4 = pcall(MpCommon.RollingQueueCount, L6_6)
  if not L7_7 then
    return mp.CLEAN
  end
  if L5_5 <= L4_4 then
    pcall(MpCommon.RollingQueueErase, L6_6)
    return mp.INFECTED
  end
end
L6_6 = mp
L6_6 = L6_6.CLEAN
return L6_6
