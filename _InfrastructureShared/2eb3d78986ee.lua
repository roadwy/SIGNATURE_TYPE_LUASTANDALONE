local L0_0
L0_0 = bm
L0_0 = L0_0.get_imagepath
L0_0 = L0_0()
if L0_0 ~= nil and string.lower(string.sub(L0_0, -31)) ~= "altaro.services.backupagent.exe" and string.lower(string.sub(L0_0, -20)) ~= "coreserviceshell.exe" then
  return mp.INFECTED
end
return mp.CLEAN
