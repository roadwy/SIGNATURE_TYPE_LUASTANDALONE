local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(bm.get_imagepath())
if string.find(L0_0, "\\windows\\system32\\csrss.exe", 1, true) then
  return mp.CLEAN
end
return mp.INFECTED
