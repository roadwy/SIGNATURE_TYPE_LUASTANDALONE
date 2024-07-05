local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = "cab rtf doc chm hlp ttf pdf fb2 xls ppt mdb cda wav wma mp3 avi mpg mdv flv swf wmv vob bmp gif jpg png iso mdf mds bin dat nrg 3gp ogg vob exe dll"
L1_1 = bm
L1_1 = L1_1.get_imagepath
L1_1 = L1_1()
L2_2 = string
L2_2 = L2_2.match
L3_3 = string
L3_3 = L3_3.lower
L4_4 = L1_1
L3_3 = L3_3(L4_4)
L4_4 = "\\([^\\]+)%.%l%l%l"
L2_2 = L2_2(L3_3, L4_4)
L3_3 = string
L3_3 = L3_3.match
L4_4 = string
L4_4 = L4_4.lower
L5_5 = this_sigattrlog
L5_5 = L5_5[1]
L5_5 = L5_5.utf8p1
L4_4 = L4_4(L5_5)
L5_5 = "(.+\\)[^\\]+%.(%l%l%l)"
L4_4 = L3_3(L4_4, L5_5)
L5_5 = string
L5_5 = L5_5.match
L5_5 = L5_5(string.lower(this_sigattrlog[3].utf8p1), "(.+\\)([^\\]+)%.rtf")
if L2_2 ~= nil and L3_3 ~= nil and L4_4 ~= nil and L5_5 ~= nil and L5_5(string.lower(this_sigattrlog[3].utf8p1), "(.+\\)([^\\]+)%.rtf") ~= nil and L2_2 == L5_5(string.lower(this_sigattrlog[3].utf8p1), "(.+\\)([^\\]+)%.rtf") and string.find(L0_0, L4_4, 1, true) and string.find(L3_3, "\\temp\\", 1, true) and string.find(L5_5, "\\temp\\", 1, true) then
  mp.ReportLowfi(mp.ContextualExpandEnvironmentVariables(L1_1), 1079587454)
  return mp.INFECTED
end
return mp.CLEAN
