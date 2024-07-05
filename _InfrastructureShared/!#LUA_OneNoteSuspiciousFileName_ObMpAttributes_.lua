local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0(mp.FILEPATH_QUERY_LOWERCASE)
if L0_0 == nil or string.len(L0_0) <= 5 then
  return mp.CLEAN
end
if string.find(L0_0, "kyc_gm92%(feb%d%d%)%.one$") ~= nil or string.find(L0_0, "document.one", 1, true) ~= nil or string.find(L0_0, "goods.one", 1, true) ~= nil then
  return mp.INFECTED
end
return mp.CLEAN
