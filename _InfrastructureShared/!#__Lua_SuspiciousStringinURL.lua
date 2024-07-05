local L0_0
L0_0 = mp
L0_0 = L0_0.IOAVGetDownloadUrl
L0_0 = L0_0()
if L0_0 == nil then
  return mp.CLEAN
end
if string.len(L0_0) < 12 then
  return mp.CLEAN
end
L0_0 = string.lower(L0_0)
if string.find(L0_0, "/.+invoice.+/") ~= nil or string.find(L0_0, "/.+rechnung.+/") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN
