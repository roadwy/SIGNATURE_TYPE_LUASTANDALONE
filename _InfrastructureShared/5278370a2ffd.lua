local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(mp.getfilename())
if string.sub(L0_0, -13) == "uninstall.exe" or string.sub(L0_0, -15) == "uninstaller.exe" then
  return mp.CLEAN
end
return mp.INFECTED
