local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10
L0_0 = mp
L0_0 = L0_0.getfilename
L0_0 = L0_0()
L1_1 = string
L1_1 = L1_1.lower
L2_2 = string
L2_2 = L2_2.sub
L3_3 = L0_0
L4_4 = -4
L10_10 = L2_2(L3_3, L4_4)
L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L2_2(L3_3, L4_4))
L2_2 = false
L3_3 = false
L4_4 = 0
L5_5 = {}
L5_5[".bat"] = ""
L5_5[".cmd"] = ""
L5_5[".com"] = ""
L5_5[".cpl"] = ""
L5_5[".exe"] = ""
L5_5[".htt"] = ""
L5_5[".jar"] = ""
L5_5[".pif"] = ""
L5_5[".ps1"] = ""
L5_5[".scr"] = ""
L5_5[".vbs"] = ""
L6_6 = L5_5[L1_1]
if L6_6 then
  L6_6 = string
  L6_6 = L6_6.reverse
  L10_10 = 0
  L10_10 = L8_8(L9_9, L10_10, string.len(L0_0) - 4)
  L10_10 = L7_7(L8_8, L9_9, L10_10, L8_8(L9_9, L10_10, string.len(L0_0) - 4))
  L6_6 = L6_6(L7_7, L8_8, L9_9, L10_10, L7_7(L8_8, L9_9, L10_10, L8_8(L9_9, L10_10, string.len(L0_0) - 4)))
  for L10_10 in L7_7(L8_8, L9_9) do
    L4_4 = L4_4 + 1
    if string.len(L10_10) >= 2 then
      if ({
        exe = "",
        txt = "",
        rcs = "",
        scr = "",
        fdp = "",
        pdf = "",
        gnp = "",
        png = "",
        gpj = "",
        jpg = "",
        ftr = "",
        rtf = "",
        tpp = "",
        ppt = "",
        piz = "",
        zip = "",
        slx = "",
        xls = ""
      })[L10_10] and string.find(string.lower(L0_0), string.reverse(L10_10), 1, true) ~= 3 then
        L3_3 = true
      end
      if L1_1 == ".exe" and (L10_10 == "dmc" or L10_10 == "sw" or L10_10 == "piz" or L10_10 == "rar" or L10_10 == "txt" or L10_10 == "exe" and string.find(L6_6, "tcestoob", 1, true) ~= nil) or L1_1 == ".jar" and L10_10 == "sj" or L4_4 == 1 and ({
        bac = "",
        cab = "",
        pizg = "",
        gzip = "",
        osi = "",
        iso = "",
        rat = "",
        tar = "",
        dhv = "",
        vhd = "",
        piz = "",
        zip = "",
        mhc = "",
        chm = ""
      })[L10_10] ~= nil or ({
        ["cod"] = "",
        ["doc"] = "",
        ["mcod"] = "",
        ["docm"] = "",
        ["xcod"] = "",
        ["docx"] = "",
        ["tod"] = "",
        ["dot"] = "",
        ["mtod"] = "",
        ["dotm"] = "",
        ["xtod"] = "",
        ["dotx"] = "",
        ["tdo"] = "",
        ["odt"] = "",
        ["ftr"] = "",
        ["rtf"] = "",
        ["sdo"] = "",
        ["ods"] = "",
        ["alx"] = "",
        ["xla"] = "",
        ["slx"] = "",
        ["xls"] = "",
        ["malx"] = "",
        ["xlam"] = "",
        ["bslx"] = "",
        ["xlsb"] = "",
        ["mslx"] = "",
        ["xlsm"] = "",
        ["xslx"] = "",
        ["xlsx"] = "",
        ["tlx"] = "",
        ["xlt"] = "",
        ["mtlx"] = "",
        ["xltm"] = "",
        ["xtlx"] = "",
        ["xltx"] = "",
        ["pdo"] = "",
        ["odp"] = "",
        ["top"] = "",
        ["pot"] = "",
        ["mtop"] = "",
        ["potm"] = "",
        ["xtop"] = "",
        ["potx"] = "",
        ["app"] = "",
        ["ppa"] = "",
        ["mapp"] = "",
        ["ppam"] = "",
        ["spp"] = "",
        ["pps"] = "",
        ["mspp"] = "",
        ["ppsm"] = "",
        ["xspp"] = "",
        ["ppsx"] = "",
        ["tpp"] = "",
        ["ppt"] = "",
        ["mtpp"] = "",
        ["pptm"] = "",
        ["xtpp"] = "",
        ["pptx"] = "",
        ["ina"] = "",
        ["ani"] = "",
        ["pmb"] = "",
        ["bmp"] = "",
        ["ruc"] = "",
        ["cur"] = "",
        ["fme"] = "",
        ["emf"] = "",
        ["fig"] = "",
        ["gif"] = "",
        ["oci"] = "",
        ["ico"] = "",
        ["gepj"] = "",
        ["jpeg"] = "",
        ["gpj"] = "",
        ["jpg"] = "",
        ["gnp"] = "",
        ["png"] = "",
        ["war"] = "",
        ["raw"] = "",
        ["fit"] = "",
        ["tif"] = "",
        ["ffit"] = "",
        ["tiff"] = "",
        ["fmw"] = "",
        ["wmf"] = "",
        ["fifj"] = "",
        ["jfif"] = "",
        ["pg3"] = "",
        ["3gp"] = "",
        ["caa"] = "",
        ["aac"] = "",
        ["fsa"] = "",
        ["asf"] = "",
        ["iva"] = "",
        ["avi"] = "",
        ["alf"] = "",
        ["fla"] = "",
        ["calf"] = "",
        ["flac"] = "",
        ["vlf"] = "",
        ["flv"] = "",
        ["u3m"] = "",
        ["m3u"] = "",
        ["v4m"] = "",
        ["m4v"] = "",
        ["vkm"] = "",
        ["mkv"] = "",
        ["vom"] = "",
        ["mov"] = "",
        ["3pm"] = "",
        ["mp3"] = "",
        ["4pm"] = "",
        ["mp4"] = "",
        ["epm"] = "",
        ["mpe"] = "",
        ["gepm"] = "",
        ["mpeg"] = "",
        ["gpm"] = "",
        ["mpg"] = "",
        ["ggo"] = "",
        ["ogg"] = "",
        ["amv"] = "",
        ["vma"] = "",
        ["vaw"] = "",
        ["wav"] = "",
        ["vmw"] = "",
        ["wmv"] = "",
        ["txt"] = "",
        ["ppc"] = "",
        ["cpp"] = "",
        ["ssc"] = "",
        ["css"] = "",
        ["vsc"] = "",
        ["csv"] = "",
        ["lme"] = "",
        ["eml"] = "",
        ["codg"] = "",
        ["gdoc"] = "",
        ["ath"] = "",
        ["hta"] = "",
        ["mth"] = "",
        ["htm"] = "",
        ["lmth"] = "",
        ["html"] = "",
        ["thm"] = "",
        ["mht"] = "",
        ["fdp"] = "",
        ["pdf"] = "",
        ["ftt"] = "",
        ["ttf"] = "",
        ["sd3"] = "",
        ["3ds"] = "",
        ["swa"] = "",
        ["aws"] = "",
        ["gwd"] = "",
        ["dwg"] = "",
        ["fxd"] = "",
        ["dxf"] = "",
        ["saf"] = "",
        ["fas"] = "",
        ["1sp"] = "",
        ["ps1"] = "",
        ["lnm"] = "",
        ["mln"] = "",
        ["flp"] = "",
        ["plf"] = "",
        ["xlv"] = "",
        ["vlx"] = ""
      })[L10_10] ~= nil or ({
        ["exe"] = "",
        ["tab"] = "",
        ["bat"] = "",
        ["dmc"] = "",
        ["cmd"] = "",
        ["moc"] = "",
        ["com"] = "",
        ["lpc"] = "",
        ["cpl"] = "",
        ["tth"] = "",
        ["htt"] = "",
        ["raj"] = "",
        ["jar"] = "",
        ["fip"] = "",
        ["pif"] = "",
        ["1sp"] = "",
        ["ps1"] = "",
        ["rcs"] = "",
        ["scr"] = "",
        ["sbv"] = "",
        ["vbs"] = "",
        ["lld"] = "",
        ["dll"] = ""
      })[L10_10] ~= nil then
        L2_2 = true
      end
      break
    end
  end
  if L2_2 then
    L7_7["zip.exe"] = ""
    L7_7["gzip.exe"] = ""
    L4_4 = L8_8
    while L4_4 > 0 do
      L10_10 = L4_4
      if L8_8 ~= 92 then
        L4_4 = L4_4 - 1
      end
    end
    if L4_4 > 0 then
      L4_4 = L4_4 + 1
    end
    L10_10 = L4_4
    L10_10 = L8_8
    if L9_9 then
      return L9_9
    end
    if L3_3 then
      L10_10 = "Lua:SuspiciousStackedExtensionsSensor.B"
      L9_9(L10_10)
      return L9_9
    else
      L10_10 = mp
      L10_10 = L10_10.CONTEXT_DATA_SCANREASON
      L10_10 = mp
      L10_10 = L10_10.SCANREASON_ONOPEN
      if L9_9 ~= L10_10 then
        L10_10 = mp
        L10_10 = L10_10.SCANREASON_ONMODIFIEDHANDLECLOSE
      elseif L9_9 == L10_10 then
        L10_10 = mp
        L10_10 = L10_10.get_contextdata
        L10_10 = L10_10(mp.CONTEXT_DATA_NEWLYCREATEDHINT)
        if L10_10 == true then
          L10_10 = mp
          L10_10 = L10_10.INFECTED
          return L10_10
        end
      end
    end
  end
end
L6_6 = mp
L6_6 = L6_6.CLEAN
return L6_6
