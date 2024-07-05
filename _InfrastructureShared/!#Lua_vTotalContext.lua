local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11
L0_0 = string
L0_0 = L0_0.lower
L1_1 = mp
L1_1 = L1_1.GetMachineGUID
L11_11 = L1_1()
L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L1_1())
if L0_0 == nil or L0_0 ~= "15e7fdb4-69ea-447f-90ea-4622da7a88d6" and L0_0 ~= "b2343ede-44a4-4178-bd92-d36186294555" and L0_0 ~= "cafefeed-0000-0c7c-ab00-facebeadface" then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.get_mpattributesubstring
L2_2 = "Heraklez"
L1_1 = L1_1(L2_2)
if not L1_1 then
  L1_1 = mp
  L1_1 = L1_1.get_mpattributesubstring
  L2_2 = "SLF:"
  L1_1 = L1_1(L2_2)
  if not L1_1 then
    L1_1 = mp
    L1_1 = L1_1.get_mpattributesubstring
    L2_2 = "ALF:"
    L1_1 = L1_1(L2_2)
    if not L1_1 then
      L1_1 = mp
      L1_1 = L1_1.get_mpattributesubstring
      L2_2 = "SLFPER:"
      L1_1 = L1_1(L2_2)
      if not L1_1 then
        L1_1 = mp
        L1_1 = L1_1.get_mpattributesubstring
        L2_2 = "ALFPER:"
        L1_1 = L1_1(L2_2)
      end
    end
  end
elseif L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = 256
L2_2 = 67108864
L3_3 = mp
L3_3 = L3_3.getfilesize
L3_3 = L3_3()
if L1_1 > L3_3 or L2_2 < L3_3 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = MpCommon
L4_4 = L4_4.GetCurrentTimeT
L4_4 = L4_4()
L5_5 = mp
L5_5 = L5_5.crc32
L6_6 = L4_4
L7_7 = headerpage
L8_8 = 1
L9_9 = mp
L9_9 = L9_9.HEADERPAGE_SZ
L5_5 = L5_5(L6_6, L7_7, L8_8, L9_9)
L6_6 = mp
L6_6 = L6_6.crc32
L7_7 = L5_5
L8_8 = footerpage
L9_9 = 1
L10_10 = mp
L10_10 = L10_10.FOOTERPAGE_SZ
L6_6 = L6_6(L7_7, L8_8, L9_9, L10_10)
L7_7 = L6_6 % 10000
L8_8 = "Lua:vCtxt"
L9_9 = 5000
L10_10 = "BM_MZ_FILE"
L11_11 = mp
L11_11 = L11_11.get_mpattribute
L11_11 = L11_11(L10_10)
if L11_11 then
  if L7_7 < 2000 then
    L11_11 = mp
    L11_11 = L11_11.set_mpattribute
    L11_11(L8_8 .. L10_10)
    L11_11 = mp
    L11_11 = L11_11.INFECTED
    return L11_11
  end
  if L7_7 < 4000 then
    L11_11 = mp
    L11_11 = L11_11.set_mpattribute
    L11_11(L8_8 .. L10_10 .. "_1")
    L11_11 = mp
    L11_11 = L11_11.INFECTED
    return L11_11
  end
  if L7_7 < 6000 then
    L11_11 = mp
    L11_11 = L11_11.set_mpattribute
    L11_11(L8_8 .. L10_10 .. "_2")
    L11_11 = mp
    L11_11 = L11_11.INFECTED
    return L11_11
  end
  if L7_7 < 8000 then
    L11_11 = mp
    L11_11 = L11_11.set_mpattribute
    L11_11(L8_8 .. L10_10 .. "_3")
    L11_11 = mp
    L11_11 = L11_11.INFECTED
    return L11_11
  end
  L11_11 = mp
  L11_11 = L11_11.set_mpattribute
  L11_11(L8_8 .. L10_10 .. "_4")
  L11_11 = mp
  L11_11 = L11_11.INFECTED
  return L11_11
