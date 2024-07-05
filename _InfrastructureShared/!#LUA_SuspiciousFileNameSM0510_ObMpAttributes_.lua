local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0(mp.FILEPATH_QUERY_LOWERCASE)
if L0_0 == nil or string.len(L0_0) <= 5 then
  return mp.CLEAN
end
if mp.get_mpattribute("LUA:FileSizeGT80000.A") and (string.find(L0_0, "invoice%_pdf%#%d%d%d%d.iso") ~= nil or string.find(L0_0, "invoice%_%d%d%d%d%_october%_pdf.iso") ~= nil) then
  return mp.INFECTED
end
return mp.CLEAN
