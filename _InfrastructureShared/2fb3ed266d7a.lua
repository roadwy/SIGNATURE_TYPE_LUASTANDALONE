local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(bm.get_imagepath())
if L0_0 == nil or #L0_0 < 1 then
  return mp.CLEAN
end
if string.find(string.lower(L0_0), "\\mpsigstub.exe", 1, true) or string.find(string.lower(L0_0), "\\mpcmdrun.exe", 1, true) then
  return mp.CLEAN
end
return mp.INFECTED
