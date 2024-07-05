local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(bm.get_imagepath())
if string.sub(L0_0, -10) == "\\mstsc.exe" or string.sub(L0_0, -27) == "\\remotedesktopmanager64.exe" or string.sub(L0_0, -11) == "\\rdcman.exe" or string.sub(L0_0, -14) == "\\mremoteng.exe" or string.sub(L0_0, -10) == "\\lsass.exe" then
  return mp.CLEAN
end
return mp.INFECTED
