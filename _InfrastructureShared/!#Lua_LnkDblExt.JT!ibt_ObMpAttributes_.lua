local L0_0, L1_1, L2_2
L0_0 = mp
L0_0 = L0_0.getfilesize
L0_0 = L0_0()
if L0_0 > 20480 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = string
L0_0 = L0_0.lower
L1_1 = mp
L1_1 = L1_1.getfilename
L2_2 = L1_1()
L0_0 = L0_0(L1_1, L2_2, L1_1())
L1_1 = string
L1_1 = L1_1.find
L2_2 = L0_0
L1_1 = L1_1(L2_2, "->", 1, true)
if L1_1 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L2_2 = L0_0
L1_1 = L0_0.len
L1_1 = L1_1(L2_2)
if L1_1 < 9 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = {}
L1_1[".doc"] = ""
L1_1.docm = ""
L1_1.docx = ""
L1_1[".dot"] = ""
L1_1.dotm = ""
L1_1.dotx = ""
L1_1[".odt"] = ""
L1_1[".rtf"] = ""
L1_1[".ods"] = ""
L1_1[".xla"] = ""
L1_1[".xls"] = ""
L1_1.xlam = ""
L1_1.xlsb = ""
L1_1.xlsm = ""
L1_1.xlsx = ""
L1_1[".xlt"] = ""
L1_1.xltm = ""
L1_1.xltx = ""
L1_1[".odp"] = ""
L1_1[".pot"] = ""
L1_1[".potm"] = ""
L1_1[".potx"] = ""
L1_1[".ppa"] = ""
L1_1.ppam = ""
L1_1[".pps"] = ""
L1_1[".ppsm"] = ""
L1_1[".ppsx"] = ""
L1_1[".ppt"] = ""
L1_1.pptm = ""
L1_1.pptx = ""
L1_1[".ani"] = ""
L1_1[".bmp"] = ""
L1_1[".cur"] = ""
L1_1[".emf"] = ""
L1_1[".gif"] = ""
L1_1[".ico"] = ""
L1_1.jpeg = ""
L1_1[".jpg"] = ""
L1_1[".png"] = ""
L1_1[".raw"] = ""
L1_1[".tif"] = ""
L1_1.tiff = ""
L1_1[".wmf"] = ""
L1_1[".3gp"] = ""
L1_1[".aac"] = ""
L1_1[".asf"] = ""
L1_1[".avi"] = ""
L1_1[".fla"] = ""
L1_1.flac = ""
L1_1[".flv"] = ""
L1_1[".m3u"] = ""
L1_1[".m4v"] = ""
L1_1[".mkv"] = ""
L1_1[".mov"] = ""
L1_1[".mp3"] = ""
L1_1[".mp4"] = ""
L1_1[".mpe"] = ""
L1_1[".mpeg"] = ""
L1_1[".mpg"] = ""
L1_1[".ogg"] = ""
L1_1[".vma"] = ""
L1_1[".wav"] = ""
L1_1[".wmv"] = ""
L1_1[".cpp"] = ""
L1_1[".css"] = ""
L1_1[".csv"] = ""
L1_1[".eml"] = ""
L1_1.gdoc = ""
L1_1[".hta"] = ""
L1_1[".htm"] = ""
L1_1.html = ""
L1_1[".mht"] = ""
L1_1[".pdf"] = ""
L1_1[".php"] = ""
L1_1[".ttf"] = ""
L1_1[".xml"] = ""
L1_1[".cab"] = ""
L1_1.gzip = ""
L1_1[".iso"] = ""
L1_1[".rar"] = ""
L1_1[".tar"] = ""
L1_1[".vhd"] = ""
L1_1["-3ds"] = ""
L1_1.acad = ""
L1_1[".aws"] = ""
L1_1[".dwg"] = ""
L1_1[".dxf"] = ""
L1_1[".fas"] = ""
L1_1[".lsp"] = ""
L1_1[".mnl"] = ""
L1_1[".plf"] = ""
L1_1[".vlx"] = ""
L2_2 = string
L2_2 = L2_2.sub
L2_2 = L2_2(L0_0, -8)
if L1_1[string.sub(L2_2, 1, 4)] then
  mp.set_mpattribute("Lua:ContextLnkDoubleExtension")
end
return mp.CLEAN
