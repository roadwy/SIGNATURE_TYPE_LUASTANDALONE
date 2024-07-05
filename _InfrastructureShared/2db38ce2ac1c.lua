local L0_0, L1_1
L0_0 = string
L0_0 = L0_0.lower
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.utf8p2
L0_0 = L0_0(L1_1)
L1_1 = string
L1_1 = L1_1.lower
L1_1 = L1_1(mp.ContextualExpandEnvironmentVariables("%temp%"))
if string.find(L0_0, ",", 1, true) and (string.find(L0_0, "%tmp%", 1, true) or string.find(L0_0, "%temp%", 1, true) or string.find(L0_0, "\\temp\\", 1, true) or string.find(L0_0, L1_1, 1, true)) then
  return mp.INFECTED
end
return mp.CLEAN
