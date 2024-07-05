local L1_0
function L1_0(A0_1)
  local L1_2, L2_3, L3_4, L4_5, L5_6
  L1_2 = {}
  L1_2[".au"] = "Bin"
  L1_2[".ax"] = "Bin"
  L1_2[".js"] = "Script"
  L1_2[".7z"] = "Archive"
  L2_3 = {}
  L2_3.exe = "Bin"
  L2_3.com = "Bin"
  L2_3.scr = "Bin"
  L2_3.cpl = "Bin"
  L2_3.dll = "Bin"
  L2_3.ocx = "Bin"
  L2_3.msi = "Bin"
  L2_3.sys = "Bin"
  L2_3.bin = "Bin"
  L2_3.fon = "Bin"
  L2_3.drv = "Bin"
  L2_3.app = "Bin"
  L2_3.apl = "Bin"
  L2_3.bat = "Script"
  L2_3.cmd = "Script"
  L2_3.vbs = "Script"
  L2_3.reg = "Script"
  L2_3.shs = "Script"
  L2_3[".vb"] = "Script"
  L2_3.vbe = "Script"
  L2_3.wsc = "Script"
  L2_3.wsf = "Script"
  L2_3.wsh = "Script"
  L2_3.asm = "Script"
  L2_3.ini = "Script"
  L2_3.pif = "Script"
  L2_3.htm = "Script"
  L2_3.chm = "Script"
  L2_3.msp = "Script"
  L2_3.tlb = "Script"
  L2_3.asp = "Script"
  L2_3.msc = "Script"
  L2_3.api = "Script"
  L2_3.rar = "Archive"
  L2_3.zip = "Archive"
  L2_3.cab = "Archive"
  L2_3.tar = "Archive"
  L2_3.jar = "Archive"
  L2_3.doc = "Office"
  L2_3.xls = "Office"
  L2_3.ppt = "Office"
  L3_4 = {}
  L3_4.docm = "Office"
  L3_4.xlsm = "Office"
  L3_4.pptm = "Office"
  L3_4.docx = "Office"
  L3_4.xlsx = "Office"
  L3_4.pptx = "Office"
  L3_4.html = "Script"
  L3_4.aspx = "Script"
  L3_4.bzip = "Archive"
  if A0_1 ~= nil then
    L4_5 = string
    L4_5 = L4_5.len
    L5_6 = A0_1
    L4_5 = L4_5(L5_6)
  elseif L4_5 < 4 then
    L4_5 = nil
    return L4_5
  end
  L4_5 = string
  L4_5 = L4_5.lower
  L5_6 = A0_1
  L4_5 = L4_5(L5_6)
  L5_6 = string
  L5_6 = L5_6.match
  L5_6 = L5_6(L4_5, "%.(%l+)$")
  if L5_6 == nil then
    return nil
  end
  if string.len(L5_6) == 2 then
  elseif string.len(L5_6) == 3 then
  else
  end
  return L3_4[L5_6]
end
GetSuspiciuousFileType = L1_0
