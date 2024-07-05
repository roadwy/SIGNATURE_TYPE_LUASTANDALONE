local L0_0
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0(mp.bitor(mp.FILEPATH_QUERY_FULL, mp.FILEPATH_QUERY_LOWERCASE))
if L0_0 == nil or L0_0 == "" then
  return mp.CLEAN
end
if string.find(L0_0, "tsv_to_xlsx.exe", 1, true) or string.find(L0_0, "pypdf2docx.exe", 1, true) then
  return mp.CLEAN
end
if ({
  [".doc.exe"] = "",
  ["docx.exe"] = "",
  ["docm.exe"] = "",
  [".xls.exe"] = "",
  ["xlsx.exe"] = "",
  [".ppt.exe"] = "",
  ["pptx.exe"] = "",
  [".rtf.exe"] = "",
  [".pdf.exe"] = "",
  [".txt.exe"] = "",
  [".rar.exe"] = "",
  [".zip.exe"] = "",
  ["    .exe"] = "",
  ["____.exe"] = "",
  ["rar.exe"] = "",
  ["doc.exe"] = "",
  ["xls.exe"] = "",
  ["pdf.exe"] = "",
  ["txt.exe"] = "",
  ["zip.exe"] = "",
  [".docx.js"] = "",
  [".xlsx.js"] = "",
  [".pptx.js"] = "",
  [".doc.js"] = "",
  [".ppt.js"] = "",
  [".xls.js"] = "",
  [".pdf.js"] = "",
  [".txt.js"] = ""
})[L0_0:sub(-8):sub(-7)] ~= nil or ({
  [".doc.exe"] = "",
  ["docx.exe"] = "",
  ["docm.exe"] = "",
  [".xls.exe"] = "",
  ["xlsx.exe"] = "",
  [".ppt.exe"] = "",
  ["pptx.exe"] = "",
  [".rtf.exe"] = "",
  [".pdf.exe"] = "",
  [".txt.exe"] = "",
  [".rar.exe"] = "",
  [".zip.exe"] = "",
  ["    .exe"] = "",
  ["____.exe"] = "",
  ["rar.exe"] = "",
  ["doc.exe"] = "",
  ["xls.exe"] = "",
  ["pdf.exe"] = "",
  ["txt.exe"] = "",
  ["zip.exe"] = "",
  [".docx.js"] = "",
  [".xlsx.js"] = "",
  [".pptx.js"] = "",
  [".doc.js"] = "",
  [".ppt.js"] = "",
  [".xls.js"] = "",
  [".pdf.js"] = "",
  [".txt.js"] = ""
})[L0_0:sub(-8)] ~= nil then
  return mp.INFECTED
end
return mp.CLEAN
