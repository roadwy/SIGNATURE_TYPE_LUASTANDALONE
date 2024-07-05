local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8
L0_0 = bm
L0_0 = L0_0.get_current_process_startup_info
L0_0 = L0_0()
L1_1 = GetRealPidForScenario
L2_2 = L0_0.ppid
L1_1 = L1_1(L2_2)
L2_2 = {}
L3_3 = GetRollingQueueKeysAsString
L4_4 = "Tech-"
L5_5 = L1_1
L4_4 = L4_4 .. L5_5
L3_3 = L3_3(L4_4)
if L3_3 == nil then
  L4_4 = L0_0.ppid
  L5_5 = " tech table missing"
  L3_3 = L4_4 .. L5_5
end
L2_2.TrackedPidTechniques = L3_3
L4_4 = GetRollingQueueKeysAsString
L5_5 = "Tact-"
L6_6 = L1_1
L5_5 = L5_5 .. L6_6
L4_4 = L4_4(L5_5)
if L4_4 == nil then
  L5_5 = L0_0.ppid
  L6_6 = " tact table missing"
  L4_4 = L5_5 .. L6_6
end
L2_2.TrackedPidTactics = L4_4
L5_5 = GetDetectionThresholdMetLinuxReason
L6_6 = L0_0.ppid
L6_6 = L5_5(L6_6)
L7_7 = tostring
L8_8 = L5_5
L7_7 = L7_7(L8_8)
L2_2.IsThresholdMet = L7_7
L7_7 = "000"
L8_8 = tostring
L8_8 = L8_8(L6_6)
L7_7 = L7_7 .. L8_8
L2_2.ThresholdMetReason = L7_7
L7_7 = safeJsonSerialize
L8_8 = L2_2
L7_7 = L7_7(L8_8)
if L7_7 ~= nil then
  L8_8 = bm
  L8_8 = L8_8.add_related_string
  L8_8("TTData", L7_7, bm.RelatedStringBMReport)
end
L8_8 = mp
L8_8 = L8_8.INFECTED
return L8_8
