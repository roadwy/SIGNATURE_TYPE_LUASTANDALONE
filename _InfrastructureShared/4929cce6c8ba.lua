local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(mp.getfilename())
if L0_0:find("androidmanifest.xml") then
  return mp.INFECTED
end
return mp.CLEAN
