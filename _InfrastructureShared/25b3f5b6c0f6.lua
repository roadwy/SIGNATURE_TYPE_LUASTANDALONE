local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(bm.get_imagepath())
if string.find(L0_0, "\\program files", 1, true) then
  return mp.CLEAN
end
mp.ReportLowfi(L0_0, 1160269835)
return mp.INFECTED
