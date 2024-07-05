local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0(mp.FILEPATH_QUERY_LOWERCASE)
if L0_0 == nil or string.len(L0_0) <= 5 then
  return mp.CLEAN
end
if string.find(L0_0, "calculation%d%d%d%d_oct18.html") ~= nil or string.find(L0_0, "applicationreject_%d%d%d%d%d%(jan31%).one") ~= nil or string.find(L0_0, "complaintcopy_%d%d%d%d%d%(feb01%).one") ~= nil or string.find(L0_0, "azienda_%d%d.hta") ~= nil or string.find(L0_0, "agenzia_%d%d.hta") ~= nil or string.find(L0_0, "weeklyi%d%d%d%d+.js") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN
