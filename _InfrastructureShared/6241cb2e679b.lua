local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
L2_2 = "rdp-brute-"
L3_3 = 100
L4_4 = 30
L5_5 = 0
L6_6 = 10
L7_7 = this_sigattrlog
L7_7 = L7_7[2]
L7_7 = L7_7.matched
if L7_7 then
  L7_7 = this_sigattrlog
  L7_7 = L7_7[2]
  L0_0 = L7_7.utf8p1
end
L7_7 = this_sigattrlog
L7_7 = L7_7[3]
L7_7 = L7_7.matched
if L7_7 then
  L7_7 = string
  L7_7 = L7_7.match
  L8_8 = this_sigattrlog
  L8_8 = L8_8[3]
  L8_8 = L8_8.utf8p1
  L9_9 = "Cookie: mstshash=(.*)"
  L7_7 = L7_7(L8_8, L9_9)
  L1_1 = L7_7
end
if L0_0 ~= nil and L1_1 ~= nil then
  L7_7 = L2_2
  L8_8 = L0_0
  L7_7 = L7_7 .. L8_8
  L8_8 = pcall
  L9_9 = MpCommon
  L9_9 = L9_9.RollingQueueCreate
  L9_9 = L8_8(L9_9, L7_7, L3_3, L4_4, 0)
  if not L8_8 then
    return mp.CLEAN
  end
  L8_8, L9_9 = pcall(MpCommon.RollingQueueAppend, L7_7, L1_1, "", L4_4)
  if not L8_8 then
    return mp.CLEAN
  end
  L8_8, L5_5 = pcall(MpCommon.RollingQueueCount, L7_7)
  if not L8_8 then
    return mp.CLEAN
  end
  if L6_6 <= L5_5 then
    pcall(MpCommon.RollingQueueErase, L7_7)
    return mp.INFECTED
  end
end
L7_7 = mp
L7_7 = L7_7.CLEAN
return L7_7
