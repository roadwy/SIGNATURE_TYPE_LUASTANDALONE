local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0(mp.FILEPATH_QUERY_LOWERCASE)
if L0_0 == nil or string.len(L0_0) <= 5 then
  return mp.CLEAN
end
if mp.getfilesize() > 1024000 then
  return mp.CLEAN
end
if string.find(L0_0, ".pdf.msi", 1, true) ~= nil or string.find(L0_0, "\194\183pdf.zip", 1, true) ~= nil or string.find(L0_0, ",jpg.iso", 1, true) ~= nil or string.find(L0_0, "vhowlvtwzr.dll", 1, true) ~= nil or string.find(L0_0, "_xls.exe", 1, true) ~= nil or string.find(L0_0, "_docx.exe", 1, true) ~= nil or string.find(L0_0, "png.scr", 1, true) ~= nil or string.find(L0_0, "factura.exe", 1, true) ~= nil or string.find(L0_0, "-pdf.pif", 1, true) ~= nil or string.find(L0_0, "__....exe", 1, true) ~= nil or string.find(L0_0, "hsbc_cus.exe", 1, true) ~= nil or string.find(L0_0, "_pdf.com", 1, true) ~= nil or string.find(L0_0, "\194\183pdf.exe", 1, true) ~= nil or string.find(L0_0, "_jpg.exe", 1, true) ~= nil or string.find(L0_0, "_xslx.exe", 1, true) ~= nil or string.find(L0_0, "_pdf__.+%.%.exe") ~= nil or string.find(L0_0, "new order_%d%d%d%d%.exe") ~= nil or string.find(L0_0, "%\194\183pdf%d%.zip") or string.find(L0_0, "dhl%d%d%d%d%d%d+%.exe") or string.find(L0_0, "diejc%.dll") or string.find(L0_0, "pwj%.dll") or string.find(L0_0, "oejfzj%.dll") or string.find(L0_0, "aoshvfu%.dll") or string.find(L0_0, "rfq#%d%d%d%d+%.exe") or string.find(L0_0, "payment details_$%d%d,%d%d%d%.exe") or string.find(L0_0, "_pdf_+%.exe") or string.find(L0_0, "docs%.pdf%.%.+%.gz%.exe") or string.find(L0_0, "hsbc_cus %(%d%)%.exe") or string.find(L0_0, "%.pdf %(%d%d%d kb%)%.exe") or string.find(L0_0, "%.xlsx%(%d%dkb%)%.exe") or string.find(L0_0, "factura_%d%d%dpdf%.exe") then
  return mp.INFECTED
end
return mp.CLEAN
