local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19, L20_20, L21_21, L22_22, L23_23, L24_24, L25_25, L26_26, L27_27, L28_28, L29_29, L30_30, L31_31, L32_32, L33_33, L34_34, L35_35, L36_36, L37_37, L38_38, L39_39, L40_40, L41_41, L42_42, L43_43, L44_44, L45_45, L46_46, L47_47, L48_48, L49_49, L50_50, L51_51, L52_52, L53_53, L54_54, L55_55, L56_56, L57_57, L58_58, L59_59
L0_0 = mp
L0_0 = L0_0.get_sigattr_event_count
L1_1 = 16525
L0_0 = L0_0(L1_1)
if not (L0_0 < 10) then
  L0_0 = mp
  L0_0 = L0_0.get_sigattr_event_count
  L1_1 = 16387
  L0_0 = L0_0(L1_1)
  if L0_0 < 10 then
    L0_0 = mp
    L0_0 = L0_0.get_sigattr_event_count
    L1_1 = 16385
    L0_0 = L0_0(L1_1)
  elseif not (L0_0 < 9) then
    L0_0 = mp
    L0_0 = L0_0.get_sigattr_event_count
    L1_1 = 16384
    L0_0 = L0_0(L1_1)
    if L0_0 < 10 then
      L0_0 = mp
      L0_0 = L0_0.get_sigattr_event_count
      L1_1 = 16386
      L0_0 = L0_0(L1_1)
    elseif not (L0_0 < 10) then
      L0_0 = mp
      L0_0 = L0_0.get_sigattr_event_count
      L1_1 = 16389
      L0_0 = L0_0(L1_1)
    end
  end
elseif L0_0 < 10 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
function L0_0()
  local L0_60
  L0_60 = {
    MpCommon.ExpandEnvironmentVariables("%ProgramFiles%"):lower(),
    MpCommon.ExpandEnvironmentVariables("%ProgramFiles(x86)%"):lower(),
    MpCommon.ExpandEnvironmentVariables("%windir%"):lower(),
    mp.ContextualExpandEnvironmentVariables("%APPDATA%"):lower(),
    mp.ContextualExpandEnvironmentVariables("%LOCALAPPDATA%"):lower(),
    MpCommon.ExpandEnvironmentVariables("%ProgramData%"):lower(),
    MpCommon.ExpandEnvironmentVariables("%PUBLIC%"):lower(),
    MpCommon.ExpandEnvironmentVariables("system"):lower()
  }
  return L0_60
