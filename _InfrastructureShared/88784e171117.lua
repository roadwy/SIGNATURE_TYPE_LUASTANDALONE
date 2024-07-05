local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(mp.getfilename())
if mp.getfilesize() < 1000000 and string.sub(L0_0, -12) == "goopdate.dll" then
  return mp.INFECTED
end
return mp.CLEAN
