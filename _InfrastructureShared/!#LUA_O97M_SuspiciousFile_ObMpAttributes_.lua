local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(mp.getfilename())
if L0_0 == nil or string.len(L0_0) <= 5 and mp.getfilesize() > 28672 then
  return mp.CLEAN
end
if string.find(L0_0, "virusshare_[%x]+", 1) ~= nil or string.find(L0_0, "deliveryo%d%dss.xls") ~= nil or string.find(L0_0, "%d%d%.%d%d%.2021_siparisler%.doc") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN
