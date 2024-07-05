local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
if L0_0 == nil or string.len(L0_0) <= 5 then
  return mp.CLEAN
end
if string.find(L0_0, "normal_5fa%x%x%x%x%x%x%x%x%x%x%.pdf") ~= nil or string.find(L0_0, "normal_5fb%x%x%x%x%x%x%x%x%x%x%.pdf") ~= nil or string.find(L0_0, "normal_5fc%x%x%x%x%x%x%x%x%x%x%.pdf") ~= nil or string.find(L0_0, "normal_5fd%x%x%x%x%x%x%x%x%x%x%.pdf") ~= nil or string.find(L0_0, "normal_5fe%x%x%x%x%x%x%x%x%x%x%.pdf") ~= nil or string.find(L0_0, "normal_5ff%x%x%x%x%x%x%x%x%x%x%.pdf") ~= nil or string.find(L0_0, "scan_34%d%d+_inv%.pdf") ~= nil or string.find(L0_0, "document_%d%d%d_unpaid_%-1%-12.pdf") ~= nil or string.find(L0_0, "complaintapril_%d%d%d%d+%.pdf") ~= nil or string.find(L0_0, "inv%(05%-10%)copy#%d+%.pdf") ~= nil or string.find(L0_0, "claim%-11%-2%-%d%d%d%a%a%a%d%d%d%.pdf") ~= nil or string.find(L0_0, "claim%-nov%-2%-%d%d%d%a%a%a%d%d%d%.pdf") ~= nil or string.find(L0_0, "claim%-november%-2%-%d%d%d%a%a%a%d%d%d%.pdf") ~= nil or string.find(L0_0, "claim%-11%-2%-%d%d%d%a%a%a%d%d%d%-23%.pdf") ~= nil or string.find(L0_0, "claim%-nov%-2%-%d%d%d%a%a%a%d%d%d%-23%.pdf") ~= nil or string.find(L0_0, "claim%-november%-2%-%d%d%d%a%a%a%d%d%d%-23%.pdf") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN
