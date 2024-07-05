local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
L0_0 = mp
L0_0 = L0_0.GetScannedPPID
L0_0 = L0_0()
L1_1 = false
L2_2 = pcall
L3_3 = MpCommon
L3_3 = L3_3.QuerySessionInformation
L4_4 = L0_0
L3_3 = L2_2(L3_3, L4_4, L5_5)
L1_1 = L3_3
_ = L2_2
if L1_1 then
  L2_2 = MpCommon
  L2_2 = L2_2.WTSClientProtocolType
  if L2_2 == 2 then
    L3_3 = set_research_data
    L4_4 = "Protocol"
    L3_3(L4_4, L5_5, L6_6)
    L3_3 = mp
    L3_3 = L3_3.LOWFI
    return L3_3
  end
end
L2_2 = GetRollingQueueKeys
L3_3 = "ThreatsOnMachine_Lua"
L2_2 = L2_2(L3_3)
if L2_2 ~= nil then
  L3_3 = type
  L4_4 = L2_2
  L3_3 = L3_3(L4_4)
  if L3_3 == "table" then
    L3_3 = 0
    L4_4 = "["
    for L8_8, L9_9 in L5_5(L6_6) do
      L4_4 = L4_4 .. "|" .. L9_9
      L3_3 = L3_3 + 1
    end
    if L3_3 > 0 then
      L8_8 = false
      L5_5(L6_6, L7_7, L8_8)
      return L5_5
    end
  end
end
L3_3 = mp
L3_3 = L3_3.CLEAN
return L3_3
