local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(string.sub(bm.get_imagepath(), -12))
if L0_0 == "\\svchost.exe" then
  return mp.CLEAN
end
return mp.INFECTED
