local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(mp.getfilename())
if L0_0 ~= nil and L0_0:find("putty", 1, true) ~= nil then
  return mp.CLEAN
end
return mp.INFECTED
