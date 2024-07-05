local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(bm.get_imagepath())
if L0_0 == nil or string.len(L0_0) < 1 then
  return mp.CLEAN
end
if string.find(string.lower(L0_0), "\\svchost.exe", 1, true) or string.find(string.lower(L0_0), "\\installshield\\setup.exe", 1, true) or string.find(string.lower(L0_0), "\\installshield\\x32\\setup.exe", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
