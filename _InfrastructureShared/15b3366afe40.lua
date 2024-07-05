local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(string.sub(bm.get_imagepath(), -13))
if string.find(L0_0, "\\excel.exe", 1, true) or string.find(L0_0, "\\powerpnt.exe", 1, true) or string.find(L0_0, "\\winword.exe", 1, true) then
  return mp.INFECTED
end
return mp.CLEAN
