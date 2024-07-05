local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(string.sub(bm.get_imagepath(), -15))
if L0_0 == "\\powershell.exe" then
  return mp.CLEAN
end
return mp.INFECTED
