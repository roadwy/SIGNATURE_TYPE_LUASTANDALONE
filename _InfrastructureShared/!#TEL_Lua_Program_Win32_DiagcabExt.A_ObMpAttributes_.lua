local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0()
if string.sub(L0_0, -8) == ".diagcab" then
  return mp.INFECTED
end
return mp.CLEAN
