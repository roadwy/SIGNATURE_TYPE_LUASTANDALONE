local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(bm.get_imagepath())
if string.sub(L0_0, -17) == "searchindexer.exe" or string.sub(L0_0, -22) == "searchprotocolhost.exe" or string.sub(L0_0, -20) == "searchfilterhost.exe" then
  return mp.INFECTED
end
return mp.CLEAN