end
L1_1 = 90
L2_2 = 1000
L3_3 = 0
L4_4 = 0
L5_5 = 0
L6_6 = 0
L7_7 = 0
L8_8 = 0
L9_9 = bm
L9_9 = L9_9.get_current_process_startup_info
L9_9 = L9_9()
L10_10 = L9_9.ppid
L11_11 = bm
L11_11 = L11_11.get_imagepath
L11_11 = L11_11()
L12_12 = L11_11
L11_11 = L11_11.lower
L11_11 = L11_11(L12_12)
L12_12 = {}
L13_13 = {}
L14_14 = {}
L15_15 = {}
L16_16 = "DafrRQ"
L17_17 = L10_10
L18_18 = "SeqRead:"
L17_17 = L17_17 .. L18_18
L18_18 = L10_10
L19_19 = "DelFile:"
L18_18 = L18_18 .. L19_19
L19_19 = L10_10
L20_20 = "CrtFile:"
L19_19 = L19_19 .. L20_20
L20_20 = L10_10
L21_21 = "RenFile:"
L20_20 = L20_20 .. L21_21
L21_21 = L10_10
L22_22 = "ChgFile:"
L21_21 = L21_21 .. L22_22
L22_22 = L10_10
L23_23 = "MetFile:"
L22_22 = L22_22 .. L23_23
L23_23 = L10_10
L24_24 = "Threshold:"
L23_23 = L23_23 .. L24_24
L24_24 = L10_10
L24_24 = L24_24 .. L25_25
for L28_28 = 1, L26_26.SIGATTR_LOG_SZ do
  L29_29 = sigattr_tail
  L29_29 = L29_29[L28_28]
  L29_29 = L29_29.attribute
  if L29_29 ~= 16525 then
    L29_29 = sigattr_tail
    L29_29 = L29_29[L28_28]
    L29_29 = L29_29.attribute
    if L29_29 ~= 16387 then
      L29_29 = sigattr_tail
      L29_29 = L29_29[L28_28]
      L29_29 = L29_29.attribute
      if L29_29 ~= 16384 then
        L29_29 = sigattr_tail
        L29_29 = L29_29[L28_28]
        L29_29 = L29_29.attribute
        if L29_29 ~= 16385 then
          L29_29 = sigattr_tail
          L29_29 = L29_29[L28_28]
          L29_29 = L29_29.attribute
          if L29_29 ~= 16386 then
            L29_29 = sigattr_tail
            L29_29 = L29_29[L28_28]
            L29_29 = L29_29.attribute
            if L29_29 == 16389 then
              L29_29 = sigattr_tail
              L29_29 = L29_29[L28_28]
              L29_29 = L29_29.utf8p2
              L30_30 = L29_29
              L29_29 = L29_29.lower
              L29_29 = L29_29(L30_30)
            end
          end
        end
      end
    end
  elseif L29_29 == "attr_c09458eb" then
    L29_29 = sigattr_tail
    L29_29 = L29_29[L28_28]
    L29_29 = L29_29.utf8p1
    L30_30 = L29_29
    L29_29 = L29_29.lower
    L29_29 = L29_29(L30_30)
    L31_31 = L29_29
    L30_30 = L29_29.match
    L32_32 = "(.+)[/\\].+"
    L30_30 = L30_30(L31_31, L32_32)
    L31_31 = false
    L32_32 = "%.[^%.%\\]+$"
    if L33_33 == 37 or L30_30 == "" or L30_30 == nil then
      L31_31 = true
    end
    if not L31_31 then
      if L33_33 == nil then
        L12_12 = L33_33
      end
      for L36_36, L37_37 in L33_33(L34_34) do
        L39_39 = L29_29
        L38_38 = L29_29.find
        L40_40 = L37_37
        L38_38 = L38_38(L39_39, L40_40)
        if L38_38 then
          L31_31 = true
          break
        end
      end
    end
    if not L31_31 then
      if L34_34 == 16525 then
        L3_3 = L3_3 + 1
        L14_14[L34_34] = L30_30
      elseif L34_34 == 16387 then
        if L34_34 then
          L4_4 = L4_4 + 1
          L14_14[L34_34] = L30_30
        end
      elseif L34_34 == 16384 then
        L5_5 = L5_5 + 1
        L14_14[L34_34] = L30_30
      elseif L34_34 == 16386 then
        if L35_35 then
          L6_6 = L6_6 + 1
          L14_14[L35_35] = L29_29
        end
      elseif L34_34 == 16385 then
        L7_7 = L7_7 + 1
        L14_14[L34_34] = L35_35
      elseif L34_34 == 16389 then
        L8_8 = L8_8 + 1
        L14_14[L34_34] = L35_35
      end
      if L3_3 >= 10 and (L4_4 >= 10 or L7_7 >= 10) and (L5_5 >= 10 or L6_6 >= 10) and L8_8 >= 10 then
        for L37_37 in L34_34(L35_35) do
          L38_38 = string
          L38_38 = L38_38.format
          L39_39 = "%s"
          L40_40 = L37_37
          L38_38 = L38_38(L39_39, L40_40)
          L39_39 = string
          L39_39 = L39_39.sub
          L40_40 = L38_38
          L41_41 = 1
          L42_42 = #L17_17
          L39_39 = L39_39(L40_40, L41_41, L42_42)
          if L39_39 == L17_17 then
            L39_39 = table
            L39_39 = L39_39.insert
            L40_40 = L15_15
            L41_41 = string
            L41_41 = L41_41.sub
            L42_42 = L38_38
            L43_43 = #L17_17
            L43_43 = L43_43 + 1
            L59_59 = L41_41(L42_42, L43_43)
            L39_39(L40_40, L41_41, L42_42, L43_43, L44_44, L45_45, L46_46, L47_47, L48_48, L49_49, L50_50, L51_51, L52_52, L53_53, L54_54, L55_55, L56_56, L57_57, L58_58, L59_59, L41_41(L42_42, L43_43))
          end
        end
        for L37_37, L38_38 in L34_34(L35_35) do
          L39_39 = string
          L39_39 = L39_39.match
          L40_40 = L38_38
          L41_41 = "[^\\]+$"
          L39_39 = L39_39(L40_40, L41_41)
          L40_40 = L17_17
          L41_41 = L38_38
          L40_40 = L40_40 .. L41_41
          L40_40 = L14_14[L40_40]
          L41_41 = L40_40
          L42_42 = "\\.*\\"
          L43_43 = L39_39
          L41_41 = L41_41 .. L42_42 .. L43_43
          if L4_4 > 0 then
            L42_42 = L18_18
            L43_43 = L38_38
            L42_42 = L42_42 .. L43_43
            L42_42 = L14_14[L42_42]
          else
            L42_42 = L42_42 or false
          end
          L43_43 = nil
          if L6_6 > 0 then
            L44_44 = nil
            L45_45 = L20_20
            L46_46 = L38_38
            L45_45 = L45_45 .. L46_46
            L43_43 = L14_14[L45_45]
            if L43_43 then
              L45_45 = tostring
              L46_46 = L43_43
              L45_45 = L45_45(L46_46)
              L46_46 = L45_45
              L45_45 = L45_45.lower
              L45_45 = L45_45(L46_46)
              L46_46 = L45_45
              L45_45 = L45_45.gsub
              L47_47 = "(:\\users)\\[%w._@']+"
              L48_48 = "%1\\PII_"
              L45_45 = L45_45(L46_46, L47_47, L48_48)
              L44_44 = L45_45
              L45_45 = table
              L45_45 = L45_45.insert
              L46_46 = L13_13
              L47_47 = "RenamedTo:"
              L48_48 = L44_44
              L47_47 = L47_47 .. L48_48
              L45_45(L46_46, L47_47)
            else
              L46_46 = L38_38
              L45_45 = L38_38.match
              L47_47 = "(.*)%.%w+$"
              L45_45 = L45_45(L46_46, L47_47)
              L46_46 = L20_20
              L47_47 = L45_45
              L46_46 = L46_46 .. L47_47
              L46_46 = L14_14[L46_46]
              L43_43 = L46_46 == L38_38
              if L43_43 then
                L47_47 = tostring
                L48_48 = L45_45
                L47_47 = L47_47(L48_48)
                L48_48 = L47_47
                L47_47 = L47_47.lower
                L47_47 = L47_47(L48_48)
                L48_48 = L47_47
                L47_47 = L47_47.gsub
                L49_49 = "(:\\users)\\[%w._@']+"
                L50_50 = "%1\\PII_"
                L47_47 = L47_47(L48_48, L49_49, L50_50)
                L44_44 = L47_47
                L47_47 = table
                L47_47 = L47_47.insert
                L48_48 = L13_13
                L49_49 = "RenamedFrom:"
                L50_50 = L44_44
                L49_49 = L49_49 .. L50_50
                L47_47(L48_48, L49_49)
              end
            end
          end
          if L7_7 > 0 then
            L44_44 = L21_21
            L45_45 = L38_38
            L44_44 = L44_44 .. L45_45
            L44_44 = L14_14[L44_44]
          else
            L44_44 = L44_44 or false
          end
          function L45_45(A0_61, A1_62)
            local L2_63, L3_64, L4_65, L5_66
            L5_66 = "."
            A1_62 = L2_63
            L5_66 = "%%-"
            A1_62 = L2_63
            for L5_66 in L2_63(L3_64) do
              if string.find(L5_66, A1_62, 1, false) then
                return L5_66
              end
            end
            return L2_63
          end
          L46_46 = nil
          if L5_5 > 0 then
            L47_47 = L45_45
            L48_48 = L14_14
            L49_49 = L19_19
            L50_50 = L38_38
            L49_49 = L49_49 .. L50_50
            L47_47 = L47_47(L48_48, L49_49)
            L46_46 = L47_47
            if not L46_46 then
              L47_47 = L45_45
              L48_48 = L14_14
              L49_49 = L19_19
              L50_50 = L41_41
              L49_49 = L49_49 .. L50_50
              L47_47 = L47_47(L48_48, L49_49)
              L46_46 = L47_47
            end
            if L46_46 then
              L47_47 = tostring
              L48_48 = L46_46
              L47_47 = L47_47(L48_48)
              L48_48 = L47_47
              L47_47 = L47_47.lower
              L47_47 = L47_47(L48_48)
              L48_48 = L47_47
              L47_47 = L47_47.gsub
              L49_49 = "(:\\users)\\[%w._@']+"
              L50_50 = "%1\\PII_"
              L47_47 = L47_47(L48_48, L49_49, L50_50)
              L48_48 = table
              L48_48 = L48_48.insert
              L49_49 = L13_13
              L50_50 = "Created:"
              L52_52 = L47_47
              L51_51 = L47_47.sub
              L53_53 = #L19_19
              L53_53 = L53_53 + 1
              L51_51 = L51_51(L52_52, L53_53)
              L50_50 = L50_50 .. L51_51
              L48_48(L49_49, L50_50)
            end
          end
          L47_47 = L45_45
          L48_48 = L14_14
          L49_49 = L22_22
          L50_50 = L38_38
          L49_49 = L49_49 .. L50_50
          L47_47 = L47_47(L48_48, L49_49)
          if not L47_47 then
            L47_47 = L45_45
            L48_48 = L14_14
            L49_49 = L22_22
            L50_50 = L41_41
            L49_49 = L49_49 .. L50_50
            L47_47 = L47_47(L48_48, L49_49)
          end
          if L47_47 and (L42_42 and L46_46 or L43_43 and L44_44) then
            if L42_42 and L46_46 then
              L48_48 = "_CreateDelete_"
            else
              L48_48 = L48_48 or "_RenameChange_"
            end
            L49_49 = IsKeyInRollingQueue
            L50_50 = L16_16
            L51_51 = L23_23
            L52_52 = L48_48
            L51_51 = L51_51 .. L52_52
            L49_49 = L49_49(L50_50, L51_51)
            if not L49_49 then
              L49_49 = AppendToRollingQueue
              L50_50 = L16_16
              L51_51 = L23_23
              L52_52 = L48_48
              L51_51 = L51_51 .. L52_52
              L52_52 = 1
              L53_53 = L1_1
              L49_49(L50_50, L51_51, L52_52, L53_53, L54_54)
              L49_49 = AppendToRollingQueue
              L50_50 = L16_16
              L51_51 = L24_24
              L52_52 = L48_48
              L51_51 = L51_51 .. L52_52
              L52_52 = MpCommon
              L52_52 = L52_52.GetCurrentTimeT
              L52_52 = L52_52()
              L52_52 = L52_52 or -1
              L53_53 = L1_1
              L49_49(L50_50, L51_51, L52_52, L53_53, L54_54)
            else
              L49_49 = tonumber
              L50_50 = GetRollingQueueKeyValue
              L51_51 = L16_16
              L52_52 = L24_24
              L53_53 = L48_48
              L52_52 = L52_52 .. L53_53
              L59_59 = L50_50(L51_51, L52_52)
              L49_49 = L49_49(L50_50, L51_51, L52_52, L53_53, L54_54, L55_55, L56_56, L57_57, L58_58, L59_59, L50_50(L51_51, L52_52))
              L49_49 = L49_49 or -1
              L50_50 = MpCommon
              L50_50 = L50_50.GetCurrentTimeT
              L50_50 = L50_50()
              L50_50 = L50_50 or -2
              L51_51 = L50_50 - L49_49
              if L51_51 < 0 or L51_51 > 90 then
                L52_52 = AppendToRollingQueue
                L53_53 = L16_16
                L57_57 = L2_2
                L52_52(L53_53, L54_54, L55_55, L56_56, L57_57)
                L52_52 = AppendToRollingQueue
                L53_53 = L16_16
                L57_57 = L2_2
                L52_52(L53_53, L54_54, L55_55, L56_56, L57_57)
                L52_52 = mp
                L52_52 = L52_52.CLEAN
                return L52_52
              end
              L52_52 = tonumber
              L53_53 = GetRollingQueueKeyValue
              L59_59 = L53_53(L54_54, L55_55)
              L52_52 = L52_52(L53_53, L54_54, L55_55, L56_56, L57_57, L58_58, L59_59, L53_53(L54_54, L55_55))
              if L52_52 >= 10 then
                L53_53 = bm
                L53_53 = L53_53.trigger_sig
                L53_53(L54_54, L55_55)
                L53_53 = {}
                for L57_57, L58_58 in L54_54(L55_55) do
                  L59_59 = string
                  L59_59 = L59_59.gsub
                  L59_59 = L59_59(L58_58:lower(), "(:\\users)\\[%w._@']+", "%1\\PII_")
                  table.insert(L53_53, L59_59)
                end
                L54_54.ThresholdValue = L52_52
                L54_54.HeurType = L48_48
                L54_54.CountStartTime = L49_49
                L54_54.CountEndTime = L50_50
                L54_54.DeletedFileCount = L4_4
                L54_54.CreatedFileCount = L5_5
                L54_54.RenamedFileCount = L6_6
                L54_54.ChangedFileCount = L7_7
                L54_54.TamperedFiles = L53_53
                L54_54.CreatedRenamed = L13_13
                L54_54.ImagePath = L11_11
                L54_54.BMHitCount = L55_55
                L56_56()
                L57_57 = "GenericRansomware"
                L58_58 = L55_55
                L59_59 = bm
                L59_59 = L59_59.RelatedStringBMReport
                L56_56(L57_57, L58_58, L59_59)
                L56_56()
                return L56_56
              else
                L53_53 = AppendToRollingQueue
                L57_57 = L1_1
                L58_58 = L2_2
                L53_53(L54_54, L55_55, L56_56, L57_57, L58_58)
              end
            end
          end
        end
      end
    end
  end
end
return L25_25
