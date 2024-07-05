local L0_0, L1_1
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
L1_1 = mp
L1_1 = L1_1.readprotection
L1_1(false)
L1_1 = tostring
L1_1 = L1_1(mp.readfile(0, L0_0))
if string.find(L1_1, "http://www.j.mp/") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN
