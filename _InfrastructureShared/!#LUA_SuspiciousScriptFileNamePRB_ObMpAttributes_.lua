local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0(mp.bitor(mp.FILEPATH_QUERY_FNAME, mp.FILEPATH_QUERY_LOWERCASE))
if L0_0 == nil or string.len(L0_0) <= 5 then
  return mp.CLEAN
end
if string.find(L0_0, "po_00181021usd %a+%.%a+%.%a+%.%a%a+ pdfxls%.html") ~= nil or string.find(L0_0, "swift copy usd %a+@%a+%-%a+%.%a+%.%a%a+ pdf_xls%.html") ~= nil or string.find(L0_0, "purchase order usd %a+%.%a+@%a+%.%a%a+ pdf_xls%.html") ~= nil or string.find(L0_0, "transfer copy usd %a+%.%a+@%a+%.%a%a+ pdf_xls%.html") ~= nil then
  return mp.INFECTED
end
return mp.CLEAN
