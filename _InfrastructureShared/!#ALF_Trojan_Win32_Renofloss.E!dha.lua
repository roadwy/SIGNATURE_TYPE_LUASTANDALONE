local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
if L1_1 == L0_0 then
  L1_1 = mp
  L1_1 = L1_1.get_contextdata
  L2_2 = mp
  L2_2 = L2_2.CONTEXT_DATA_NEWLYCREATEDHINT
  L1_1 = L1_1(L2_2)
  if true == L1_1 then
    L1_1 = mp
    L1_1 = L1_1.get_mpattribute
    L2_2 = "HSTR:RenoFlossLoader"
    L1_1 = L1_1(L2_2)
    if L1_1 then
      L1_1 = mp
      L1_1 = L1_1.get_contextdata
      L2_2 = mp
      L2_2 = L2_2.CONTEXT_DATA_PROCESSDEVICEPATH
      L1_1 = L1_1(L2_2)
      L2_2 = mp
      L2_2 = L2_2.get_contextdata
      L3_3 = mp
      L3_3 = L3_3.CONTEXT_DATA_PROCESSNAME
      L2_2 = L2_2(L3_3)
      if L2_2 ~= nil and L1_1 ~= nil then
        L3_3 = mp
        L3_3 = L3_3.ReportLowfi
        L4_4 = MpCommon
        L4_4 = L4_4.PathToWin32Path
        L5_5 = L1_1
        L4_4 = L4_4(L5_5)
        L5_5 = "\\"
        L6_6 = L2_2
        L4_4 = L4_4 .. L5_5 .. L6_6
        L5_5 = 2439729955
        L3_3(L4_4, L5_5)
      end
    end
  end
else
  L1_1 = mp
  L1_1 = L1_1.SCANREASON_ONOPEN
  if L1_1 == L0_0 then
    L1_1 = mp
    L1_1 = L1_1.get_contextdata
    L2_2 = mp
    L2_2 = L2_2.CONTEXT_DATA_OPEN_CREATEPROCESS_HINT
    L1_1 = L1_1(L2_2)
    if true == L1_1 then
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
      L6_6 = L2_2(L3_3, L4_4)
      L2_2 = L1_1(L2_2, L3_3, L4_4, L5_5, L6_6, L2_2(L3_3, L4_4))
      L3_3 = string
      L3_3 = L3_3.lower
      L4_4 = mp
      L4_4 = L4_4.ContextualExpandEnvironmentVariables
      L5_5 = "%temp%"
      L4_4 = L4_4(L5_5)
      L5_5 = "\\"
      L6_6 = "rarsfx"
      L4_4 = L4_4 .. L5_5 .. L6_6
      L3_3 = L3_3(L4_4)
      L5_5 = L1_1
      L4_4 = L1_1.find
      L6_6 = L3_3
      L4_4 = L4_4(L5_5, L6_6, 1, true)
      if L4_4 ~= nil then
        L4_4 = {}
        L4_4["ccmexec.exe"] = ""
        L4_4["tpvcgateway.exe"] = ""
        L4_4["cmrcviewer.exe"] = ""
        L5_5 = L4_4[L2_2]
        if L5_5 then
          L5_5 = mp
          L5_5 = L5_5.get_contextdata
          L6_6 = mp
          L6_6 = L6_6.CONTEXT_DATA_PROCESSDEVICEPATH
          L5_5 = L5_5(L6_6)
          L6_6 = mp
          L6_6 = L6_6.get_contextdata
          L6_6 = L6_6(mp.CONTEXT_DATA_PROCESSNAME)
          if L6_6 ~= nil and L5_5 ~= nil then
            mp.ReportLowfi(MpCommon.PathToWin32Path(L5_5) .. "\\" .. L6_6, 2439729955)
            return mp.INFECTED
          end
        end
      end
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