end
L11_11 = "BM_DEX_FILE"
if mp.get_mpattribute(L11_11) then
  if L7_7 < 2000 then
    mp.set_mpattribute(L8_8 .. L11_11)
    return mp.INFECTED
  end
  if L7_7 < 4000 then
    mp.set_mpattribute(L8_8 .. L11_11 .. "_1")
    return mp.INFECTED
  end
  if L7_7 < 6000 then
    mp.set_mpattribute(L8_8 .. L11_11 .. "_2")
    return mp.INFECTED
  end
  if L7_7 < 8000 then
    mp.set_mpattribute(L8_8 .. L11_11 .. "_3")
    return mp.INFECTED
  end
end
if mp.get_mpattribute("BM_MACHO32_FILE") or mp.get_mpattribute("BM_MACHO64_FILE") or mp.get_mpattribute("BM_DMG_FILE") or mp.get_mpattribute("BM_ELF_FILE") or mp.get_mpattribute("BM_XAR_ARCHIVE_FILE") then
  L11_11 = "BM_MACHO32_FILE"
  if mp.get_mpattribute(L11_11) then
  end
  L11_11 = "BM_MACHO64_FILE"
  L11_11 = "BM_DMG_FILE"
  L11_11 = "BM_ELF_FILE"
  L11_11 = "BM_XAR_ARCHIVE_FILE"
  if L7_7 < 2000 then
    mp.set_mpattribute(L8_8 .. L11_11 .. "_0")
    return mp.INFECTED
  end
  if L7_7 < 4000 then
    mp.set_mpattribute(L8_8 .. L11_11 .. "_1")
    return mp.INFECTED
  end
  if L7_7 < 6000 then
    mp.set_mpattribute(L8_8 .. L11_11 .. "_2")
    return mp.INFECTED
  end
  if L7_7 < 8000 then
    mp.set_mpattribute(L8_8 .. L11_11 .. "_3")
    return mp.INFECTED
  end
  mp.set_mpattribute(L8_8 .. L11_11 .. "_4")
  return mp.INFECTED
end
L9_9 = 1000
if L7_7 < L9_9 or 0 == 1 then
  L11_11 = "SCPT:HTMLFile"
  if mp.get_mpattribute(L11_11) then
    mp.set_mpattribute(L8_8 .. L11_11)
  end
  L11_11 = "Html_file"
  if mp.get_mpattribute(L11_11) then
    mp.set_mpattribute(L8_8 .. L11_11)
  end
  if 1 == 1 then
    return mp.INFECTED
  end
