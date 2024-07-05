local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0(mp.FILEPATH_QUERY_LOWERCASE)
if L0_0 == nil or string.len(L0_0) <= 5 then
  return mp.CLEAN
end
if string.find(L0_0, "-xlsx.zip", 1, true) or string.find(L0_0, "-doc.gz", 1, true) or string.find(L0_0, "%.pdf___+%.bat") or string.find(L0_0, "%.pdf_+%.gz") or string.find(L0_0, "%.xlsx_____+%.r13") or string.find(L0_0, ",jpg.exe") or string.find(L0_0, "-pdf%-.exe") or string.find(L0_0, "confiformsyalla%.exe") then
  return mp.INFECTED
end
return mp.CLEAN
