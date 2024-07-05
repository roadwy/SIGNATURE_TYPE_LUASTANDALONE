local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(mp.getfilename())
if string.find(L0_0, "flash.*player.*%.hta") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN
