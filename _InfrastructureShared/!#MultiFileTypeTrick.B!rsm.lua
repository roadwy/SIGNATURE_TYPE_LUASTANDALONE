local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(mp.getfilename())
if L0_0:len() < 4 then
  return mp.CLEAN
end
if string.sub(L0_0, -4) == ".hta" then
  return mp.INFECTED
end
return mp.CLEAN
