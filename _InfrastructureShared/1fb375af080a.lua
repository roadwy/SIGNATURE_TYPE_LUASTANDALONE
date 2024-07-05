local L0_0
L0_0 = bm
L0_0 = L0_0.get_imagepath
L0_0 = L0_0()
if L0_0 ~= nil and string.find(L0_0, "\\explorer.exe") ~= nil then
  return mp.CLEAN
end
return mp.INFECTED
