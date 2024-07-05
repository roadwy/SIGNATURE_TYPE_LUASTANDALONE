local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19, L20_20, L21_21, L22_22, L23_23, L24_24, L25_25, L26_26, L27_27, L28_28, L29_29
L0_0 = Remediation
L0_0 = L0_0.Threat
if not L1_1 then
elseif L1_1 then
  for L5_5, L6_6 in L2_2(L3_3) do
    L7_7 = L6_6.Schema
    if L7_7 == "file" then
      L7_7 = L6_6.Path
      L8_8 = L7_7
      L7_7 = L7_7.lower
      L7_7 = L7_7(L8_8)
      L8_8 = L7_7
      L7_7 = L7_7.match
      L9_9 = "(.+)\\(%w+)\\(%w+%.js)"
      L9_9 = L7_7(L8_8, L9_9)
      if L7_7 ~= nil then
        L11_11 = L7_7
        L10_10 = L7_7.sub
        L12_12 = #L1_1
        L12_12 = -1 * L12_12
        L10_10 = L10_10(L11_11, L12_12)
        if L10_10 == L1_1 then
          L10_10 = L7_7
          L11_11 = "\\"
          L12_12 = L8_8
          L10_10 = L10_10 .. L11_11 .. L12_12
          L11_11 = sysio
          L11_11 = L11_11.FindFiles
          L12_12 = L10_10
          L13_13 = "*.exe"
          L14_14 = 0
          L11_11 = L11_11(L12_12, L13_13, L14_14)
          L12_12 = MpCommon
          L12_12 = L12_12.ExpandEnvironmentVariables
          L13_13 = "%windir%"
          L12_12 = L12_12(L13_13)
          L13_13 = sysio
          L13_13 = L13_13.GetFileSize
          L14_14 = L12_12
          L15_15 = "\\system32\\wscript.exe"
          L14_14 = L14_14 .. L15_15
          L13_13 = L13_13(L14_14)
          L14_14 = sysio
          L14_14 = L14_14.ReadFile
          L15_15 = L12_12
          L15_15 = L15_15 .. L16_16
          L14_14 = L14_14(L15_15, L16_16, L17_17)
          L15_15 = crypto
          L15_15 = L15_15.MD5Buffer
          L15_15 = L15_15(L16_16, L17_17, L18_18)
          for L19_19, L20_20 in L16_16(L17_17) do
            L21_21 = sysio
            L21_21 = L21_21.GetFileSize
            L22_22 = L20_20
            L21_21 = L21_21(L22_22)
            if L21_21 == L13_13 then
              L21_21 = sysio
              L21_21 = L21_21.ReadFile
              L22_22 = L20_20
              L23_23 = 1
              L21_21 = L21_21(L22_22, L23_23, L24_24)
              L22_22 = crypto
              L22_22 = L22_22.MD5Buffer
              L23_23 = L21_21
              L22_22 = L22_22(L23_23, L24_24, L25_25)
              if L22_22 == L15_15 then
                L23_23 = sysio
                L23_23 = L23_23.GetProcessFromFileName
                L23_23 = L23_23(L24_24)
                for L27_27, L28_28 in L24_24(L25_25) do
                  L29_29 = string
                  L29_29 = L29_29.format
                  L29_29 = L29_29("pid:%d,ProcessStart:%u", L28_28.pid, L28_28.starttime)
                  sysio.TerminateProcess(L29_29)
                end
              end
            end
          end
        end
      end
    end
  end
end
if L1_1 == "Worm:JS/Bondat!lnk" then
  for L4_4, L5_5 in L1_1(L2_2) do
    L6_6 = L5_5.Schema
    if L6_6 == "file" then
      L6_6 = L5_5.Path
      L7_7 = L6_6
      L6_6 = L6_6.match
      L8_8 = "([^\\]+)%.lnk%->%[CMDEmbedded%]$"
      L6_6 = L6_6(L7_7, L8_8)
      if L6_6 ~= nil then
        L7_7 = L5_5.Path
        L8_8 = L7_7
        L7_7 = L7_7.match
        L9_9 = "^\\\\%?\\(%w:\\)"
        L7_7 = L7_7(L8_8, L9_9)
        if L7_7 ~= nil then
          L8_8 = L7_7
          L9_9 = ".Trashes\\"
          L10_10 = L6_6
          L8_8 = L8_8 .. L9_9 .. L10_10
          L9_9 = L7_7
          L10_10 = "\\"
          L11_11 = L6_6
          L9_9 = L9_9 .. L10_10 .. L11_11
          L10_10 = sysio
          L10_10 = L10_10.IsFileExists
          L11_11 = L8_8
          L10_10 = L10_10(L11_11)
          if not L10_10 then
            L10_10 = sysio
            L10_10 = L10_10.IsFolderExists
            L11_11 = L8_8
            L10_10 = L10_10(L11_11)
          elseif L10_10 then
            L10_10 = sysio
            L10_10 = L10_10.IsFileExists
            L11_11 = L9_9
            L10_10 = L10_10(L11_11)
            if L10_10 then
              L10_10 = sysio
              L10_10 = L10_10.IsFolderExists
              L11_11 = L9_9
              L10_10 = L10_10(L11_11)
            elseif not L10_10 then
              L10_10 = sysio
              L10_10 = L10_10.MoveFile
              L11_11 = L8_8
              L12_12 = L9_9
              L10_10(L11_11, L12_12)
              L10_10 = sysio
              L10_10 = L10_10.SetFileAttributes
              L11_11 = L9_9
              L12_12 = 32
              L10_10(L11_11, L12_12)
            end
          end
        end
      end
    end
  end
end
