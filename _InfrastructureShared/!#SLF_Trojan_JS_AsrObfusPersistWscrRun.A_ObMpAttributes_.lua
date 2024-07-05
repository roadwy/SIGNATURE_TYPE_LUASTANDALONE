local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_AMSI
if L0_0 == L1_1 then
  L1_1 = mp
  L1_1 = L1_1.get_mpattribute
  L2_2 = "SCPT:JS/AsrobfusWscrRun.A"
  L1_1 = L1_1(L2_2)
  if L1_1 then
    L1_1 = pcall
    L2_2 = mp
    L2_2 = L2_2.get_contextdata
    L3_3 = mp
    L3_3 = L3_3.CONTEXT_DATA_AMSI_APPNAME
    L2_2 = L1_1(L2_2, L3_3)
    if L1_1 and (L2_2 == "JScript" or L2_2 == "VBScript") then
      L3_3 = pcall
      L4_4 = mp
      L4_4 = L4_4.get_contextdata
      L5_5 = mp
      L5_5 = L5_5.CONTEXT_DATA_AMSI_CONTENTNAME
      L4_4 = L3_3(L4_4, L5_5)
      if L3_3 and L4_4 ~= nil then
        L5_5 = string
        L5_5 = L5_5.lower
        L6_6 = L4_4
        L5_5 = L5_5(L6_6)
        L7_7 = L5_5
        L6_6 = L5_5.find
        L6_6 = L6_6(L7_7, "program_files", 1, true)
        if not L6_6 then
          L7_7 = L5_5
          L6_6 = L5_5.find
          L6_6 = L6_6(L7_7, ":\\windows\\", 1, true)
          if not L6_6 then
            L7_7 = L5_5
            L6_6 = L5_5.find
            L6_6 = L6_6(L7_7, "\\netlogon\\windows7\\", 1, true)
          end
        elseif L6_6 then
          L6_6 = mp
          L6_6 = L6_6.CLEAN
          return L6_6
        end
        L6_6 = MpCommon
        L6_6 = L6_6.QueryPersistContext
        L7_7 = L5_5
        L6_6 = L6_6(L7_7, "AsrObfusWasScanned")
        if L6_6 then
          L6_6 = MpCommon
          L6_6 = L6_6.QueryPersistContext
          L7_7 = L5_5
          L6_6 = L6_6(L7_7, "AsrObfusPersist")
          if not L6_6 then
            L6_6 = sysio
            L6_6 = L6_6.IsFileExists
            L7_7 = L5_5
            L6_6 = L6_6(L7_7)
            if L6_6 then
              L6_6 = sysio
              L6_6 = L6_6.GetFileSize
              L7_7 = L5_5
              L6_6 = L6_6(L7_7)
              if L6_6 > 300000 then
                L7_7 = mp
                L7_7 = L7_7.CLEAN
                return L7_7
              end
              L7_7 = string
              L7_7 = L7_7.lower
              L7_7 = L7_7(sysio.ReadFile(L5_5, 0, L6_6))
              if L7_7 == nil then
                return mp.CLEAN
              end
              if string.find(L7_7, "wscript.shell", 1, true) == nil and string.find(L7_7, ".run", 1, true) == nil then
                mp.ReportLowfi(L5_5, 2502054131)
                return mp.INFECTED
              end
            end
          end
        end
      end
    end
  end
else
  L1_1 = string
  L1_1 = L1_1.lower
  L2_2 = mp
  L2_2 = L2_2.getfilename
  L7_7 = L2_2()
  L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L2_2())
  L2_2 = MpCommon
  L2_2 = L2_2.AppendPersistContext
  L3_3 = L1_1
  L4_4 = "AsrObfusWasScanned"
  L5_5 = 0
  L2_2(L3_3, L4_4, L5_5)
  L2_2 = mp
  L2_2 = L2_2.get_mpattribute
  L3_3 = "SCPT:JS/AsrobfusWscrRun.B"
  L2_2 = L2_2(L3_3)
  if L2_2 then
    L2_2 = mp
    L2_2 = L2_2.get_mpattribute
    L3_3 = "SCPT:JS/AsrobfusWscrRun.C"
    L2_2 = L2_2(L3_3)
    if L2_2 then
      L2_2 = MpCommon
      L2_2 = L2_2.AppendPersistContext
      L3_3 = L1_1
      L4_4 = "AsrObfusPersist"
      L5_5 = 0
      L2_2(L3_3, L4_4, L5_5)
    end
  end
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
