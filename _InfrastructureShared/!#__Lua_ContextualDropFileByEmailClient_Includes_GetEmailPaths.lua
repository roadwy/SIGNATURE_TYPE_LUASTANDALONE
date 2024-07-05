local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16
function L0_0(A0_17)
  local L1_18, L2_19, L3_20, L4_21, L5_22, L6_23, L7_24, L8_25, L9_26, L10_27, L11_28, L12_29, L13_30, L14_31, L15_32, L16_33, L17_34, L18_35, L19_36, L20_37, L21_38, L22_39, L23_40, L24_41, L25_42, L26_43, L27_44
  L1_18 = mp
  L1_18 = L1_18.readprotection
  L2_19 = false
  L1_18(L2_19)
  L1_18 = mp
  L1_18 = L1_18.readfile
  L2_19 = 32768
  L3_20 = 16
  L1_18 = L1_18(L2_19, L3_20)
  L3_20 = L1_18
  L2_19 = L1_18.find
  L4_21 = "\001CD001\001"
  L5_22 = 1
  L6_23 = true
  L2_19 = L2_19(L3_20, L4_21, L5_22, L6_23)
  if L2_19 ~= 1 then
    L2_19 = mp
    L2_19 = L2_19.CLEAN
    return L2_19
  end
  L2_19 = mp
  L2_19 = L2_19.readu_u32
  L3_20 = mp
  L3_20 = L3_20.readfile
  L4_21 = 32926
  L5_22 = 4
  L3_20 = L3_20(L4_21, L5_22)
  L4_21 = 1
  L2_19 = L2_19(L3_20, L4_21)
  L3_20 = L2_19 * 2048
  L4_21 = A0_17 - 4
  if L3_20 > L4_21 then
    L4_21 = mp
    L4_21 = L4_21.CLEAN
    return L4_21
  end
  L4_21 = mp
  L4_21 = L4_21.readfile
  L5_22 = L3_20
  L6_23 = 4
  L4_21 = L4_21(L5_22, L6_23)
  L5_22 = string
  L5_22 = L5_22.byte
  L6_23 = L4_21
  L7_24 = 1
  L5_22 = L5_22(L6_23, L7_24)
  L6_23 = L3_20 + L5_22
  L7_24 = A0_17 - 4
  if L6_23 > L7_24 then
    L6_23 = mp
    L6_23 = L6_23.CLEAN
    return L6_23
  end
  L6_23 = mp
  L6_23 = L6_23.readfile
  L7_24 = L3_20 + L5_22
  L8_25 = 4
  L6_23 = L6_23(L7_24, L8_25)
  L7_24 = string
  L7_24 = L7_24.byte
  L8_25 = L6_23
  L9_26 = 1
  L7_24 = L7_24(L8_25, L9_26)
  L8_25 = L3_20 + L5_22
  L8_25 = L8_25 + L7_24
  L9_26 = A0_17 - 4
  if L8_25 > L9_26 then
    L8_25 = mp
    L8_25 = L8_25.CLEAN
    return L8_25
  end
  L8_25 = mp
  L8_25 = L8_25.readfile
  L9_26 = L3_20 + L5_22
  L9_26 = L9_26 + L7_24
  L10_27 = 4
  L8_25 = L8_25(L9_26, L10_27)
  L9_26 = string
  L9_26 = L9_26.byte
  L10_27 = L8_25
  L11_28 = 1
  L9_26 = L9_26(L10_27, L11_28)
  L10_27 = L3_20 + L5_22
  L10_27 = L10_27 + L7_24
  L10_27 = L10_27 + L9_26
  L11_28 = A0_17 - 4
  if L10_27 > L11_28 then
    L10_27 = mp
    L10_27 = L10_27.CLEAN
    return L10_27
  end
  L10_27 = mp
  L10_27 = L10_27.readfile
  L11_28 = L3_20 + L5_22
  L11_28 = L11_28 + L7_24
  L11_28 = L11_28 + L9_26
  L12_29 = 4
  L10_27 = L10_27(L11_28, L12_29)
  L11_28 = string
  L11_28 = L11_28.byte
  L12_29 = L10_27
  L13_30 = 1
  L11_28 = L11_28(L12_29, L13_30)
  if L11_28 ~= 0 then
    L12_29 = mp
    L12_29 = L12_29.CLEAN
    return L12_29
  end
  L12_29 = L9_26 * 2048
  L13_30 = A0_17 - 4
  if L12_29 > L13_30 then
    L13_30 = mp
    L13_30 = L13_30.CLEAN
    return L13_30
  end
  L13_30 = mp
  L13_30 = L13_30.readfile
  L14_31 = L12_29
  L15_32 = 4
  L13_30 = L13_30(L14_31, L15_32)
  L14_31 = string
  L14_31 = L14_31.byte
  L15_32 = L13_30
  L16_33 = 1
  L14_31 = L14_31(L15_32, L16_33)
  if L14_31 == 34 then
    L15_32 = mp
    L15_32 = L15_32.CLEAN
    return L15_32
  end
  L15_32 = L12_29 + L14_31
  L16_33 = A0_17 - 4
  if L15_32 > L16_33 then
    L15_32 = mp
    L15_32 = L15_32.CLEAN
    return L15_32
  end
  L15_32 = mp
  L15_32 = L15_32.readfile
  L16_33 = L12_29 + L14_31
  L17_34 = 4
  L15_32 = L15_32(L16_33, L17_34)
  L16_33 = string
  L16_33 = L16_33.byte
  L17_34 = L15_32
  L18_35 = 1
  L16_33 = L16_33(L17_34, L18_35)
  if L14_31 == L16_33 then
    L17_34 = mp
    L17_34 = L17_34.CLEAN
    return L17_34
  end
  L17_34 = L3_20 + L5_22
  L17_34 = L17_34 + L7_24
  L17_34 = L17_34 + 32
  L18_35 = A0_17 - 4
  if L17_34 > L18_35 then
    L17_34 = mp
    L17_34 = L17_34.CLEAN
    return L17_34
  end
  L17_34 = mp
  L17_34 = L17_34.readfile
  L18_35 = L3_20 + L5_22
  L18_35 = L18_35 + L7_24
  L18_35 = L18_35 + 32
  L19_36 = 4
  L17_34 = L17_34(L18_35, L19_36)
  L18_35 = string
  L18_35 = L18_35.byte
  L19_36 = L17_34
  L20_37 = 1
  L18_35 = L18_35(L19_36, L20_37)
  if L18_35 < 3 or L18_35 > 255 then
    L19_36 = mp
    L19_36 = L19_36.CLEAN
    return L19_36
  end
  L19_36 = L3_20 + L5_22
  L19_36 = L19_36 + L7_24
  L19_36 = L19_36 + 33
  if A0_17 < L19_36 then
    L19_36 = mp
    L19_36 = L19_36.CLEAN
    return L19_36
  end
  L19_36 = mp
  L19_36 = L19_36.readfile
  L20_37 = L3_20 + L5_22
  L20_37 = L20_37 + L7_24
  L20_37 = L20_37 + 33
  L21_38 = L18_35
  L19_36 = L19_36(L20_37, L21_38)
  L20_37 = string
  L20_37 = L20_37.gsub
  L21_38 = L19_36
  L22_39 = ";1"
  L23_40 = ""
  L24_41 = 1
  L20_37 = L20_37(L21_38, L22_39, L23_40, L24_41)
  L19_36 = L20_37
  L20_37 = ""
  L21_38 = ""
  if L18_35 > 4 then
    L22_39 = string
    L22_39 = L22_39.lower
    L23_40 = string
    L23_40 = L23_40.sub
    L24_41 = L19_36
    L25_42 = -4
    L27_44 = L23_40(L24_41, L25_42)
    L22_39 = L22_39(L23_40, L24_41, L25_42, L26_43, L27_44, L23_40(L24_41, L25_42))
    L20_37 = L22_39
  end
  if L18_35 > 3 then
    L22_39 = string
    L22_39 = L22_39.lower
    L23_40 = string
    L23_40 = L23_40.sub
    L24_41 = L19_36
    L25_42 = -3
    L27_44 = L23_40(L24_41, L25_42)
    L22_39 = L22_39(L23_40, L24_41, L25_42, L26_43, L27_44, L23_40(L24_41, L25_42))
    L21_38 = L22_39
  end
  L22_39 = {}
  L22_39[".vbs"] = "VBS"
  L22_39[".lnk"] = "LNK"
  L22_39[".wsf"] = "WSF"
  L22_39[".vbe"] = "VBE"
  L22_39[".jse"] = "JSE"
  L22_39[".hta"] = "HTA"
  L22_39[".exe"] = "EXE"
  L22_39[".dll"] = "DLL"
  L22_39[".com"] = "COM"
  L22_39[".scr"] = "SCR"
  L22_39[".pif"] = "PIF"
  L22_39[".ps1"] = "PS"
  L22_39[".bat"] = "BAT"
  L22_39[".js"] = "JS"
  L23_40 = L22_39[L20_37]
  L24_41 = L22_39[L21_38]
  L25_42 = {}
  L25_42[".zip"] = "ZIP"
  L25_42[".rar"] = "RAR"
  L25_42[".ace"] = "ACE"
  L25_42[".iso"] = "ISO"
  L25_42[".arj"] = "ARJ"
  L25_42[".7z"] = "7Z"
  L25_42[".gz"] = "GZIP"
  L26_43 = L25_42[L20_37]
  L27_44 = L25_42[L21_38]
  if L23_40 ~= nil then
    mp.set_mpattribute("Lua:SingleExecExtensionInISOFromEmail")
    mp.set_mpattribute("Lua:Single" .. L23_40 .. "InISOFromEmail")
  elseif L24_41 ~= nil then
    mp.set_mpattribute("Lua:SingleExecExtensionInISOFromEmail")
    mp.set_mpattribute("Lua:Single" .. L24_41 .. "InISOFromEmail")
  elseif L26_43 ~= nil then
    mp.set_mpattribute("Lua:SingleArchiveExtensionInISOFromEmail")
    mp.set_mpattribute("Lua:Single" .. L26_43 .. "InISOFromEmail")
  elseif L27_44 ~= nil then
    mp.set_mpattribute("Lua:SingleArchiveExtensionInISOFromEmail")
    mp.set_mpattribute("Lua:Single" .. L27_44 .. "InISOFromEmail")
  end
