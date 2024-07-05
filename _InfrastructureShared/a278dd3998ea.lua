local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(mp.getfilename())
if L0_0 ~= nil and string.find(L0_0, "\\w64time.dll", 1, true) == nil then
  return mp.INFECTED
end
return mp.CLEAN
