local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(mp.getfilename())
if string.find(L0_0, "word/_rels", 1, true) ~= nil and mp.getfilesize() < 400 then
  return mp.INFECTED
end
return mp.CLEAN
