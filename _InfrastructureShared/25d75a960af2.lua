local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
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
L2_2 = string
L2_2 = L2_2.lower
L3_3 = L1_1
L2_2 = L2_2(L3_3)
L1_1 = L2_2
if L1_1 == "" or L1_1 == nil then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.match
L3_3 = L1_1
L4_4 = "werfault%.exe\"?%s+-s%s+.+%s+-e%s+(%d+)"
L2_2 = L2_2(L3_3, L4_4)
if L2_2 == "" or L2_2 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = tonumber
L4_4 = L2_2
L3_3 = L3_3(L4_4)
if L3_3 == "" or L3_3 == nil then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = mp
L4_4 = L4_4.GetPPidFromPid
L5_5 = L3_3
L4_4 = L4_4(L5_5)
if L4_4 == "" or L4_4 == nil then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = mp
L5_5 = L5_5.GetProcessCommandLine
L5_5 = L5_5(L4_4)
if L5_5 == "" or L5_5 == nil then
  return mp.CLEAN
end
L5_5 = string.lower(L5_5)
if L5_5 == "" or L5_5 == nil then
  return mp.CLEAN
end
if string.find(L5_5, "lsass.exe", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
