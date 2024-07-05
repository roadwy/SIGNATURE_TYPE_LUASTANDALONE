local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10
function L0_0(A0_11)
  local L1_12, L2_13, L3_14
  L1_12 = string
  L1_12 = L1_12.lower
  L2_13 = A0_11.image_path
  L1_12 = L1_12(L2_13)
  L3_14 = L1_12
  L2_13 = L1_12.match
  L2_13 = L2_13(L3_14, "([^\\]+)$")
  L3_14 = false
  L3_14, _ = MpCommon.StringRegExpSearch("(wttsvc|teamviewer)", L2_13)
  if L3_14 == true then
    return true
  end
  return false
end
L1_1 = mp
L1_1 = L1_1.GetParentProcInfo
L1_1 = L1_1()
L2_2 = L1_1.ppid
L3_3 = {}
while L1_1 do
  L4_4 = L1_1.image_path
  if L4_4 then
    L4_4 = L1_1.image_path
    L5_5 = L4_4
    L4_4 = L4_4.match
    L4_4 = L4_4(L5_5, L6_6)
    L5_5 = table
    L5_5 = L5_5.insert
    L5_5(L6_6, L7_7)
    L5_5 = L0_0
    L5_5 = L5_5(L6_6)
    if L5_5 then
      L5_5 = mp
      L5_5 = L5_5.CLEAN
      return L5_5
    end
    L5_5 = mp
    L5_5 = L5_5.GetParentProcInfo
    L5_5 = L5_5(L6_6)
    L1_1 = L5_5
  end
end
L4_4 = {}
L5_5 = GetRollingQueueKeys
L5_5 = L5_5(L6_6)
if L5_5 then
  if L6_6 then
    for L9_9, L10_10 in L6_6(L7_7) do
      if contains(L10_10, L3_3) then
        L4_4.RegisteredSrv = L10_10
        break
      end
    end
  end
end
if L6_6 then
  if L7_7 then
    L4_4.HasUntrustedEntities = true
    L4_4.UntrustedEntities = L6_6
  end
end
L9_9 = L7_7
if L8_8 then
  L9_9 = L8_8.sum
  if L9_9 > 0 then
    L9_9 = GetRollingQueue
    L10_10 = L7_7
    L9_9 = L9_9(L10_10)
    L4_4.TamperingEvents = L9_9
    L10_10 = L8_8.sum
    L4_4.TamperingWeight = L10_10
  end
end
L9_9 = next
L10_10 = L4_4
L9_9 = L9_9(L10_10)
if L9_9 then
  L9_9 = set_research_data
  L10_10 = "AdditionalInfo"
  L9_9(L10_10, MpCommon.Base64Encode(safeJsonSerialize(L4_4)), false)
end
L9_9 = mp
L9_9 = L9_9.INFECTED
return L9_9
