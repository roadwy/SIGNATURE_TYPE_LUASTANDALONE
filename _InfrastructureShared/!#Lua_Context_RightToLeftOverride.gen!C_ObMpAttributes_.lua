local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "Lua:Context/RightToLeftOverride.A!masquerading"
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.get_mpattribute
  L1_1 = "Lua:Context/RightToLeftOverride.B!masquerading"
  L0_0 = L0_0(L1_1)
elseif L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = string
L0_0 = L0_0.lower
L1_1 = mp
L1_1 = L1_1.get_contextdata
L2_2 = mp
L2_2 = L2_2.CONTEXT_DATA_FILENAME
L7_7 = L1_1(L2_2)
L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L1_1(L2_2))
if L0_0 ~= nil then
  L1_1 = #L0_0
  if L1_1 > 5 then
    L1_1 = string
    L1_1 = L1_1.find
    L2_2 = string
    L2_2 = L2_2.sub
    L3_3 = L0_0
    L4_4 = -4
    L2_2 = L2_2(L3_3, L4_4)
    L3_3 = "."
    L4_4 = 1
    L5_5 = true
    L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
    if L1_1 == nil then
      L1_1 = mp
      L1_1 = L1_1.CLEAN
      return L1_1
    end
    L1_1 = string
    L1_1 = L1_1.find
    L2_2 = L0_0
    L3_3 = "\226\128\174"
    L4_4 = 1
    L5_5 = true
    L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
    if L1_1 == nil then
      L1_1 = mp
      L1_1 = L1_1.CLEAN
      return L1_1
    end
    L1_1 = string
    L1_1 = L1_1.sub
    L2_2 = L0_0
    L3_3 = -3
    L1_1 = L1_1(L2_2, L3_3)
    L2_2 = "Lua:Context/RightToLeftOverride.gen!A"
    L3_3 = {}
    L3_3[".7z"] = "Lua:Context/RightToLeftOverride.C"
    L3_3.zip = "Lua:Context/RightToLeftOverride.C"
    L3_3.rar = "Lua:Context/RightToLeftOverride.C"
    L3_3.cmd = "Lua:Context/RightToLeftOverride.D"
    L3_3.bat = "Lua:Context/RightToLeftOverride.D"
    L3_3.vbe = "Lua:Context/RightToLeftOverride.D"
    L3_3.vbs = "Lua:Context/RightToLeftOverride.D"
    L3_3[".js"] = "Lua:Context/RightToLeftOverride.D"
    L3_3.jse = "Lua:Context/RightToLeftOverride.D"
    L3_3.wsh = "Lua:Context/RightToLeftOverride.D"
    L3_3.wsf = "Lua:Context/RightToLeftOverride.D"
    L3_3.ps1 = "Lua:Context/RightToLeftOverride.D"
    L3_3.jar = "Lua:Context/RightToLeftOverride.D"
    L3_3.hta = "Lua:Context/RightToLeftOverride.D"
    L3_3.lnk = "Lua:Context/RightToLeftOverride.D"
    L3_3.exe = "Lua:Context/RightToLeftOverride.E"
    L3_3.scr = "Lua:Context/RightToLeftOverride.E"
    L3_3.com = "Lua:Context/RightToLeftOverride.E"
    L3_3.pif = "Lua:Context/RightToLeftOverride.E"
    L3_3.dav = "Lua:Context/RightToLeftOverride.F"
    L4_4 = L3_3[L1_1]
    if L4_4 == nil then
      L4_4 = mp
      L4_4 = L4_4.CLEAN
      return L4_4
    end
    L2_2 = L3_3[L1_1]
    L5_5 = L0_0
    L4_4 = L0_0.gsub
    L6_6 = " "
    L7_7 = ""
    L4_4 = L4_4(L5_5, L6_6, L7_7)
    L5_5 = string
    L5_5 = L5_5.gsub
    L6_6 = L4_4
    L7_7 = "\226[\128-\129][^\174]"
    L5_5 = L5_5(L6_6, L7_7, L8_8)
    L4_4 = L5_5
    L5_5 = string
    L5_5 = L5_5.gmatch
    L6_6 = L4_4
    L7_7 = "\226\128\174(.[%w%p%s]+)"
    L5_5 = L5_5(L6_6, L7_7)
    L6_6 = {}
    L7_7 = 0
    for L11_11 in L5_5, nil, nil do
      if #L11_11 == 3 then
        L6_6[L11_11] = true
        L7_7 = L7_7 + 1
      elseif #L11_11 > 3 then
        L6_6[string.sub(L11_11, 0, 3)] = true
        L6_6[string.sub(L11_11, 0, 4)] = true
        L7_7 = L7_7 + 2
      end
    end
    if L7_7 == 0 then
      return L8_8
    end
    L8_8.cod = "doc"
    L8_8.xcod = "docx"
    L8_8.slx = "xls"
    L8_8[".slx"] = "xls"
    L8_8.xslx = "xlsx"
    L8_8[".xsl"] = "xlsx"
    L8_8.tpp = "ppt"
    L8_8.xtpp = "pptx"
    L8_8.ftr = "rtf"
    L8_8.fdp = "pdf"
    L8_8.txt = "txt"
    L8_8.ini = "ini"
    L8_8["4pm"] = "mp4"
    L8_8["3pm"] = "mp3"
    L8_8.vaw = "wav"
    L8_8.iva = "avi"
    L8_8.vkm = "mkv"
    L8_8.bvmr = "rmvb"
    L8_8.vmw = "wmv"
    L8_8.vom = "mov"
    L8_8.vlf = "flv"
    L8_8.a4m = "m4a"
    L8_8.gpj = "jpg"
    L8_8.gepj = "jpeg"
    L8_8.gnp = "png"
    L8_8.pmb = "bmp"
    L8_8.fig = "gif"
    L8_8.pg3 = "3gp"
    L8_8.piz = "zip"
    L8_8.rar = "rar"
    L8_8["z7."] = ".7z"
    L8_8.lmth = "html"
    L8_8.mth = "htm"
    L8_8.php = "php"
    L8_8["3php"] = "php"
    L8_8.mhc = "chm"
    for _FORV_12_, _FORV_13_ in L9_9(L10_10) do
      if L8_8[_FORV_12_] ~= nil then
        mp.set_mpattribute(L2_2)
        return mp.INFECTED
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
