local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(bm.get_imagepath())
if L0_0 ~= nil and (string.find(L0_0, "\\inetsrv", 1, true) or string.find(L0_0, "\\apache", 1, true) or string.find(L0_0, "\\tomcat", 1, true)) then
  return mp.INFECTED
end
return mp.CLEAN
