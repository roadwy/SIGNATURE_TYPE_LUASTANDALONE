local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(string.sub(bm.get_imagepath(), -13))
if L0_0 == "\\wmiprvse.exe" then
  return mp.INFECTED
end
return mp.CLEAN
