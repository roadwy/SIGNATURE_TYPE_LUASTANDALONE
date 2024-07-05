local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(mp.getfilename())
if L0_0:find("\\temp\\", 1, true) ~= nil and L0_0:find("\\system", 1, true) == nil then
  return mp.INFECTED
end
return mp.CLEAN
