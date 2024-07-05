local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12
L0_0 = mp
L0_0 = L0_0.SCANREASON_ONMODIFIEDHANDLECLOSE
L1_1 = mp
L1_1 = L1_1.get_contextdata
L2_2 = mp
L2_2 = L2_2.CONTEXT_DATA_SCANREASON
L1_1 = L1_1(L2_2)
if L0_0 == L1_1 then
  L0_0 = mp
  L0_0 = L0_0.get_contextdata
  L1_1 = mp
  L1_1 = L1_1.CONTEXT_DATA_NEWLYCREATEDHINT
  L0_0 = L0_0(L1_1)
  if L0_0 == true then
    L0_0 = mp
    L0_0 = L0_0.get_contextdata
    L1_1 = mp
    L1_1 = L1_1.CONTEXT_DATA_PROCESSNAME
    L0_0 = L0_0(L1_1)
    L1_1 = getCachePaths
    L2_2 = L0_0
    L1_1 = L1_1(L2_2)
    if L1_1 ~= nil then
      L2_2 = mp
      L2_2 = L2_2.getfilename
      L3_3 = mp
      L3_3 = L3_3.bitor
      L4_4 = mp
      L4_4 = L4_4.bitor
      L5_5 = mp
      L5_5 = L5_5.FILEPATH_QUERY_FNAME
      L6_6 = mp
      L6_6 = L6_6.FILEPATH_QUERY_PATH
      L4_4 = L4_4(L5_5, L6_6)
      L5_5 = mp
      L5_5 = L5_5.FILEPATH_QUERY_LOWERCASE
      L12_12 = L3_3(L4_4, L5_5)
      L3_3 = L2_2(L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L3_3(L4_4, L5_5))
      L4_4 = {}
      L4_4[".pdf"] = true
      L4_4[".doc"] = true
      L4_4[".xls"] = true
      L4_4[".rtf"] = true
      L4_4[".docm"] = true
      L4_4[".xlsm"] = true
      L4_4[".ppam"] = true
      L4_4[".pptm"] = true
      L4_4[".ppsm"] = true
      L4_4[".potm"] = true
      L4_4[".xlsx"] = true
      L4_4[".docx"] = true
      L4_4[".xlsb"] = true
      L4_4[".xltx"] = true
      L4_4[".xltm"] = true
      L4_4[".xlt"] = true
      L4_4[".xlam"] = true
      L4_4[".xla"] = true
      L4_4[".dotx"] = true
      L4_4[".dotm"] = true
      L4_4[".odt"] = true
      L4_4[".pptx"] = true
      L4_4[".pps"] = true
      L4_4[".ppsx"] = true
      L4_4[".jse"] = true
      L4_4[".vbs"] = true
      L4_4[".wsf"] = true
      L4_4[".vbe"] = true
      L4_4[".hta"] = true
      L4_4[".js"] = true
      L4_4[".mht"] = true
      L4_4[".lnk"] = true
      L4_4[".bat"] = true
      L4_4[".ps1"] = true
      L4_4[".zip"] = true
      L4_4[".rar"] = true
      L4_4[".7z"] = true
      L4_4[".iso"] = true
      L4_4[".arj"] = true
      L4_4[".gz"] = true
      L4_4[".ace"] = true
      L4_4[".img"] = true
      L4_4[".exe"] = true
      L4_4[".scr"] = true
      L4_4[".pif"] = true
      L4_4[".htm"] = true
      L4_4[".html"] = true
      L4_4[".jar"] = true
      L5_5, L6_6, L7_7 = nil, nil, nil
      for L11_11, L12_12 in L8_8(L9_9) do
        if L2_2:find(L12_12, 1, true) ~= nil then
          L5_5 = string.sub(L3_3, -3)
          L6_6 = string.sub(L3_3, -4)
          L7_7 = string.sub(L3_3, -5)
          if L4_4[L5_5] == true or L4_4[L6_6] == true or L4_4[L7_7] == true then
            MpCommon.AppendPersistContextNoPath("CLF_AM", "CLF_AM_EC", 60)
            if L2_2:sub(1, 8) == "\\device\\" then
              L2_2 = MpCommon.PathToWin32Path(L2_2)
            end
            MpCommon.AppendPersistContextNoPath("CLF_IC", L2_2 .. "\\" .. L3_3, 60)
            return mp.INFECTED
          end
        end
      end
    end
  end
end
L0_0 = mp
L0_0 = L0_0.CLEAN
return L0_0
