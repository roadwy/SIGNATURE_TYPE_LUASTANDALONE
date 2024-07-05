local L0_0, L1_1, L2_2, L3_3
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
L2_2 = ""
L3_3 = string
L3_3 = L3_3.sub
L3_3 = L3_3(L1_1, -1)
if L3_3 == "\"" then
  L3_3 = string
  L3_3 = L3_3.lower
  L3_3 = L3_3(mp.ContextualExpandEnvironmentVariables(string.match(L1_1, " (\"[^\"]+\")[%s]*$")))
  L2_2 = L3_3
else
  L3_3 = string
  L3_3 = L3_3.lower
  L3_3 = L3_3(mp.ContextualExpandEnvironmentVariables(string.match(L1_1, " (%S+)[%s]*$")))
  L2_2 = L3_3
end
if L2_2 == "" or L2_2 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = 600
if not MpCommon.QueryPersistContext(L2_2, "BitsadminTarget") then
  MpCommon.AppendPersistContext(L2_2, "BitsadminTarget", L3_3)
end
if IsTechniqueObservedForParents(L0_0, "T1047", 2) or IsTechniqueObservedForParents(L0_0, "T1021.006", 2) then
  return mp.INFECTED
end
return mp.LOWFI
