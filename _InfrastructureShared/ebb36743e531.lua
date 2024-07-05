local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(bm.get_imagepath())
if string.sub(L0_0, -7) == "cmd.exe" or string.sub(L0_0, -12) == "explorer.exe" or string.sub(L0_0, -14) == "powershell.exe" or string.sub(L0_0, -12) == "mpcmdrun.exe" then
  return mp.CLEAN
end
return mp.INFECTED
