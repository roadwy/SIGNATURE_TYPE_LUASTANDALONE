local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(mp.getfilename())
if string.sub(L0_0, -13) == "uninstall.exe" or string.sub(L0_0, -15) == "uninstaller.exe" or string.sub(L0_0, -10) == "uninst.exe" then
  return mp.CLEAN
end
if mp.getfilesize() > 104857600 then
  return mp.CLEAN
end
if not peattributes.isexe then
  return mp.CLEAN
end
return mp.INFECTED
