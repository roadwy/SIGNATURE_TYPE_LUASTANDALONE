local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(mp.getfilename())
if L0_0:find("classes.dex") then
  return mp.CLEAN
end
return mp.INFECTED
