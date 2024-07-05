local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10
L3_3 = "ftp-brute-"
L4_4 = 30
L5_5 = 60
L6_6 = 0
L7_7 = 10
L8_8 = this_sigattrlog
L8_8 = L8_8[2]
L8_8 = L8_8.matched
if L8_8 then
  L8_8 = this_sigattrlog
  L8_8 = L8_8[2]
  L0_0 = L8_8.utf8p1
end
L8_8 = this_sigattrlog
L8_8 = L8_8[3]
L8_8 = L8_8.matched
if L8_8 then
  L8_8 = this_sigattrlog
  L8_8 = L8_8[3]
  L1_1 = L8_8.utf8p2
end
L8_8 = this_sigattrlog
L8_8 = L8_8[4]
L8_8 = L8_8.matched
if L8_8 then
  L8_8 = this_sigattrlog
  L8_8 = L8_8[4]
  L2_2 = L8_8.utf8p2
end
if L0_0 ~= nil and L1_1 ~= nil and L2_2 ~= nil then
  L8_8 = L3_3
  L9_9 = L0_0
  L10_10 = "-"
  L8_8 = L8_8 .. L9_9 .. L10_10 .. L1_1
  L9_9 = pcall
  L10_10 = MpCommon
  L10_10 = L10_10.RollingQueueCreate
  L10_10 = L9_9(L10_10, L8_8, L4_4, L5_5, 1)
  if not L9_9 then
    return mp.CLEAN
  end
  L9_9, L10_10 = pcall(MpCommon.RollingQueueAppend, L8_8, L2_2, "", L5_5)
  if not L9_9 then
    return mp.CLEAN
  end
  L9_9, L6_6 = pcall(MpCommon.RollingQueueCount, L8_8)
  if not L9_9 then
    return mp.CLEAN
  end
  if L7_7 <= L6_6 then
    pcall(MpCommon.RollingQueueErase, L8_8)
    return mp.INFECTED
  end
end
L8_8 = mp
L8_8 = L8_8.CLEAN
return L8_8
