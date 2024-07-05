local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0(mp.FILEPATH_QUERY_LOWERCASE)
if L0_0 == nil or string.len(L0_0) <= 5 then
  return mp.CLEAN
end
if string.find(L0_0, "calculation%#%d%d%d%d.iso") ~= nil or string.find(L0_0, "ref%#%d%d%d%d.iso") ~= nil or string.find(L0_0, "gallery%#%d%d%d%d.iso") ~= nil or string.find(L0_0, "accounting%#%d%d%d%d.iso") ~= nil or string.find(L0_0, "card%#%d%d%d%d.iso") ~= nil or string.find(L0_0, "contract%#%d%d%d%d.iso") ~= nil or string.find(L0_0, "rfsl%#%d%d%d%d.iso") ~= nil or string.find(L0_0, "rej%_%d%d%d%d.iso") ~= nil or string.find(L0_0, "invoice_10%-12_document_%d%d%d%d.iso") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN
