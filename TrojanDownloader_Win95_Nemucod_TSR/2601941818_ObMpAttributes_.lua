local L0_0
L0_0 = string
L0_0 = L0_0.len
L0_0 = L0_0(mp.getfilename())
if L0_0 < 10 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(mp.getfilename())
if string.find(L0_0, "%d+%.zip%->%d+%.js") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN
