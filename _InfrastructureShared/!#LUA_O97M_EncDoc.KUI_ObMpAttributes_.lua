local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(mp.getfilename())
if L0_0 == nil or string.len(L0_0) <= 5 and mp.getfilesize() > 57344 then
  return mp.CLEAN
end
if string.find(L0_0, "document_%d%d%d%d%d%d%d%d%d+_12%d%d2020.xls") ~= nil or string.find(L0_0, "document%-%d%d%d%d%d%d%d%d%d.xls") ~= nil or string.find(L0_0, "complaint%-copy_%d%d%d%d%d%d%d%d%d+-12%d%d2020.xls") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN
