local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0(mp.FILEPATH_QUERY_LOWERCASE)
if L0_0 == nil or string.len(L0_0) <= 5 then
  return mp.CLEAN
end
if string.find(L0_0, "2021apt%-28_%d%d%d%d453.zip") ~= nil or string.find(L0_0, "2021apt%-28_%d%d%d%d%d453.zip") ~= nil or string.find(L0_0, "2021apt%-28_%d%d%d%d453.js") ~= nil or string.find(L0_0, "2021apt%-28_%d%d%d%d%d453.js") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN
