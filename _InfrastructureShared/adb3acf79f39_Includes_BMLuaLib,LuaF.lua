local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L2_2 = 0
L3_3 = this_sigattrlog
L3_3 = L3_3[1]
L3_3 = L3_3.matched
if L3_3 then
  L3_3 = this_sigattrlog
  L3_3 = L3_3[1]
  L3_3 = L3_3.utf8p2
  if L3_3 then
    L3_3 = this_sigattrlog
    L3_3 = L3_3[1]
    L0_0 = L3_3.utf8p2
  end
end
if not L0_0 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
if L0_0 == "" then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = StringStartsWith
L4_4 = L0_0
L5_5 = "."
L3_3 = L3_3(L4_4, L5_5)
if not L3_3 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = string
L3_3 = L3_3.len
L4_4 = L0_0
L3_3 = L3_3(L4_4)
if not (L3_3 < 4) then
  L3_3 = IsExtensionDatePattern
  L4_4 = L0_0
  L3_3 = L3_3(L4_4)
  if L3_3 ~= true then
    L3_3 = string
    L3_3 = L3_3.match
    L4_4 = L0_0
    L5_5 = "%d+.%d+.%d+"
    L3_3 = L3_3(L4_4, L5_5)
  end
elseif L3_3 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = mp
L3_3 = L3_3.bitand
L4_4 = mp
L4_4 = L4_4.GetExtensionClass
L5_5 = L0_0
L4_4 = L4_4(L5_5)
L5_5 = 3
L3_3 = L3_3(L4_4, L5_5)
if L3_3 ~= 0 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = this_sigattrlog
L3_3 = L3_3[2]
L3_3 = L3_3.matched
if L3_3 then
  L3_3 = this_sigattrlog
  L3_3 = L3_3[2]
  L3_3 = L3_3.utf8p2
  if L3_3 then
    L3_3 = this_sigattrlog
    L3_3 = L3_3[2]
    L1_1 = L3_3.utf8p2
  end
else
  L3_3 = this_sigattrlog
  L3_3 = L3_3[3]
  L3_3 = L3_3.matched
  if L3_3 then
    L3_3 = this_sigattrlog
    L3_3 = L3_3[3]
    L3_3 = L3_3.utf8p2
    if L3_3 then
      L3_3 = this_sigattrlog
      L3_3 = L3_3[3]
      L1_1 = L3_3.utf8p2
    end
  end
end
if not L1_1 then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = safeJsonDeserialize
L4_4 = L1_1
L3_3 = L3_3(L4_4)
if not L3_3 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = {}
L4_4[".7z"] = true
L4_4[".accdb"] = true
L4_4[".accde"] = true
L4_4[".avi"] = true
L4_4[".bmp"] = true
L4_4[".csv"] = true
L4_4[".dbf"] = true
L4_4[".doc"] = true
L4_4[".docb"] = true
L4_4[".docm"] = true
L4_4[".docx"] = true
L4_4[".dot"] = true
L4_4[".dotm"] = true
L4_4[".dotx"] = true
L4_4[".dwg"] = true
L4_4[".dws"] = true
L4_4[".dxf"] = true
L4_4[".email"] = true
L4_4[".eml"] = true
L4_4[".gif"] = true
L4_4[".gpg"] = true
L4_4[".gz"] = true
L4_4[".hsf"] = true
L4_4[".htm"] = true
L4_4[".html"] = true
L4_4[".igs"] = true
L4_4[".jpg"] = true
L4_4[".jpeg"] = true
L4_4[".json"] = true
L4_4[".kdb"] = true
L4_4[".kdbx"] = true
L4_4[".lnk"] = true
L4_4[".mdb"] = true
L4_4[".mp3"] = true
L4_4[".mp4"] = true
L4_4[".mpeg"] = true
L4_4[".mpg"] = true
L4_4[".msg"] = true
L4_4[".ost"] = true
L4_4[".png"] = true
L4_4[".pdf"] = true
L4_4[".pgp"] = true
L4_4[".pos"] = true
L4_4[".potm"] = true
L4_4[".potx"] = true
L4_4[".ppam"] = true
L4_4[".pps"] = true
L4_4[".ppsx"] = true
L4_4[".ppt"] = true
L4_4[".pptm"] = true
L4_4[".pptx"] = true
L4_4[".pst"] = true
L4_4[".rar"] = true
L4_4[".shp"] = true
L4_4[".shx"] = true
L4_4[".skp"] = true
L4_4[".sql"] = true
L4_4[".tlg"] = true
L4_4[".tsv"] = true
L4_4[".txt"] = true
L4_4[".vcf"] = true
L4_4[".vsd"] = true
L4_4[".vsdm"] = true
L4_4[".xlam"] = true
L4_4[".xlm"] = true
L4_4[".xls"] = true
L4_4[".xlsb"] = true
L4_4[".xlsm"] = true
L4_4[".xlsx"] = true
L4_4[".xlt"] = true
L4_4[".xltm"] = true
L4_4[".xltx"] = true
L4_4[".xlw"] = true
L4_4[".xml"] = true
L4_4[".yaml"] = true
L4_4[".yml"] = true
L4_4[".zip"] = true
L5_5 = L3_3.file_list
L6_6 = isnull
L6_6 = L6_6(L5_5)
if L6_6 then
  L6_6 = mp
  L6_6 = L6_6.CLEAN
  return L6_6
end
L6_6 = {}
for _FORV_10_ = 1, #L5_5 do
  if _FORV_10_ % 2 == 0 then
    table.insert(L6_6, L5_5[_FORV_10_])
  end
end
for _FORV_10_, _FORV_11_ in pairs(L6_6) do
  if L4_4[string.lower(_FORV_11_:match("(%.[^.]+)$"))] then
    L2_2 = L2_2 + 1
  end
end
if L2_2 >= 3 then
  return mp.INFECTED
end
return mp.CLEAN
