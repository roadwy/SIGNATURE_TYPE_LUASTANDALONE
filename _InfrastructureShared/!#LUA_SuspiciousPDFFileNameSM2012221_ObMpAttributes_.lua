local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0(mp.FILEPATH_QUERY_LOWERCASE)
if L0_0 == nil or string.len(L0_0) <= 5 then
  return mp.CLEAN
end
if string.find(L0_0, "summary_%d%d%d%d+_12%d%d2022.pdf") ~= nil or string.find(L0_0, "documentsfolder_%d%d%d%d+_12%d%d2022.pdf") ~= nil or string.find(L0_0, "erc%-%d%d%d%d+%-may3.pdf") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN
