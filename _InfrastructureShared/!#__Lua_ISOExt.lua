local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(string.sub(mp.getfilename(), -4))
if L0_0 == ".iso" or L0_0 == ".img" then
  return mp.INFECTED
end
return mp.CLEAN
