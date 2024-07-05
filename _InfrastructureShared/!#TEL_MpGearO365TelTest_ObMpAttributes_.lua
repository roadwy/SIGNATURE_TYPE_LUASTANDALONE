local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0()
if L0_0 == nil then
  return mp.CLEAN
end
L0_0 = string.lower(L0_0)
if string.sub(L0_0, 1, 3) == "4c1" then
  return mp.INFECTED
end
return mp.CLEAN
