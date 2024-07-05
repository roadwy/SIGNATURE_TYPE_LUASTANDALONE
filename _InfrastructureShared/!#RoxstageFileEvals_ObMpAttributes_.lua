local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19, L20_20, L21_21, L22_22, L23_23, L24_24, L25_25, L26_26, L27_27
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONOPEN
if L0_0 ~= L1_1 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_FILE_AGE
L0_0 = L0_0(L1_1)
if L0_0 ~= nil and L0_0 <= 7200 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.get_contextdata
L2_2 = mp
L2_2 = L2_2.CONTEXT_DATA_PROCESSNAME
L1_1 = L1_1(L2_2)
L2_2 = mp
L2_2 = L2_2.get_contextdata
L3_3 = mp
L3_3 = L3_3.CONTEXT_DATA_PROCESSDEVICEPATH
L2_2 = L2_2(L3_3)
L3_3 = MpCommon
L3_3 = L3_3.PathToWin32Path
L4_4 = L2_2
L3_3 = L3_3(L4_4)
if L3_3 == nil then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = L3_3
L5_5 = "\\"
L6_6 = L1_1
L3_3 = L4_4 .. L5_5 .. L6_6
L4_4 = MpCommon
L4_4 = L4_4.QueryPersistContext
L5_5 = L3_3
L6_6 = "BM_RoxstageProcessEval"
L4_4 = L4_4(L5_5, L6_6)
if not L4_4 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = MpCommon
L4_4 = L4_4.QueryPersistContext
L5_5 = L3_3
L6_6 = "BM_RoxstageProcessBlock"
L4_4 = L4_4(L5_5, L6_6)
if L4_4 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = {}
L4_4[".pdf"] = true
L4_4[".doc"] = true
L4_4[".docx"] = true
L4_4[".docm"] = true
L4_4[".xls"] = true
L4_4[".xlsx"] = true
L4_4[".xlsm"] = true
L4_4[".ppt"] = true
L4_4[".pptx"] = true
L4_4[".pptm"] = true
L5_5 = {}
L5_5[".txt"] = true
L5_5[".bat"] = true
L5_5[".cmd"] = true
L5_5[".ps1"] = true
L5_5[".vbs"] = true
L5_5[".wsf"] = true
L5_5[".js"] = true
L5_5[".html"] = true
L5_5[".htm"] = true
L5_5[".hta"] = true
L5_5[".xml"] = true
L6_6 = {}
L6_6[".zip"] = true
L6_6[".rar"] = true
L6_6[".7z"] = true
L6_6[".gzip"] = true
L7_7 = {}
L7_7[".jpeg"] = true
L7_7[".jpg"] = true
L7_7[".jpe"] = true
L7_7[".png"] = true
L7_7[".bmp"] = true
L8_8 = {}
L8_8[".webm"] = true
L8_8[".mkv"] = true
L8_8[".flv"] = true
L8_8[".vob"] = true
L8_8[".ogv"] = true
L8_8[".ogg"] = true
L8_8[".drc"] = true
L8_8[".gif"] = true
L8_8[".gifv"] = true
L8_8[".mng"] = true
L8_8[".avi"] = true
L8_8[".mts"] = true
L8_8[".m2ts"] = true
L8_8[".ts"] = true
L8_8[".mov"] = true
L8_8[".qt"] = true
L8_8[".wmv"] = true
L8_8[".yuv"] = true
L8_8[".rm"] = true
L8_8[".rmvb"] = true
L8_8[".asf"] = true
L8_8[".amv"] = true
L8_8[".mp4"] = true
L8_8[".m4p"] = true
L8_8[".m4v"] = true
L8_8[".mpg"] = true
L8_8[".mpeg"] = true
L8_8[".mp2"] = true
L8_8[".mpe"] = true
L8_8[".mpv"] = true
L8_8[".m2v"] = true
L8_8[".f4v"] = true
L8_8[".f4p"] = true
L8_8[".f4a"] = true
L8_8[".f4b"] = true
L9_9 = {}
L9_9[".3gp"] = true
L9_9[".aa"] = true
L9_9[".aac"] = true
L9_9[".aax"] = true
L9_9[".act"] = true
L9_9[".aiff"] = true
L9_9[".alac"] = true
L9_9[".amr"] = true
L9_9[".ape"] = true
L9_9[".au"] = true
L9_9[".awb"] = true
L9_9[".dct"] = true
L9_9[".dss"] = true
L9_9[".dvf"] = true
L9_9[".flac"] = true
L9_9[".gsm"] = true
L9_9[".iklax"] = true
L9_9[".ivs"] = true
L9_9[".m4a"] = true
L9_9[".m4b"] = true
L9_9[".m4p"] = true
L9_9[".mmf"] = true
L9_9[".mp3"] = true
L9_9[".mpc"] = true
L9_9[".msv"] = true
L9_9[".nmf "] = true
L9_9[".nsf"] = true
L9_9[".ogg"] = true
L9_9[".oga"] = true
L9_9[".mogg"] = true
L9_9[".opus"] = true
L9_9[".ra"] = true
L9_9[".rm"] = true
L9_9[".raw"] = true
L9_9[".sln"] = true
L9_9[".tta"] = true
L9_9[".voc"] = true
L9_9[".vox"] = true
L9_9[".wav"] = true
L9_9[".wma"] = true
L9_9[".wv"] = true
L9_9[".8svx"] = true
L10_10 = {}
L10_10[".lnk"] = true
L10_10[".rtf"] = true
L11_11 = mp
L11_11 = L11_11.getfilename
L12_12 = mp
L12_12 = L12_12.bitor
L13_13 = mp
L13_13 = L13_13.FILEPATH_QUERY_FULL
L14_14 = mp
L14_14 = L14_14.FILEPATH_QUERY_LOWERCASE
L27_27 = L12_12(L13_13, L14_14)
L11_11 = L11_11(L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19, L20_20, L21_21, L22_22, L23_23, L24_24, L25_25, L26_26, L27_27, L12_12(L13_13, L14_14))
L12_12 = string
L12_12 = L12_12.match
L13_13 = L11_11
L14_14 = "(%.[^%.]+)$"
L12_12 = L12_12(L13_13, L14_14)
if L12_12 == nil or L12_12 == "" then
  L13_13 = mp
  L13_13 = L13_13.CLEAN
  return L13_13