end
ParseISOHeader = L0_0
L0_0 = mp
L0_0 = L0_0.get_mpattribute
L1_1 = "Lua:ISOExt"
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.get_mpattribute
  L1_1 = "Lua:ISOFileFound"
  L0_0 = L0_0(L1_1)
  if not L0_0 then
    L0_0 = mp
    L0_0 = L0_0.get_mpattribute
    L1_1 = "Lua:LNKinISOFound"
    L0_0 = L0_0(L1_1)
    if not L0_0 then
      L0_0 = mp
      L0_0 = L0_0.get_mpattribute
      L1_1 = "BM_ISO_FILE"
      L0_0 = L0_0(L1_1)
    end
  end
end
L1_1 = mp
L1_1 = L1_1.get_mpattribute
L2_2 = "Lua:SingleSuspiciousExtensionInZip"
L1_1 = L1_1(L2_2)
L2_2 = mp
L2_2 = L2_2.get_mpattribute
L3_3 = "Lua:RarHasFileWithExeExtension"
L2_2 = L2_2(L3_3)
L3_3 = mp
L3_3 = L3_3.get_mpattribute
L4_4 = "Lua:SingleSuspiciousExtensionIn7z"
L3_3 = L3_3(L4_4)
L4_4 = mp
L4_4 = L4_4.get_mpattribute
L5_5 = "Lua:SingleSuspiciousExtensionInACE"
L4_4 = L4_4(L5_5)
L5_5 = mp
L5_5 = L5_5.get_mpattribute
L6_6 = "BM_PDF_FILE"
L5_5 = L5_5(L6_6)
L6_6 = mp
L6_6 = L6_6.get_mpattribute
L7_7 = "Lua:JARExt"
L6_6 = L6_6(L7_7)
L7_7 = mp
L7_7 = L7_7.get_mpattribute
L8_8 = "MHSTR:MacroInside"
L7_7 = L7_7(L8_8)
L8_8 = mp
L8_8 = L8_8.getfilesize
L8_8 = L8_8()
if L8_8 <= 4194304 and (L1_1 or L2_2 or L3_3 or L4_4) or L8_8 <= 2097152 and L0_0 or L8_8 >= 307200 and L8_8 <= 1048576 and L6_6 or L8_8 <= 820000 and L5_5 or L7_7 then
  L9_9 = mp
  L9_9 = L9_9.SCANREASON_ONMODIFIEDHANDLECLOSE
  L10_10 = mp
  L10_10 = L10_10.get_contextdata
  L11_11 = mp
  L11_11 = L11_11.CONTEXT_DATA_SCANREASON
  L10_10 = L10_10(L11_11)
  if L9_9 == L10_10 then
    L9_9 = mp
    L9_9 = L9_9.get_contextdata
    L10_10 = mp
    L10_10 = L10_10.CONTEXT_DATA_NEWLYCREATEDHINT
    L9_9 = L9_9(L10_10)
    if L9_9 == true then
      L9_9 = string
      L9_9 = L9_9.lower
      L10_10 = mp
      L10_10 = L10_10.get_contextdata
      L11_11 = mp
      L11_11 = L11_11.CONTEXT_DATA_PROCESSNAME
      L16_16 = L10_10(L11_11)
      L9_9 = L9_9(L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L10_10(L11_11))
      L10_10 = string
      L10_10 = L10_10.lower
      L11_11 = mp
      L11_11 = L11_11.get_contextdata
      L16_16 = L11_11(L12_12)
      L10_10 = L10_10(L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L11_11(L12_12))
      L11_11 = getCachePaths
      L11_11 = L11_11(L12_12)
      if L11_11 ~= nil then
        for L15_15, L16_16 in L12_12(L13_13) do
          if L10_10:find(L16_16, 1, true) ~= nil then
            if L1_1 == true or L2_2 == true or L3_3 == true or L4_4 == true then
              mp.set_mpattribute("MpForceScanArchives")
            end
            if L6_6 == true then
              mp.set_mpattribute("Lua:ContextJarFromEmailClient")
            end
            if L0_0 == true then
              ParseISOHeader(L8_8)
            end
            return mp.INFECTED
          end
        end
      end
    end
  end
end
L9_9 = mp
L9_9 = L9_9.CLEAN
return L9_9
