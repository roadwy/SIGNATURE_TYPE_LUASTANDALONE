local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0(mp.FILEPATH_QUERY_LOWERCASE)
if L0_0 == nil or string.len(L0_0) <= 5 then
  return mp.CLEAN
end
if string.find(L0_0, "paid_offer_%d%d+_jan%-19.pdf") ~= nil or string.find(L0_0, "redacted.document.01.20.pdf", 1, true) ~= nil or string.find(L0_0, "inv_unpaid_%d%d+_april.pdf") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN
