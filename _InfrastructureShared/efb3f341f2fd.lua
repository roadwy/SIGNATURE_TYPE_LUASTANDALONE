local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(bm.get_imagepath())
if string.sub(L0_0, -12) == "\\svchost.exe" then
  return mp.CLEAN
end
if string.sub(L0_0, -13) == "\\explorer.exe" then
  return mp.CLEAN
end
return mp.INFECTED
