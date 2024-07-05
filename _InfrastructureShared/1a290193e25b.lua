local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0()
L0_0 = L0_0.lower(L0_0)
if string.find(L0_0, ".py", 1, true) or string.find(L0_0, ".ps1", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
