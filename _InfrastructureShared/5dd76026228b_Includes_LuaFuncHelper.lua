local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
L0_0 = mp
L0_0 = L0_0.GetScannedPPID
L0_0 = L0_0()
if L0_0 == "" or L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.GetProcessCommandLine
L2_2 = L0_0
L1_1 = L1_1(L2_2)
if L1_1 == "" or L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
function L2_2(A0_10)
  local L1_11, L2_12, L3_13, L4_14, L5_15
  L1_11 = {}
  for L5_15 in L2_12(L3_13, L4_14) do
    table.insert(L1_11, L5_15)
  end
  return L1_11
end
L3_3 = L2_2
L4_4 = L1_1
L3_3 = L3_3(L4_4)
L4_4 = {}
L4_4.SIG_CONTEXT = "CMD"
L4_4.CONTENT_SOURCE = "CSCRIPT_SCHTASK"
L4_4.PROCESS_CONTEXT = "schtasks.exe"
L4_4.FILELESS = "true"
L4_4.CMDLINE_URL = "true"
L4_4.TAG = "INTERFLOW"
for L8_8, L9_9 in L5_5(L6_6) do
  if string.match(L9_9, "^https?://") and SafeGetUrlReputation({L9_9}, L4_4, false, 3000).urls[L9_9] and SafeGetUrlReputation({L9_9}, L4_4, false, 3000).urls[L9_9].determination == 2 and SafeGetUrlReputation({L9_9}, L4_4, false, 3000).urls[L9_9].confidence >= 60 then
    return mp.INFECTED
  end
end
return L5_5
