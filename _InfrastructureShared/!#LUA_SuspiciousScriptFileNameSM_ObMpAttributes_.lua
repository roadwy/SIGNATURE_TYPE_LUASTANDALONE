local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0(mp.FILEPATH_QUERY_LOWERCASE)
if L0_0 == nil or string.len(L0_0) <= 5 then
  return mp.CLEAN
end
if string.find(L0_0, "remittance %d%d%d%d+%.pdf%.html") ~= nil or string.find(L0_0, "invoice rnp583879248d11%.html") ~= nil or string.find(L0_0, "payment swift receipt 250i2109151256175684%#%.shtml") ~= nil or string.find(L0_0, "retrieve%-message%-immediately%.%-%_%d%d%d%d+%.html") ~= nil or string.find(L0_0, "p%.o%- swift mt%_109 5m forinv%.%-%_%d%d%d%d+%.html") ~= nil or string.find(L0_0, "p%.o%- swift mt%_109 5m for inv%.%-%_%d%d%d%d+%.html") ~= nil or string.find(L0_0, "freshoinvoice#f12996554.html") ~= nil or string.find(L0_0, "dcinv_272a.pdf.htm") ~= nil or string.find(L0_0, "att%-50836829.shtml") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN
