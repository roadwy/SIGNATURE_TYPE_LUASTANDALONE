local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11
L0_0 = string
L0_0 = L0_0.lower
L1_1 = mp
L1_1 = L1_1.get_contextdata
L2_2 = mp
L2_2 = L2_2.CONTEXT_DATA_FILEPATH
L11_11 = L1_1(L2_2)
L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L1_1(L2_2))
if L0_0 ~= nil then
  L1_1 = string
  L1_1 = L1_1.len
  L2_2 = L0_0
  L1_1 = L1_1(L2_2)
  if not (L1_1 < 22) then
    L1_1 = string
    L1_1 = L1_1.find
    L2_2 = L0_0
    L3_3 = "\\appdata\\local\\temp\\"
    L4_4 = 1
    L5_5 = true
    L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
  end
elseif L1_1 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = string
L1_1 = L1_1.lower
L2_2 = mp
L2_2 = L2_2.get_contextdata
L3_3 = mp
L3_3 = L3_3.CONTEXT_DATA_FILENAME
L11_11 = L2_2(L3_3)
L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L2_2(L3_3))
if L1_1 ~= nil then
  L2_2 = string
  L2_2 = L2_2.len
  L3_3 = L1_1
  L2_2 = L2_2(L3_3)
elseif L2_2 < 5 then
  L2_2 = mp
  L2_2 = L2_2.CLEAN
  return L2_2
end
L2_2 = string
L2_2 = L2_2.sub
L3_3 = L1_1
L4_4 = -4
L2_2 = L2_2(L3_3, L4_4)
if L2_2 ~= nil then
  L3_3 = string
  L3_3 = L3_3.len
  L4_4 = L2_2
  L3_3 = L3_3(L4_4)
elseif L3_3 < 4 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = {}
L3_3[".xls"] = "excel"
L3_3.xlsx = "excel"
L3_3.xlsm = "excel"
L3_3.xlsb = "excel"
L3_3.xltx = "excel"
L3_3.xltm = "excel"
L3_3[".xlt"] = "excel"
L3_3.xlam = "excel"
L3_3[".xla"] = "excel"
L3_3[".doc"] = "word"
L3_3.docx = "word"
L3_3.docm = "word"
L3_3.dotx = "word"
L3_3.dotm = "word"
L3_3[".rtf"] = "word"
L3_3[".ppt"] = "powerpoint"
L3_3.pptm = "powerpoint"
L3_3[".pps"] = "powerpoint"
L3_3.pptx = "powerpoint"
L3_3.ppsx = "powerpoint"
L3_3[".odt"] = "odt"
L3_3[".xml"] = "xml"
L4_4 = L3_3[L2_2]
if L4_4 == nil then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = string
L4_4 = L4_4.match
L5_5 = L0_0
L6_6 = "\\appdata\\local\\temp\\(.+)"
L4_4 = L4_4(L5_5, L6_6)
if L4_4 ~= nil then
  L5_5 = string
  L5_5 = L5_5.len
  L6_6 = L4_4
  L5_5 = L5_5(L6_6)
elseif L5_5 < 4 then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = string
L5_5 = L5_5.find
L6_6 = L4_4
L5_5 = L5_5(L6_6, L7_7, L8_8, L9_9)
if L5_5 ~= nil then
  L5_5 = mp
  L5_5 = L5_5.CLEAN
  return L5_5
end
L5_5 = {}
L5_5.zip = "temp%x_.+%.zip"
L5_5.rar = "rar$.+"
L5_5["7zip"] = "7z.+"
L5_5.wzip = "wz.+"
L6_6 = L3_3[L2_2]
for L10_10, L11_11 in L7_7(L8_8) do
  if string.match(L4_4, L11_11) ~= nil then
    mp.set_mpattribute("Lua:OfficeExtractedFileInZip.A!" .. L10_10 .. "_" .. L6_6)
    return mp.INFECTED
  end
end
return L7_7
