local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
if L0_0 == L1_1 then
  L1_1 = mp
  L1_1 = L1_1.get_contextdata
  L2_2 = mp
  L2_2 = L2_2.CONTEXT_DATA_NEWLYCREATEDHINT
  L1_1 = L1_1(L2_2)
  if L1_1 then
    L1_1 = mp
    L1_1 = L1_1.getfilename
    L2_2 = mp
    L2_2 = L2_2.bitor
    L3_3 = mp
    L3_3 = L3_3.bitor
    L4_4 = mp
    L4_4 = L4_4.FILEPATH_QUERY_FNAME
    L5_5 = mp
    L5_5 = L5_5.FILEPATH_QUERY_PATH
    L3_3 = L3_3(L4_4, L5_5)
    L4_4 = mp
    L4_4 = L4_4.FILEPATH_QUERY_LOWERCASE
    L17_17 = L2_2(L3_3, L4_4)
    L2_2 = L1_1(L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L2_2(L3_3, L4_4))
    if L1_1 ~= nil and L2_2 ~= nil then
      L3_3 = #L2_2
    elseif L3_3 < 4 then
      L3_3 = mp
      L3_3 = L3_3.CLEAN
      return L3_3
    end
    L4_4 = L2_2
    L3_3 = L2_2.match
    L5_5 = "%.([^%.]+)$"
    L3_3 = L3_3(L4_4, L5_5)
    if L3_3 == nil then
      L4_4 = mp
      L4_4 = L4_4.CLEAN
      return L4_4
    end
    L4_4 = {}
    L4_4.xlsx = true
    L4_4.xls = true
    L4_4.xlsm = true
    L4_4.xlsb = true
    L4_4.xlt = true
    L4_4.xltx = true
    L4_4.xltm = true
    L4_4.xlam = true
    L4_4.xla = true
    L4_4.docx = true
    L4_4.doc = true
    L4_4.docm = true
    L4_4.dotm = true
    L4_4.dotx = true
    L4_4.ppam = true
    L4_4.pptm = true
    L4_4.ppsm = true
    L4_4.potm = true
    L4_4.ppt = true
    L4_4.pptx = true
    L4_4.rtf = true
    L4_4.one = true
    L4_4[".onetoc2"] = true
    L5_5 = {}
    L5_5.iso = true
    L5_5.vhd = true
    L5_5.vhdx = true
    L5_5.ppkg = true
    L5_5.sppkg = true
    L5_5.img = true
    L6_6 = nil
    L7_7 = L5_5[L3_3]
    if L7_7 then
      L6_6 = "iso|"
    else
      L7_7 = L4_4[L3_3]
      if L7_7 then
        L7_7 = mp
        L7_7 = L7_7.get_mpattribute
        L8_8 = "MHSTR:MacroInside"
        L7_7 = L7_7(L8_8)
        if L7_7 then
          L6_6 = "office|HasMacros|"
        end
      else
        L7_7 = mp
        L7_7 = L7_7.CLEAN
        return L7_7
      end
    end
    L7_7 = mp
    L7_7 = L7_7.get_contextdata
    L8_8 = mp
    L8_8 = L8_8.CONTEXT_DATA_PROCESSDEVICEPATH
    L7_7 = L7_7(L8_8)
    L8_8 = mp
    L8_8 = L8_8.get_contextdata
    L9_9 = mp
    L9_9 = L9_9.CONTEXT_DATA_PROCESS_PPID
    L8_8 = L8_8(L9_9)
    L9_9 = MpCommon
    L9_9 = L9_9.PathToWin32Path
    L10_10 = L7_7
    L9_9 = L9_9(L10_10)
    L7_7 = L9_9
    if L7_7 == nil or L8_8 == nil then
      L9_9 = mp
      L9_9 = L9_9.CLEAN
      return L9_9
    end
    L10_10 = L7_7
    L9_9 = L7_7.lower
    L9_9 = L9_9(L10_10)
    L7_7 = L9_9
    L9_9, L10_10, L11_11 = nil, nil, nil
    L12_12 = ";"
    L13_13 = 0
    while L13_13 <= 5 do
      L14_14 = pcall
      L15_15 = mp
      L15_15 = L15_15.GetParentProcInfo
      L16_16 = L8_8
      L15_15 = L14_14(L15_15, L16_16)
      L10_10 = L15_15
      L9_9 = L14_14
      if L9_9 == true and L10_10 ~= nil then
        L14_14 = L10_10.ppid
        if L14_14 ~= nil then
          L14_14 = L10_10.image_path
        end
      elseif L14_14 == nil then
        break
      end
      L8_8 = L10_10.ppid
      L14_14 = string
      L14_14 = L14_14.lower
      L15_15 = L10_10.image_path
      L14_14 = L14_14(L15_15)
      L11_11 = L14_14
      L14_14 = L12_12
      L15_15 = "Parent_"
      L16_16 = L13_13
      L17_17 = "Path="
      L12_12 = L14_14 .. L15_15 .. L16_16 .. L17_17 .. L11_11 .. ";pid=" .. L8_8 .. ";"
      L13_13 = L13_13 + 1
    end
    L14_14 = MpCommon
    L14_14 = L14_14.GetCurrentTimeT
    L14_14 = L14_14()
    L15_15 = 31536000
    L16_16 = L1_1
    L17_17 = "\\"
    L16_16 = L16_16 .. L17_17 .. L2_2
    L17_17 = "OFFAR::ProcessImagePath="
    L17_17 = L17_17 .. L7_7 .. ";pid=" .. L8_8 .. ";timestamp=" .. L14_14 .. L12_12
    if L6_6 ~= nil then
      L17_17 = L17_17 .. ";extra=" .. L6_6
    end
    if not IsKeyInRollingQueue("CC_filelist", L16_16) then
      AppendToRollingQueue("CC_filelist", L16_16, L17_17, L15_15, 32)
      mp.set_mpattribute(string.format("MpInternal_researchdata=CC_Research=%s", L17_17))
    end
    return mp.INFECTED
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
