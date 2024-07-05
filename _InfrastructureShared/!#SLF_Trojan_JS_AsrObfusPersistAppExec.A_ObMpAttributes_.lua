local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
if not L0_0 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.SCANREASON_AMSI
if L0_0 == L1_1 then
  L1_1 = mp
  L1_1 = L1_1.get_mpattribute
  L2_2 = "SCPT:JS/AsrobfusShellExec.A"
  L1_1 = L1_1(L2_2)
  if L1_1 then
    L1_1 = mp
    L1_1 = L1_1.get_contextdata
    L2_2 = mp
    L2_2 = L2_2.CONTEXT_DATA_AMSI_APPNAME
    L1_1 = L1_1(L2_2)
    if not L1_1 then
      L2_2 = mp
      L2_2 = L2_2.CLEAN
      return L2_2
    end
    if L1_1 == "JScript" or L1_1 == "VBScript" then
      L2_2 = mp
      L2_2 = L2_2.get_contextdata
      L3_3 = mp
      L3_3 = L3_3.CONTEXT_DATA_AMSI_CONTENTNAME
      L2_2 = L2_2(L3_3)
      if not L2_2 then
        L3_3 = mp
        L3_3 = L3_3.CLEAN
        return L3_3
      end
      L3_3 = string
      L3_3 = L3_3.lower
      L4_4 = L2_2
      L3_3 = L3_3(L4_4)
      if not L3_3 then
        L4_4 = mp
        L4_4 = L4_4.CLEAN
        return L4_4
      end
      L4_4 = MpCommon
      L4_4 = L4_4.QueryPersistContext
      L5_5 = L3_3
      L4_4 = L4_4(L5_5, "AsrObfusWasScanned")
      if L4_4 then
        L4_4 = MpCommon
        L4_4 = L4_4.QueryPersistContext
        L5_5 = L3_3
        L4_4 = L4_4(L5_5, "AsrObfusPersist")
        if not L4_4 then
          L4_4 = sysio
          L4_4 = L4_4.IsFileExists
          L5_5 = L3_3
          L4_4 = L4_4(L5_5)
          if L4_4 then
            L4_4 = sysio
            L4_4 = L4_4.GetFileSize
            L5_5 = L3_3
            L4_4 = L4_4(L5_5)
            if not L4_4 or L4_4 > 300000 then
              L5_5 = mp
              L5_5 = L5_5.CLEAN
              return L5_5
            end
            L5_5 = string
            L5_5 = L5_5.lower
            L5_5 = L5_5(sysio.ReadFile(L3_3, 0, L4_4))
            if not L5_5 then
              return mp.CLEAN
            end
            if not string.find(L5_5, "shell.application", 1, true) and not string.find(L5_5, ".shellexecute", 1, true) then
              mp.ReportLowfi(L3_3, 2066493919)
              return mp.INFECTED
            end
          end
        end
      end
    end
  else
    L1_1 = mp
    L1_1 = L1_1.getfilename
    L1_1 = L1_1()
    if not L1_1 then
      L2_2 = mp
      L2_2 = L2_2.CLEAN
      return L2_2
    end
    L2_2 = string
    L2_2 = L2_2.lower
    L3_3 = L1_1
    L2_2 = L2_2(L3_3)
    L1_1 = L2_2
    L2_2 = MpCommon
    L2_2 = L2_2.AppendPersistContext
    L3_3 = L1_1
    L4_4 = "AsrObfusWasScanned"
    L5_5 = 0
    L2_2(L3_3, L4_4, L5_5)
    L2_2 = mp
    L2_2 = L2_2.get_mpattribute
    L3_3 = "SCPT:JS/AsrobfusShellExec.B"
    L2_2 = L2_2(L3_3)
    if L2_2 then
      L2_2 = mp
      L2_2 = L2_2.get_mpattribute
      L3_3 = "SCPT:JS/AsrobfusShellExec.C"
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
end
L1_1 = mp
L1_1 = L1_1.CLEAN
return L1_1
