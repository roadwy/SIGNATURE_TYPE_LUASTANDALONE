local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_SCANREASON
L0_0 = L0_0(L1_1)
L1_1 = mp
L1_1 = L1_1.SCANREASON_ONOPEN
if L0_0 ~= L1_1 then
  L1_1 = mp
  L1_1 = L1_1.SCANREASON_ONMODIFIEDHANDLECLOSE
  if L0_0 ~= L1_1 then
    L1_1 = mp
    L1_1 = L1_1.CLEAN
    return L1_1
  end
end
L1_1 = mp
L1_1 = L1_1.IsHipsRuleEnabled
L2_2 = "a8f5898e-1dc8-49a9-9878-85004b8a61e6"
L1_1 = L1_1(L2_2)
if not L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = "enghipscpy:blockaccess:a8f5898e-1dc8-49a9-9878-85004b8a61e6"
L2_2 = mp
L2_2 = L2_2.get_contextdata
L3_3 = mp
L3_3 = L3_3.CONTEXT_DATA_FILENAME
L2_2 = L2_2(L3_3)
if L2_2 == nil or L2_2 == "" then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
L3_3 = string
L3_3 = L3_3.lower
L4_4 = L2_2
L3_3 = L3_3(L4_4)
L2_2 = L3_3
L3_3 = mp
L3_3 = L3_3.getfilename
L4_4 = mp
L4_4 = L4_4.bitor
L5_5 = mp
L5_5 = L5_5.FILEPATH_QUERY_FULL
L6_6 = mp
L6_6 = L6_6.FILEPATH_QUERY_LOWERCASE
L15_15 = L4_4(L5_5, L6_6)
L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L4_4(L5_5, L6_6))
if L3_3 == nil or L3_3 == "" then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = string
L4_4 = L4_4.lower
L5_5 = MpCommon
L5_5 = L5_5.PathToWin32Path
L6_6 = L3_3
L15_15 = L5_5(L6_6)
L4_4 = L4_4(L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L5_5(L6_6))
L3_3 = L4_4
L4_4 = mp
L4_4 = L4_4.IsPathExcludedForHipsRule
L5_5 = L3_3
L6_6 = "a8f5898e-1dc8-49a9-9878-85004b8a61e6"
L4_4 = L4_4(L5_5, L6_6)
if L4_4 then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = mp
L4_4 = L4_4.SCANREASON_ONOPEN
if L0_0 == L4_4 then
  L4_4 = MpCommon
  L4_4 = L4_4.QueryPersistContext
  L5_5 = L3_3
  L6_6 = L1_1
  L4_4 = L4_4(L5_5, L6_6)
  if not L4_4 then
    L4_4 = mp
    L4_4 = L4_4.CLEAN
    return L4_4
  end
  L4_4 = mp
  L4_4 = L4_4.set_mpattribute
  L5_5 = "MpDisableCaching"
  L4_4(L5_5)
  L4_4 = mp
  L4_4 = L4_4.SetHipsRule
  L5_5 = "a8f5898e-1dc8-49a9-9878-85004b8a61e6"
  L4_4(L5_5)
  L4_4 = mp
  L4_4 = L4_4.BLOCKEXECUTION
  return L4_4
else
  L4_4 = mp
  L4_4 = L4_4.SCANREASON_ONMODIFIEDHANDLECLOSE
  if L0_0 == L4_4 then
    L4_4 = mp
    L4_4 = L4_4.get_contextdata
    L5_5 = mp
    L5_5 = L5_5.CONTEXT_DATA_NEWLYCREATEDHINT
    L4_4 = L4_4(L5_5)
    if not L4_4 then
      L4_4 = mp
      L4_4 = L4_4.CLEAN
      return L4_4
    end
    L4_4 = MpCommon
    L4_4 = L4_4.ExpandEnvironmentVariables
    L5_5 = "%ExchangeInstallPath%"
    L4_4 = L4_4(L5_5)
    if L4_4 == nil or L4_4 == "" then
      L5_5 = mp
      L5_5 = L5_5.CLEAN
      return L5_5
    end
    L5_5 = sysio
    L5_5 = L5_5.IsFileExists
    L6_6 = L4_4
    L7_7 = "bin\\Microsoft.Exchange.Store.Service.exe"
    L6_6 = L6_6 .. L7_7
    L5_5 = L5_5(L6_6)
    if not L5_5 then
      L5_5 = mp
      L5_5 = L5_5.CLEAN
      return L5_5
    end
    L5_5 = string
    L5_5 = L5_5.lower
    L6_6 = L4_4
    L5_5 = L5_5(L6_6)
    L6_6 = string
    L6_6 = L6_6.find
    L7_7 = L3_3
    L8_8 = L5_5
    L9_9 = "clientaccess\\oab\\temp\\"
    L8_8 = L8_8 .. L9_9
    L9_9 = 1
    L6_6 = L6_6(L7_7, L8_8, L9_9, L10_10)
    if L6_6 ~= nil then
      L6_6 = mp
      L6_6 = L6_6.CLEAN
      return L6_6
    end
    if L2_2 == "asrtestfile-a8f5898e-1dc8-49a9-9878-85004b8a61e6.asp" then
      L6_6 = mp
      L6_6 = L6_6.set_mpattribute
      L7_7 = "MpDisableCaching"
      L6_6(L7_7)
      L6_6 = MpCommon
      L6_6 = L6_6.GetPersistContextCount
      L7_7 = L3_3
      L6_6 = L6_6(L7_7)
      if L6_6 == 0 then
        L6_6 = {}
        L7_7 = table
        L7_7 = L7_7.insert
        L8_8 = L6_6
        L9_9 = L1_1
        L7_7(L8_8, L9_9)
        L7_7 = MpCommon
        L7_7 = L7_7.SetPersistContext
        L8_8 = L3_3
        L9_9 = L6_6
        L7_7(L8_8, L9_9, L10_10)
      else
        L6_6 = MpCommon
        L6_6 = L6_6.QueryPersistContext
        L7_7 = L3_3
        L8_8 = L1_1
        L6_6 = L6_6(L7_7, L8_8)
        if not L6_6 then
          L6_6 = MpCommon
          L6_6 = L6_6.AppendPersistContext
          L7_7 = L3_3
          L8_8 = L1_1
          L9_9 = 0
          L6_6(L7_7, L8_8, L9_9)
        end
      end
      L6_6 = mp
      L6_6 = L6_6.SetHipsRule
      L7_7 = "a8f5898e-1dc8-49a9-9878-85004b8a61e6"
      L6_6(L7_7)
      L6_6 = mp
      L6_6 = L6_6.BLOCKACCESS
      return L6_6
    else
      L6_6 = MpCommon
      L6_6 = L6_6.ExpandEnvironmentVariables
      L7_7 = "%SystemDrive%\\inetpub\\wwwroot"
      L6_6 = L6_6(L7_7)
      if L6_6 == nil or L6_6 == "" then
        L7_7 = mp
        L7_7 = L7_7.CLEAN
        return L7_7
      end
      L7_7 = string
      L7_7 = L7_7.lower
      L8_8 = L6_6
      L7_7 = L7_7(L8_8)
      if L7_7 == nil or L7_7 == "" then
        L8_8 = mp
        L8_8 = L8_8.CLEAN
        return L8_8
      end
      L8_8 = string
      L8_8 = L8_8.find
      L9_9 = L3_3
      L8_8 = L8_8(L9_9, L10_10, L11_11, L12_12)
      if L8_8 then
        L8_8 = mp
        L8_8 = L8_8.set_mpattribute
        L9_9 = "MpDisableCaching"
        L8_8(L9_9)
        L8_8 = MpCommon
        L8_8 = L8_8.GetPersistContextCount
        L9_9 = L3_3
        L8_8 = L8_8(L9_9)
        if L8_8 == 0 then
          L8_8 = {}
          L9_9 = table
          L9_9 = L9_9.insert
          L9_9(L10_10, L11_11)
          L9_9 = MpCommon
          L9_9 = L9_9.SetPersistContext
          L9_9(L10_10, L11_11, L12_12)
        else
          L8_8 = MpCommon
          L8_8 = L8_8.QueryPersistContext
          L9_9 = L3_3
          L8_8 = L8_8(L9_9, L10_10)
          if not L8_8 then
            L8_8 = MpCommon
            L8_8 = L8_8.AppendPersistContext
            L9_9 = L3_3
            L8_8(L9_9, L10_10, L11_11)
          end
        end
        L8_8 = mp
        L8_8 = L8_8.SetHipsRule
        L9_9 = "a8f5898e-1dc8-49a9-9878-85004b8a61e6"
        L8_8(L9_9)
        L8_8 = mp
        L8_8 = L8_8.BLOCKACCESS
        return L8_8
      end
      L8_8 = MpCommon
      L8_8 = L8_8.ExpandEnvironmentVariables
      L9_9 = "%windir%\\system32\\inetsrv\\config\\applicationHost.config"
      L8_8 = L8_8(L9_9)
      if L8_8 == nil or L8_8 == "" then
        L9_9 = mp
        L9_9 = L9_9.CLEAN
        return L9_9
      end
      L9_9 = MpCommon
      L9_9 = L9_9.GetIisInstallPaths
      L9_9 = L9_9(L10_10)
      if L9_9 == nil or L9_9 == "" then
        return L10_10
      end
      for L13_13, L14_14 in L10_10(L11_11) do
        L15_15 = L14_14.Path
        if L15_15 ~= nil then
          L15_15 = L14_14.Path
          if L15_15 ~= "" then
            L15_15 = string
            L15_15 = L15_15.find
            L15_15 = L15_15(L3_3, string.lower(L14_14.Path), 1, true)
            if L15_15 then
              L15_15 = mp
              L15_15 = L15_15.set_mpattribute
              L15_15("MpDisableCaching")
              L15_15 = MpCommon
              L15_15 = L15_15.GetPersistContextCount
              L15_15 = L15_15(L3_3)
              if L15_15 == 0 then
                L15_15 = {}
                table.insert(L15_15, L1_1)
                MpCommon.SetPersistContext(L3_3, L15_15, 0)
              else
                L15_15 = MpCommon
                L15_15 = L15_15.QueryPersistContext
                L15_15 = L15_15(L3_3, L1_1)
                if not L15_15 then
                  L15_15 = MpCommon
                  L15_15 = L15_15.AppendPersistContext
                  L15_15(L3_3, L1_1, 0)
                end
              end
              L15_15 = mp
              L15_15 = L15_15.SetHipsRule
              L15_15("a8f5898e-1dc8-49a9-9878-85004b8a61e6")
              L15_15 = mp
              L15_15 = L15_15.BLOCKACCESS
              return L15_15
            end
          end
        end
      end
    end
  end
end
L4_4 = mp
L4_4 = L4_4.CLEAN
return L4_4
