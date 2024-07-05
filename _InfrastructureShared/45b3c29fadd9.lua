local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(bm.get_imagepath())
if L0_0 ~= nil then
  if string.find(L0_0, "\\svchost.exe", 1, true) or string.find(L0_0, "\\rubyw.exe", 1, true) or string.find(L0_0, "\\sccm_wmi_repair.exe", 1, true) then
    return mp.CLEAN
  end
  return mp.INFECTED
end
return mp.CLEAN
