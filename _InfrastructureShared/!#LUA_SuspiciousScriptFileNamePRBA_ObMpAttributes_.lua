local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
if L0_0 == nil or string.len(L0_0) <= 5 then
  return mp.CLEAN
end
if string.find(L0_0, "complaintcopy_%d%d%d%d%d%(feb01%)1%.one") ~= nil or string.find(L0_0, " on 01feb %- copy%.one") ~= nil or string.find(L0_0, "agreementcancelation_%d%d%d%d%d%d%(feb08%)%.one") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN
