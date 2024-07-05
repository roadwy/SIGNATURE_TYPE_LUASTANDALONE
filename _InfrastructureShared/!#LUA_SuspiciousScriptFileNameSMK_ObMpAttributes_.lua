local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0(mp.FILEPATH_QUERY_LOWERCASE)
if L0_0 == nil or string.len(L0_0) <= 5 then
  return mp.CLEAN
end
if string.find(L0_0, "actdetails_april%(%d%d%d%d%)%.wsf") ~= nil or string.find(L0_0, "projectfunding_%a%d%d%d%.wsf") ~= nil or string.find(L0_0, "projectfunding_%a%d%d%d_apr%d%d%.wsf") ~= nil or string.find(L0_0, "erc_%a%d%d%d_may3%.wsf") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN
