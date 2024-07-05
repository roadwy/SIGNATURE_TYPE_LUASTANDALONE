local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(bm.get_imagepath())
if string.match(L0_0, "\\outlook.exe$") or string.match(L0_0, "\\olk.exe$") then
  return mp.INFECTED
end
return mp.CLEAN
