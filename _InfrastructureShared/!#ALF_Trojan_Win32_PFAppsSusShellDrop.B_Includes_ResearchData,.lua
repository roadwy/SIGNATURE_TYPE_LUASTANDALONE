local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_PROCESS_PPID
L0_0 = L0_0(L1_1)
if not L0_0 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = "PFAppTracked"
L2_2 = MpCommon
L2_2 = L2_2.GetProcessAttributeValue
L3_3 = L0_0
L4_4 = "PFAppTracked"
L2_2 = L2_2(L3_3, L4_4)
if not L2_2 then
  L2_2 = MpCommon
  L2_2 = L2_2.GetProcessAttributeValue
  L3_3 = L0_0
  L4_4 = "inherit:PFAppTracked"
  L2_2 = L2_2(L3_3, L4_4)
end
if not L2_2 then
  L3_3 = MpCommon
  L3_3 = L3_3.GetProcessAttributeValue
  L4_4 = L0_0
  L5_5 = "PFApp_Parent"
  L3_3 = L3_3(L4_4, L5_5)
  L2_2 = L3_3 or L3_3
  L1_1 = "PFApp_Parent"
end
L3_3 = safeJsonDeserialize
L4_4 = L2_2
L3_3 = L3_3(L4_4)
if not L3_3 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = L3_3.Score
if L4_4 == 0 then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = "FileDrop"
L6_6 = "["
L7_7 = mp
L7_7 = L7_7.getfilename
L7_7 = L7_7()
L5_5 = L5_5 .. L6_6 .. L7_7 .. "]"
L6_6 = IncreaseProcessAnomalyScore
L7_7 = L0_0
L6_6(L7_7, 1, L5_5, L1_1)
L6_6 = {}
L6_6.ProcessAttrib = L3_3
L7_7 = mp
L7_7 = L7_7.getfilename
L7_7 = L7_7()
if L7_7 and mp.IsMotwForFile(L7_7) then
  L6_6.Motw = true
end
mp.set_mpattribute("MpInternal_researchdata=Evidence=" .. MpCommon.Base64Encode(safeJsonSerialize(L6_6)))
return mp.INFECTED
