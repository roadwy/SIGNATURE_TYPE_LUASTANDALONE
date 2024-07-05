local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14
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
  L2_2 = L2_2.CONTEXT_DATA_FILENAME
  L1_1 = L1_1(L2_2)
  if L1_1 ~= nil then
    L2_2 = #L1_1
  elseif L2_2 < 1 then
    L2_2 = mp
    L2_2 = L2_2.CLEAN
    return L2_2
  end
  L2_2 = string
  L2_2 = L2_2.lower
  L3_3 = L1_1
  L2_2 = L2_2(L3_3)
  L3_3 = mp
  L3_3 = L3_3.get_contextdata
  L4_4 = mp
  L4_4 = L4_4.CONTEXT_DATA_FILEPATH
  L3_3 = L3_3(L4_4)
  if L3_3 ~= nil then
    L4_4 = #L3_3
  elseif L4_4 < 1 then
    L4_4 = mp
    L4_4 = L4_4.CLEAN
    return L4_4
  end
  L4_4 = MpCommon
  L4_4 = L4_4.PathToWin32Path
  L5_5 = L3_3
  L4_4 = L4_4(L5_5)
  if L4_4 ~= nil then
    L5_5 = #L4_4
  elseif L5_5 < 1 then
    L5_5 = mp
    L5_5 = L5_5.CLEAN
    return L5_5
  end
  L5_5 = string
  L5_5 = L5_5.lower
  L6_6 = L4_4
  L5_5 = L5_5(L6_6)
  L6_6 = {}
  L6_6["ww2help.dll"] = ""
  L6_6["cryptsp.dll"] = ""
  L6_6["fxsst.dll"] = ""
  L6_6["secur32.dll"] = ""
  L8_8 = L5_5
  L7_7 = L5_5.find
  L9_9 = "\\windows\\"
  L10_10 = 1
  L11_11 = true
  L7_7 = L7_7(L8_8, L9_9, L10_10, L11_11)
  if L7_7 then
    L7_7 = L6_6[L2_2]
    if L7_7 then
      L7_7 = mp
      L7_7 = L7_7.IsTrustedFile
      L8_8 = true
      L8_8 = L7_7(L8_8)
      if L7_7 ~= true then
        L9_9 = mp
        L9_9 = L9_9.get_contextdata
        L10_10 = mp
        L10_10 = L10_10.CONTEXT_DATA_PROCESSNAME
        L9_9 = L9_9(L10_10)
        if L9_9 ~= nil then
          L10_10 = #L9_9
        elseif L10_10 < 1 then
          L10_10 = mp
          L10_10 = L10_10.CLEAN
          return L10_10
        end
        L10_10 = string
        L10_10 = L10_10.lower
        L11_11 = L9_9
        L10_10 = L10_10(L11_11)
        L11_11 = mp
        L11_11 = L11_11.get_contextdata
        L12_12 = mp
        L12_12 = L12_12.CONTEXT_DATA_PROCESSDEVICEPATH
        L11_11 = L11_11(L12_12)
        if L11_11 ~= nil then
          L12_12 = #L11_11
        elseif L12_12 < 1 then
          L12_12 = mp
          L12_12 = L12_12.CLEAN
          return L12_12
        end
        L12_12 = MpCommon
        L12_12 = L12_12.PathToWin32Path
        L13_13 = L11_11
        L12_12 = L12_12(L13_13)
        if L12_12 ~= nil then
          L13_13 = #L12_12
        elseif L13_13 < 1 then
          L13_13 = mp
          L13_13 = L13_13.CLEAN
          return L13_13
        end
        L13_13 = string
        L13_13 = L13_13.lower
        L14_14 = L12_12
        L13_13 = L13_13(L14_14)
        L14_14 = L13_13
        L14_14 = L14_14 .. "\\" .. L10_10
        mp.ReportLowfi(L14_14, 4051462255)
        return mp.INFECTED
      end
    end
  end
  L7_7 = mp
  L7_7 = L7_7.CLEAN
  return L7_7
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
