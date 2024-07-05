local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(bm.get_imagepath())
if string.sub(L0_0, -7) == "mrt.exe" or string.sub(L0_0, -11) == "svchost.exe" or string.sub(L0_0, -12) == "rundll32.exe" or string.sub(L0_0, -12) == "wmiprvse.exe" or string.sub(L0_0, -12) == "regsvr32.exe" then
  return mp.CLEAN
end
return mp.INFECTED
