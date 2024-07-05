local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0(mp.FILEPATH_QUERY_LOWERCASE)
if mp.getfilesize() < 65536 and mp.getfilesize() > 327680 then
  return mp.CLEAN
end
if L0_0 == nil or string.len(L0_0) <= 5 then
  return mp.CLEAN
end
if string.find(L0_0, "lnvoice%-%d%d%d%d%d+%.pdf$") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN
