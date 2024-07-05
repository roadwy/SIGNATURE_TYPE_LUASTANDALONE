local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0()
L1_1 = "/tmp"
if L0_0:find(L1_1, 1, true) ~= nil then
  return mp.INFECTED
end
return mp.CLEAN
