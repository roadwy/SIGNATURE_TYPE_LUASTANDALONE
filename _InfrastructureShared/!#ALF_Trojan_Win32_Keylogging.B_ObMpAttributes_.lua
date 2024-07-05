local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_FILEPATH
L0_0 = L0_0(L1_1)
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.lower
  L1_1 = L1_1(L0_0)
  if string.find(L1_1, "\\program files", 1, true) ~= nil or string.find(L1_1, ":\\windows\\", 1, true) ~= nil or string.find(L1_1, "\\delayedappstart", 1, true) ~= nil or string.find(L1_1, "\\audio", 1, true) ~= nil or string.find(L1_1, "\\modules\\os\\", 1, true) ~= nil or string.find(L1_1, "\\sysvol\\", 1, true) ~= nil then
    return mp.CLEAN
  end
end
L1_1 = mp
L1_1 = L1_1.INFECTED
return L1_1
