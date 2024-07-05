local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0(mp.FILEPATH_QUERY_LOWERCASE)
if L0_0 == nil or string.len(L0_0) <= 5 then
  return mp.CLEAN
end
if string.find(L0_0, "facturas pagadas al vencimientopdf.exe", 1, true) ~= nil or string.find(L0_0, "panderizes sagenesses.exe", 1, true) ~= nil or string.find(L0_0, "trrester incutting.exe", 1, true) ~= nil or string.find(L0_0, "sedile.exe", 1, true) ~= nil then
  return mp.INFECTED
end
return mp.CLEAN
