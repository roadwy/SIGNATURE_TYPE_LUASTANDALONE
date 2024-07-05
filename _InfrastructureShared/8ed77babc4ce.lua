local L0_0, L1_1, L2_2
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
if string.sub(L1_1, -1) == "\"" then
  L2_2 = string.match(L1_1, " (\"[^\"]+\")[%s]*$")
else
  L2_2 = string.match(L1_1, " (%S+)[%s]*$")
end
if L2_2 == "" or L2_2 == nil then
  return mp.CLEAN
end
if not MpCommon.QueryPersistContext(L2_2, "DroppedByBitsadmin") then
  MpCommon.AppendPersistContext(L2_2, "DroppedByBitsadmin", 0)
end
return mp.INFECTED
