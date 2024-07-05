local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(bm.get_imagepath())
if string.find(L0_0, "\\device\\harddiskvolume.\\windows\\system32\\ie4uinit%.exe", 1, false) ~= nil or string.find(L0_0, "\\device\\harddiskvolume.\\windows\\syswow64\\ie4uinit%.exe", 1, false) ~= nil then
  return mp.CLEAN
end
return mp.INFECTED
