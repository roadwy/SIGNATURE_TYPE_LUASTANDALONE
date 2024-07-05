local L0_0
L0_0 = string
L0_0 = L0_0.lower
L0_0 = L0_0(mp.getfilename():sub(-9))
if L0_0:sub(-4, -4) ~= "." then
  return mp.CLEAN
end
if L0_0:sub(-8, -8) ~= "." then
  if L0_0:sub(-9, -9) ~= "." then
    return mp.CLEAN
  end
else
end
if ({
  exe = "",
  scr = "",
  cpl = "",
  cmd = "",
  bat = "",
  pif = ""
})[L0_0:sub(-3)] then
  if ({
    ["doc"] = "",
    ["docm"] = "",
    ["docx"] = "",
    ["dot"] = "",
    ["dotm"] = "",
    ["dotx"] = "",
    ["odt"] = "",
    ["rtf"] = "",
    ["ods"] = "",
    ["xla"] = "",
    ["xls"] = "",
    ["xlam"] = "",
    ["xlsb"] = "",
    ["xlsm"] = "",
    ["xlsx"] = "",
    ["xlt"] = "",
    ["xltm"] = "",
    ["xltx"] = "",
    ["odp"] = "",
    ["pot"] = "",
    ["potm"] = "",
    ["potx"] = "",
    ["ppa"] = "",
    ["ppam"] = "",
    ["pps"] = "",
    ["ppsm"] = "",
    ["ppsx"] = "",
    ["ppt"] = "",
    ["pptm"] = "",
    ["pptx"] = "",
    ["ani"] = "",
    ["bmp"] = "",
    ["cur"] = "",
    ["emf"] = "",
    ["gif"] = "",
    ["ico"] = "",
    ["jpeg"] = "",
    ["jpg"] = "",
    ["png"] = "",
    ["raw"] = "",
    ["tif"] = "",
    ["tiff"] = "",
    ["wmf"] = "",
    ["3gp"] = "",
    ["aac"] = "",
    ["asf"] = "",
    ["avi"] = "",
    ["fla"] = "",
    ["flac"] = "",
    ["flv"] = "",
    ["m3u"] = "",
    ["m4v"] = "",
    ["mkv"] = "",
    ["mov"] = "",
    ["mp3"] = "",
    ["mp4"] = "",
    ["mpe"] = "",
    ["mpeg"] = "",
    ["mpg"] = "",
    ["ogg"] = "",
    ["vma"] = "",
    ["wav"] = "",
    ["wmv"] = "",
    ["cpp"] = "",
    ["css"] = "",
    ["csv"] = "",
    ["eml"] = "",
    ["gdoc"] = "",
    ["hta"] = "",
    ["htm"] = "",
    ["html"] = "",
    ["mht"] = "",
    ["pdf"] = "",
    ["php"] = "",
    ["ttf"] = "",
    ["txt"] = "",
    ["xml"] = "",
    ["cab"] = "",
    ["gzip"] = "",
    ["iso"] = "",
    ["rar"] = "",
    ["tar"] = "",
    ["vhd"] = "",
    ["zip"] = "",
    ["3ds"] = "",
    ["acad"] = "",
    ["aws"] = "",
    ["dwg"] = "",
    ["dxf"] = "",
    ["fas"] = "",
    ["lsp"] = "",
    ["mnl"] = "",
    ["plf"] = "",
    ["vlx"] = ""
  })[L0_0:sub(-3 - 4, -5)] then
    return mp.INFECTED
  end
end
return mp.CLEAN
