local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(bm.get_imagepath())
if string.sub(L0_0, -12) == "sqlservr.exe" then
  return mp.INFECTED
end
return mp.CLEAN
