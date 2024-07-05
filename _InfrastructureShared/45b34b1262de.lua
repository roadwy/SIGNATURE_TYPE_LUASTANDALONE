local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(string.sub(bm.get_imagepath(), -12))
if string.find(L0_0, "\\wuauclt.exe", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
