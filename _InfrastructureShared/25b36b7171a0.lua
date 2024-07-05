local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(bm.get_imagepath())
if L0_0:len() >= 12 and (string.sub(L0_0, -12) == "ie4uinit.exe" or string.sub(L0_0, -12) == "iexplore.exe") then
  return mp.CLEAN
end
return mp.INFECTED
