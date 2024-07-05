local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(bm.get_imagepath())
if L0_0 and string.find(L0_0, "\\6.pif", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