end
L13_13 = L4_4[L12_12]
if L13_13 ~= true then
  L13_13 = L5_5[L12_12]
  if L13_13 ~= true then
    L13_13 = L6_6[L12_12]
    if L13_13 ~= true then
      L13_13 = L7_7[L12_12]
      if L13_13 ~= true then
        L13_13 = L8_8[L12_12]
        if L13_13 ~= true then
          L13_13 = L9_9[L12_12]
          if L13_13 ~= true then
            L13_13 = L10_10[L12_12]
            if L13_13 ~= true then
              L13_13 = mp
              L13_13 = L13_13.CLEAN
              return L13_13
            end
          end
        end
      end
    end
  end
end
L13_13 = mp
L13_13 = L13_13.ContextualExpandEnvironmentVariables
L14_14 = "%userprofile%"
L13_13 = L13_13(L14_14)
if L13_13 == nil then
  L14_14 = ""
else
  L14_14 = L14_14 or L13_13
end
L15_15 = L14_14
L14_14 = L14_14.lower
L14_14 = L14_14(L15_15)
L13_13 = L14_14
L14_14 = MpCommon
L14_14 = L14_14.ExpandEnvironmentVariables
L15_15 = "%public%"
L14_14 = L14_14(L15_15)
if L14_14 == nil then
  L15_15 = ""
else
  L15_15 = L15_15 or L14_14
