local L0_0, L1_1
if mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONOPEN or mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONMODIFIEDHANDLECLOSE then
  L0_0 = mp.get_contextdata(mp.CONTEXT_DATA_FILENAME)
end
if L0_0 == nil then
  L1_1 = string.lower(mp.getfilename())
  if L1_1 == nil then
    return mp.CLEAN
  end
  L0_0 = L1_1:match("([^\\]+)$")
end
if L0_0 ~= nil and (string.match(L0_0, "^invoice%-") or string.match(L0_0, "^invoices%-") or string.match(L0_0, "^invoice_") or string.match(L0_0, "^kpinvoice_") or string.match(L0_0, "^scan%-%d+") or string.match(L0_0, "^scan%-%a+%-%d+%-.+") or string.match(L0_0, "^cust%-%a+%-%d+%-.+") or string.match(L0_0, "^order%-") or string.match(L0_0, "^inv%-%a+%-%d+%-.+") or string.match(L0_0, "^payment%-") or string.match(L0_0, "^acknowledgement%-") or string.match(L0_0, "^rechnung%-") or string.match(L0_0, "^rechnungs%-") or string.match(L0_0, "^gescanntes%-") or string.match(L0_0, "^rech%-%d+") or string.match(L0_0, "^rech%-%a+%-%d+%-.+") or string.match(L0_0, "^ups__") or string.match(L0_0, "^view__report") or string.match(L0_0, "^document__%d+") or string.match(L0_0, "^re%-invoice%-") or string.match(L0_0, "^dhl__") or string.match(L0_0, "^no%-%a+%-%d+%-.+")) then
  return mp.INFECTED
end
return mp.CLEAN