end
L9_9 = 100
if L7_7 < L9_9 or 0 == 1 then
  L11_11 = "SIGATTR:JAVAFile"
  if mp.get_mpattribute(L11_11) then
    mp.set_mpattribute(L8_8 .. L11_11)
  end
  L11_11 = "BM_SMALL_FILE"
  if mp.get_mpattribute(L11_11) then
    mp.set_mpattribute(L8_8 .. L11_11)
  end
  L11_11 = "BM_TIFF_FILE"
  if mp.get_mpattribute(L11_11) then
    mp.set_mpattribute(L8_8 .. L11_11)
  end
  L11_11 = "BM_CAB_FILE"
  if mp.get_mpattribute(L11_11) then
    mp.set_mpattribute(L8_8 .. L11_11)
  end
  L11_11 = "BM_MEDIA_FILE"
  if mp.get_mpattribute(L11_11) then
    mp.set_mpattribute(L8_8 .. L11_11)
  end
  L11_11 = "BM_XML_FILE"
  if mp.get_mpattribute(L11_11) then
    mp.set_mpattribute(L8_8 .. L11_11)
  end
  L11_11 = "BM_UNICODE_FILE"
  if mp.get_mpattribute(L11_11) then
    mp.set_mpattribute(L8_8 .. L11_11)
  end
  L11_11 = "BM_RTF_FILE"
  if mp.get_mpattribute(L11_11) then
    mp.set_mpattribute(L8_8 .. L11_11)
  end
  L11_11 = "BM_OLE_FILE"
  if mp.get_mpattribute(L11_11) then
    mp.set_mpattribute(L8_8 .. L11_11)
  end
  L11_11 = "BM_BMP_FILE"
  if mp.get_mpattribute(L11_11) then
    mp.set_mpattribute(L8_8 .. L11_11)
  end
  L11_11 = "BM_PNG_FILE"
  if mp.get_mpattribute(L11_11) then
    mp.set_mpattribute(L8_8 .. L11_11)
  end
  L11_11 = "BM_JPG_FILE"
  if mp.get_mpattribute(L11_11) then
    mp.set_mpattribute(L8_8 .. L11_11)
  end
  L11_11 = "BM_GIF_FILE"
  if mp.get_mpattribute(L11_11) then
    mp.set_mpattribute(L8_8 .. L11_11)
  end
  L11_11 = "BM_OFFICE_FILE"
  if mp.get_mpattribute(L11_11) then
    mp.set_mpattribute(L8_8 .. L11_11)
  end
  L11_11 = "BM_ZIP_FILE"
  if mp.get_mpattribute(L11_11) then
    mp.set_mpattribute(L8_8 .. L11_11)
  end
  L11_11 = "BM_RAR_FILE"
  if mp.get_mpattribute(L11_11) then
    mp.set_mpattribute(L8_8 .. L11_11)
  end
  L11_11 = "BM_7Z_FILE"
  if mp.get_mpattribute(L11_11) then
    mp.set_mpattribute(L8_8 .. L11_11)
  end
  L11_11 = "BM_CRX_FILE"
  if mp.get_mpattribute(L11_11) then
    mp.set_mpattribute(L8_8 .. L11_11)
  end
  L11_11 = "BM_SWF_FILE"
  if mp.get_mpattribute(L11_11) then
    mp.set_mpattribute(L8_8 .. L11_11)
  end
  L11_11 = "BM_MP3_FILE"
  if mp.get_mpattribute(L11_11) then
    mp.set_mpattribute(L8_8 .. L11_11)
  end
  L11_11 = "BM_PDF_FILE"
  if mp.get_mpattribute(L11_11) then
    mp.set_mpattribute(L8_8 .. L11_11)
  end
  L11_11 = "BM_FLV_FILE"
  if mp.get_mpattribute(L11_11) then
    mp.set_mpattribute(L8_8 .. L11_11)
  end
  L11_11 = "BM_OGG_FILE"
  if mp.get_mpattribute(L11_11) then
    mp.set_mpattribute(L8_8 .. L11_11)
  end
  L11_11 = "BM_FONT_FILE"
  if mp.get_mpattribute(L11_11) then
    mp.set_mpattribute(L8_8 .. L11_11)
  end
  L11_11 = "BM_JOB_FILE"
  if mp.get_mpattribute(L11_11) then
    mp.set_mpattribute(L8_8 .. L11_11)
  end
  L11_11 = "BM_TORRENT_FILE"
  if mp.get_mpattribute(L11_11) then
    mp.set_mpattribute(L8_8 .. L11_11)
  end
  L11_11 = "BM_DEBIAN_PKG_FILE"
  if mp.get_mpattribute(L11_11) then
    mp.set_mpattribute(L8_8 .. L11_11)
  end
  L11_11 = "BM_GZIP_FILE"
  if mp.get_mpattribute(L11_11) then
    mp.set_mpattribute(L8_8 .. L11_11)
  end
  L11_11 = "BM_VBE_FILE"
  if mp.get_mpattribute(L11_11) then
    mp.set_mpattribute(L8_8 .. L11_11)
  end
  L11_11 = "BM_AUTOCAD_FILE"
  if mp.get_mpattribute(L11_11) then
    mp.set_mpattribute(L8_8 .. L11_11)
  end
  L11_11 = "BM_CURSOR_FILE"
  if mp.get_mpattribute(L11_11) then
    mp.set_mpattribute(L8_8 .. L11_11)
  end
  L11_11 = "BM_SYMBIAN_FILE"
  if mp.get_mpattribute(L11_11) then
    mp.set_mpattribute(L8_8 .. L11_11)
  end
  L11_11 = "BM_LNK_FILE"
  if mp.get_mpattribute(L11_11) then
    mp.set_mpattribute(L8_8 .. L11_11)
  end
  L11_11 = "BM_PHOTOSHOP_IMG_FILE"
  if mp.get_mpattribute(L11_11) then
    mp.set_mpattribute(L8_8 .. L11_11)
  end
  L11_11 = "BM_HANGUL_WORD_FILE"
  if mp.get_mpattribute(L11_11) then
    mp.set_mpattribute(L8_8 .. L11_11)
  end
  L11_11 = "BM_WARCRAFT_MAP_FILE"
  if mp.get_mpattribute(L11_11) then
    mp.set_mpattribute(L8_8 .. L11_11)
  end
  L11_11 = "BM_DLM_FILE"
  if mp.get_mpattribute(L11_11) then
    mp.set_mpattribute(L8_8 .. L11_11)
  end
  L11_11 = "BM_SQLlite_FILE"
  if mp.get_mpattribute(L11_11) then
    mp.set_mpattribute(L8_8 .. L11_11)
  end
  L11_11 = "BM_WMF_FILE"
  if mp.get_mpattribute(L11_11) then
    mp.set_mpattribute(L8_8 .. L11_11)
  end
  L11_11 = "BM_PNF_FILE"
  if mp.get_mpattribute(L11_11) then
    mp.set_mpattribute(L8_8 .. L11_11)
  end
  L11_11 = "BM_JDIFF_FILE"
  if mp.get_mpattribute(L11_11) then
    mp.set_mpattribute(L8_8 .. L11_11)
  end
  L11_11 = "BM_LHA_FILE"
  if mp.get_mpattribute(L11_11) then
    mp.set_mpattribute(L8_8 .. L11_11)
  end
  L11_11 = "BM_SDB_FILE"
  if mp.get_mpattribute(L11_11) then
    mp.set_mpattribute(L8_8 .. L11_11)
  end
  L11_11 = "BM_TEXT_FILE"
  if mp.get_mpattribute(L11_11) then
    mp.set_mpattribute(L8_8 .. L11_11)
  end
  L11_11 = "BM_UNKNOWN_FILE"
  if mp.get_mpattribute(L11_11) then
    mp.set_mpattribute(L8_8 .. L11_11)
  end
  if 1 == 1 then
    return mp.INFECTED
  end
