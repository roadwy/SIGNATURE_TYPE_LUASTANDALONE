local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0()
if string.find(string.lower(L0_0), ".xps") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN
