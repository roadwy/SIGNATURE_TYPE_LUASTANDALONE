local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.GetLnkInfo
L0_0 = L0_0()
if L0_0 == nil or L0_0 == "" then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = L0_0.Arguments
if L1_1 == nil then
  return mp.CLEAN
end
if string.find(L1_1, "\\RECYCLER.BIN\\", 1, true) ~= nil and 1 < string.find(L1_1, "\\RECYCLER.BIN\\", 1, true) and string.byte(L1_1, string.find(L1_1, "\\RECYCLER.BIN\\", 1, true) - 1) >= 128 and string.byte(L1_1, string.find(L1_1, "\\RECYCLER.BIN\\", 1, true) - 1) <= 255 then
  return mp.INFECTED
end
return mp.CLEAN
