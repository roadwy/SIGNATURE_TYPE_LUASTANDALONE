local L0_0
L0_0 = bm
L0_0 = L0_0.get_imagepath
L0_0 = L0_0()
if L0_0 ~= nil and string.sub(L0_0, -10) == "/sbin/aide" then
  return mp.CLEAN
end
return mp.INFECTED