end
if mp.get_mpattribute("Nscript:Type_js") or mp.get_mpattribute("Nscript:Type_vbs") or mp.get_mpattribute("Nscript:Type_bat") or mp.get_mpattribute("Nscript:Type_irc") or mp.get_mpattribute("Nscript:Type_ps") then
  L8_8 = "Lua:vCtxt"
  if mp.get_mpattribute("RPF:TopLevelFile") then
    L9_9 = 7500
  end
  if not mp.get_mpattribute("RPF:TopLevelFile") then
    L9_9 = 20
  end
  if 1 == 1 then
    L7_7 = L7_7 % 4
    L11_11 = "Nscript:Type_js"
    if mp.get_mpattribute(L11_11) then
      mp.set_mpattribute(L8_8 .. L11_11 .. L7_7)
    end
    L11_11 = "Nscript:Type_vbs"
    if mp.get_mpattribute(L11_11) then
      mp.set_mpattribute(L8_8 .. L11_11 .. L7_7)
    end
    L11_11 = "Nscript:Type_ps"
    if mp.get_mpattribute(L11_11) then
      mp.set_mpattribute(L8_8 .. L11_11 .. L7_7)
    end
    L11_11 = "Nscript:Type_bat"
    if mp.get_mpattribute(L11_11) then
      mp.set_mpattribute(L8_8 .. L11_11 .. L7_7)
    end
    L11_11 = "Nscript:Type_irc"
    if mp.get_mpattribute(L11_11) then
      mp.set_mpattribute(L8_8 .. L11_11 .. L7_7)
    end
    if 1 == 1 then
      return mp.INFECTED
    end
  end
end
return mp.CLEAN
