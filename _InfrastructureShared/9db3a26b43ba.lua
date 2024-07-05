local L0_0
L0_0 = bm
L0_0 = L0_0.get_imagepath
L0_0 = L0_0()
if not L0_0 then
  return mp.CLEAN
end
if string.find(string.lower(L0_0), "\\miiserver.exe", -14, true) then
  return mp.CLEAN
end
return mp.INFECTED
