local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11
L0_0 = mp
L0_0 = L0_0.GetScannedPPID
L0_0 = L0_0()
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.GetProcessCommandLine
L2_2 = L0_0
L1_1 = L1_1(L2_2)
if L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.find
L3_3 = L1_1
L4_4 = "d0027073-ea64-42ca-8293-241186e9011f"
L5_5 = 1
L6_6 = true
L3_3 = L2_2(L3_3, L4_4, L5_5, L6_6)
if L2_2 == nil or L3_3 == nil then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = string
L4_4 = L4_4.sub
L5_5 = L1_1
L6_6 = L3_3 + 1
L7_7 = -1
L4_4 = L4_4(L5_5, L6_6, L7_7)
L5_5 = ""
L6_6 = 0
L7_7 = 1
for L11_11 in L8_8(L9_9, L10_10) do
  if L7_7 == 1 then
    L5_5 = L11_11
  elseif L7_7 == 2 then
    L6_6 = tonumber(L11_11)
  end
  L7_7 = L7_7 + 1
end
if L7_7 < 3 then
  return L8_8
end
if L6_6 == 536870912 then
  L9_9(L10_10)
  return L9_9
end
for _FORV_12_, _FORV_13_ in L9_9(L10_10) do
  if _FORV_13_ == L6_6 then
    MpCommon.RequestSmsOnProcess(L5_5, L6_6)
    break
  end
end
return L9_9
