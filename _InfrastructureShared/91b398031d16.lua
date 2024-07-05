local L0_0
L0_0 = bm
L0_0 = L0_0.get_imagepath
L0_0 = L0_0()
if L0_0 and string.find(string.lower(L0_0), "\\edge\\", 1, true) == nil then
  return mp.INFECTED
end
return mp.CLEAN