end
L16_16 = L15_15
L15_15 = L15_15.lower
L15_15 = L15_15(L16_16)
L14_14 = L15_15
L15_15 = string
L15_15 = L15_15.lower
L16_16 = MpCommon
L16_16 = L16_16.PathToWin32Path
L17_17 = L11_11
L27_27 = L16_16(L17_17)
L15_15 = L15_15(L16_16, L17_17, L18_18, L19_19, L20_20, L21_21, L22_22, L23_23, L24_24, L25_25, L26_26, L27_27, L16_16(L17_17))
L16_16 = string
L16_16 = L16_16.find
L17_17 = L15_15
L18_18 = L13_13
L19_19 = "\\documents\\"
L18_18 = L18_18 .. L19_19
L19_19 = 1
L20_20 = true
L16_16 = L16_16(L17_17, L18_18, L19_19, L20_20)
if L16_16 == nil then
  L16_16 = string
  L16_16 = L16_16.find
  L17_17 = L15_15
  L18_18 = L14_14
  L19_19 = "\\documents\\"
  L18_18 = L18_18 .. L19_19
  L19_19 = 1
  L20_20 = true
  L16_16 = L16_16(L17_17, L18_18, L19_19, L20_20)
  if L16_16 == nil then
    L16_16 = string
    L16_16 = L16_16.find
    L17_17 = L15_15
    L18_18 = L13_13
    L19_19 = "\\pictures\\"
    L18_18 = L18_18 .. L19_19
    L19_19 = 1
    L20_20 = true
    L16_16 = L16_16(L17_17, L18_18, L19_19, L20_20)
    if L16_16 == nil then
      L16_16 = string
      L16_16 = L16_16.find
      L17_17 = L15_15
      L18_18 = L14_14
      L19_19 = "\\pictures\\"
      L18_18 = L18_18 .. L19_19
      L19_19 = 1
      L20_20 = true
      L16_16 = L16_16(L17_17, L18_18, L19_19, L20_20)
      if L16_16 == nil then
        L16_16 = string
        L16_16 = L16_16.find
        L17_17 = L15_15
        L18_18 = L13_13
        L19_19 = "\\videos\\"
        L18_18 = L18_18 .. L19_19
        L19_19 = 1
        L20_20 = true
        L16_16 = L16_16(L17_17, L18_18, L19_19, L20_20)
        if L16_16 == nil then
          L16_16 = string
          L16_16 = L16_16.find
          L17_17 = L15_15
          L18_18 = L14_14
          L19_19 = "\\videos\\"
          L18_18 = L18_18 .. L19_19
          L19_19 = 1
          L20_20 = true
          L16_16 = L16_16(L17_17, L18_18, L19_19, L20_20)
          if L16_16 == nil then
            L16_16 = string
            L16_16 = L16_16.find
            L17_17 = L15_15
            L18_18 = L13_13
            L19_19 = "\\music\\"
            L18_18 = L18_18 .. L19_19
            L19_19 = 1
            L20_20 = true
            L16_16 = L16_16(L17_17, L18_18, L19_19, L20_20)
            if L16_16 == nil then
              L16_16 = string
              L16_16 = L16_16.find
              L17_17 = L15_15
              L18_18 = L14_14
              L19_19 = "\\music\\"
              L18_18 = L18_18 .. L19_19
              L19_19 = 1
              L20_20 = true
              L16_16 = L16_16(L17_17, L18_18, L19_19, L20_20)
              if L16_16 == nil then
                L16_16 = string
                L16_16 = L16_16.find
                L17_17 = L15_15
                L18_18 = L13_13
                L19_19 = "\\favorites\\"
                L18_18 = L18_18 .. L19_19
                L19_19 = 1
                L20_20 = true
                L16_16 = L16_16(L17_17, L18_18, L19_19, L20_20)
                if L16_16 == nil then
                  L16_16 = string
                  L16_16 = L16_16.find
                  L17_17 = L15_15
                  L18_18 = L14_14
                  L19_19 = "\\favorites\\"
                  L18_18 = L18_18 .. L19_19
                  L19_19 = 1
                  L20_20 = true
                  L16_16 = L16_16(L17_17, L18_18, L19_19, L20_20)
                  if L16_16 == nil then
                    L16_16 = string
                    L16_16 = L16_16.find
                    L17_17 = L15_15
                    L18_18 = L13_13
                    L19_19 = "\\desktop\\"
                    L18_18 = L18_18 .. L19_19
                    L19_19 = 1
                    L20_20 = true
                    L16_16 = L16_16(L17_17, L18_18, L19_19, L20_20)
                    if L16_16 == nil then
                      L16_16 = string
                      L16_16 = L16_16.find
                      L17_17 = L15_15
                      L18_18 = L14_14
                      L19_19 = "\\desktop\\"
                      L18_18 = L18_18 .. L19_19
                      L19_19 = 1
                      L20_20 = true
                      L16_16 = L16_16(L17_17, L18_18, L19_19, L20_20)
                      if L16_16 == nil then
                        L16_16 = string
                        L16_16 = L16_16.find
                        L17_17 = L15_15
                        L18_18 = "c:\\demo\\"
                        L19_19 = 1
                        L20_20 = true
                        L16_16 = L16_16(L17_17, L18_18, L19_19, L20_20)
                        if L16_16 == nil then
                          L16_16 = mp
                          L16_16 = L16_16.CLEAN
                          return L16_16
                        end
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
L16_16 = {}
L17_17 = {}
L18_18 = false
L19_19 = 0
L20_20 = 0
L21_21 = MpCommon
L21_21 = L21_21.GetPersistContext
L21_21 = L21_21(L22_22)
if L21_21 == nil then
  return L22_22
end
for L25_25, L26_26 in L22_22(L23_23) do
  L27_27 = string
  L27_27 = L27_27.match
  L27_27 = L27_27(L26_26, "^RoxstageFile:(.+)$")
  if L27_27 ~= nil then
    L20_20 = L20_20 + 1
    table.insert(L17_17, "RoxstageFile:" .. L27_27)
    if not sysio.IsFileExists(L27_27) then
      L19_19 = L19_19 + 1
    end
    if L27_27 == L11_11 then
      L18_18 = true
    end
  else
    table.insert(L16_16, L26_26)
  end
end
if L18_18 == false then
  if L20_20 >= 30 then
    L17_17 = L22_22
  end
  L25_25 = L11_11
  L22_22(L23_23, L24_24)
end
if L19_19 >= 21 then
  L25_25 = 0
  L22_22(L23_23, L24_24, L25_25)
  if not L22_22 then
    L25_25 = 0
    L22_22(L23_23, L24_24, L25_25)
  end
  L22_22(L23_23)
  L22_22(L23_23, L24_24)
else
  for L25_25, L26_26 in L22_22(L23_23) do
    L27_27 = table
    L27_27 = L27_27.insert
    L27_27(L16_16, L26_26)
  end
  L25_25 = 0
  L22_22(L23_23, L24_24, L25_25)
end
return L22_22
