local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(bm.get_imagepath())
if L0_0 ~= nil and string.find(L0_0, "\\wmiprvse.exe", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
