local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(mp.getfilename())
if string.find(L0_0, "%.jpg%.svg") ~= nil or string.find(L0_0, "%d%d%d%d%d%d%d%d%d%d%d%-%(%d%d%)%.svg") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN
