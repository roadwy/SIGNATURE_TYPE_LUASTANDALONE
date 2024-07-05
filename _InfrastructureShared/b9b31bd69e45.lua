local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(bm.get_imagepath())
if string.find(L0_0, "\\mmc.exe") then
  return mp.CLEAN
elseif string.find(L0_0, "\\officeclicktorun.exe") then
  return mp.CLEAN
end
return mp.INFECTED
