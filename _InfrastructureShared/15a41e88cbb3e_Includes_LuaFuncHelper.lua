local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10
L2_2 = 0
L3_3 = "RcloneMega"
L4_4 = {}
L5_5 = 3600
L6_6 = 100
L7_7 = "|"
L8_8 = this_sigattrlog
L8_8 = L8_8[3]
L8_8 = L8_8.matched
if L8_8 then
  L8_8 = this_sigattrlog
  L8_8 = L8_8[3]
  L8_8 = L8_8.utf8p1
  if L8_8 ~= nil then
    L8_8 = this_sigattrlog
    L8_8 = L8_8[3]
    L8_8 = L8_8.utf8p2
    if L8_8 ~= nil then
      L8_8 = this_sigattrlog
      L8_8 = L8_8[3]
      L0_0 = L8_8.utf8p1
      L8_8 = this_sigattrlog
      L8_8 = L8_8[3]
      L1_1 = L8_8.utf8p2
    end
  end
end
L8_8 = this_sigattrlog
L8_8 = L8_8[6]
L8_8 = L8_8.matched
if L8_8 then
  L8_8 = this_sigattrlog
  L8_8 = L8_8[6]
  L8_8 = L8_8.utf8p2
  if L8_8 ~= nil then
    L8_8 = tonumber
    L9_9 = this_sigattrlog
    L9_9 = L9_9[6]
    L9_9 = L9_9.utf8p2
    L8_8 = L8_8(L9_9)
    L2_2 = L8_8
  end
end
L8_8 = L0_0
L9_9 = L7_7
L10_10 = L1_1
L8_8 = L8_8 .. L9_9 .. L10_10
L9_9 = L8_8
L10_10 = "count"
L9_9 = L9_9 .. L10_10
L10_10 = 1
if MpCommon.AtomicCounterValue(L8_8) == nil then
  MpCommon.AtomicCounterSet(L8_8, L2_2, 600)
  MpCommon.AtomicCounterSet(L9_9, L10_10, 600)
else
  L10_10 = MpCommon.AtomicCounterAdd(L9_9, L10_10) + 1
  if MpCommon.AtomicCounterAdd(L8_8, L2_2) + L2_2 > 75000000 and L10_10 > 10 then
    L4_4.ContentLen = MpCommon.AtomicCounterAdd(L8_8, L2_2) + L2_2
    L4_4.Threshold = L10_10
    L4_4.ProcPath = L0_0
    AppendToRollingQueue(L3_3, L8_8, L4_4, L5_5, L6_6, 0)
    return mp.INFECTED
  end
end
return mp.CLEAN
