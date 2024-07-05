local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = mp
L0_0 = L0_0.IsHipsRuleEnabled
L1_1 = "01443614-cd74-433a-b99e-2ecdc07bfc25"
L0_0 = L0_0(L1_1)
if not L0_0 then
  L0_0 = mp
  L0_0 = L0_0.CLEAN
  return L0_0
end
L0_0 = mp
L0_0 = L0_0.get_parent_filehandle
L0_0 = L0_0()
L1_1 = mp
L1_1 = L1_1.is_handle_nil
L2_2 = L0_0
L1_1 = L1_1(L2_2)
if not L1_1 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.get_contextdata
L2_2 = mp
L2_2 = L2_2.CONTEXT_DATA_SCANREASON
L1_1 = L1_1(L2_2)
L2_2 = mp
L2_2 = L2_2.SCANREASON_ONOPEN
if L1_1 ~= L2_2 then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = versioning
L1_1 = L1_1.GetOsBuildNumber
L1_1 = L1_1()
L2_2 = mp
L2_2 = L2_2.get_contextdata
L3_3 = mp
L3_3 = L3_3.CONTEXT_DATA_OPEN_CREATEPROCESS_HINT
L2_2 = L2_2(L3_3)
if L2_2 == true or L1_1 < 10240 then
  L2_2 = MpCommon
  L2_2 = L2_2.IsSampled
  L3_3 = 1000
  L4_4 = false
  L5_5 = true
  L6_6 = true
  L2_2 = L2_2(L3_3, L4_4, L5_5, L6_6)
  if L2_2 == true then
    L2_2 = mp
    L2_2 = L2_2.getfilename
    L3_3 = mp
    L3_3 = L3_3.FILEPATH_QUERY_FULL
    L2_2 = L2_2(L3_3)
    if L2_2 ~= nil and L2_2 ~= "" then
      L3_3 = string
      L3_3 = L3_3.lower
      L4_4 = MpCommon
      L4_4 = L4_4.PathToWin32Path
      L5_5 = L2_2
      L7_7 = L4_4(L5_5)
      L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7, L4_4(L5_5))
      L2_2 = L3_3
      L3_3 = mp
      L3_3 = L3_3.IsPathExcludedForHipsRule
      L4_4 = L2_2
      L5_5 = "01443614-cd74-433a-b99e-2ecdc07bfc25"
      L3_3 = L3_3(L4_4, L5_5)
      if L3_3 then
        L3_3 = mp
        L3_3 = L3_3.CLEAN
        return L3_3
      end
      L3_3 = string
      L3_3 = L3_3.find
      L4_4 = L2_2
      L5_5 = "^.:\\programdata\\chocolatey\\bin\\[^%.\\]+%.exe$"
      L3_3 = L3_3(L4_4, L5_5)
      if L3_3 ~= nil then
        L3_3 = mp
        L3_3 = L3_3.CLEAN
        return L3_3
      end
      L3_3 = string
      L3_3 = L3_3.find
      L4_4 = L2_2
      L5_5 = string
      L5_5 = L5_5.lower
      L6_6 = MpCommon
      L6_6 = L6_6.ExpandEnvironmentVariables
      L7_7 = "%systemroot%"
      L7_7 = L6_6(L7_7)
      L5_5 = L5_5(L6_6, L7_7, L6_6(L7_7))
      L6_6 = "\\system32\\mrt.exe"
      L5_5 = L5_5 .. L6_6
      L6_6 = 1
      L7_7 = true
      L3_3 = L3_3(L4_4, L5_5, L6_6, L7_7)
      if L3_3 ~= nil then
        L3_3 = mp
        L3_3 = L3_3.CLEAN
        return L3_3
      end
      L3_3 = string
      L3_3 = L3_3.find
      L4_4 = L2_2
      L5_5 = "^.:\\windows\\"
      L3_3 = L3_3(L4_4, L5_5)
      if L3_3 ~= nil then
        L3_3 = mp
        L3_3 = L3_3.get_contextdata
        L4_4 = mp
        L4_4 = L4_4.CONTEXT_DATA_PROCESSNAME
        L3_3 = L3_3(L4_4)
        if L3_3 ~= nil and L3_3 ~= "" then
          L4_4 = string
          L4_4 = L4_4.lower
          L5_5 = L3_3
          L4_4 = L4_4(L5_5)
          if L4_4 == "powershell.exe" then
            L4_4 = mp
            L4_4 = L4_4.get_contextdata
            L5_5 = mp
            L5_5 = L5_5.CONTEXT_DATA_PROCESS_PPID
            L4_4 = L4_4(L5_5)
            if L4_4 ~= nil then
              L5_5 = mp
              L5_5 = L5_5.GetProcessCommandLine
              L6_6 = L4_4
              L5_5 = L5_5(L6_6)
              if L5_5 ~= nil then
                L6_6 = #L5_5
                if L6_6 > 50 then
                  L6_6 = string
                  L6_6 = L6_6.find
                  L7_7 = string
                  L7_7 = L7_7.lower
                  L7_7 = L7_7(L5_5)
                  L6_6 = L6_6(L7_7, "-executionpolicy allsigned .+windows defender advanced threat protection\\datacollection")
                  if L6_6 ~= nil then
                    L6_6 = mp
                    L6_6 = L6_6.CLEAN
                    return L6_6
                  end
                end
              end
            end
          end
        end
      end
    end
    L3_3 = mp
    L3_3 = L3_3.IsTrustedFile
    L4_4 = false
    L4_4 = L3_3(L4_4)
    if L3_3 == false then
      L5_5 = mp
      L5_5 = L5_5.INFECTED
      return L5_5
    end
  else
    L2_2 = mp
    L2_2 = L2_2.IsTrustedFile
    L3_3 = false
    L3_3 = L2_2(L3_3)
    if L2_2 == false then
      L4_4 = mp
      L4_4 = L4_4.getfilename
      L5_5 = mp
      L5_5 = L5_5.bitor
      L6_6 = mp
      L6_6 = L6_6.FILEPATH_QUERY_FULL
      L7_7 = mp
      L7_7 = L7_7.FILEPATH_QUERY_LOWERCASE
      L7_7 = L5_5(L6_6, L7_7)
      L4_4 = L4_4(L5_5, L6_6, L7_7, L5_5(L6_6, L7_7))
      if L4_4 ~= nil and L4_4 ~= "" then
        L5_5 = string
        L5_5 = L5_5.lower
        L6_6 = MpCommon
        L6_6 = L6_6.PathToWin32Path
        L7_7 = L4_4
        L7_7 = L6_6(L7_7)
        L5_5 = L5_5(L6_6, L7_7, L6_6(L7_7))
        L4_4 = L5_5
        L5_5 = mp
        L5_5 = L5_5.IsPathExcludedForHipsRule
        L6_6 = L4_4
        L7_7 = "01443614-cd74-433a-b99e-2ecdc07bfc25"
        L5_5 = L5_5(L6_6, L7_7)
        if L5_5 then
          L5_5 = mp
          L5_5 = L5_5.CLEAN
          return L5_5
        end
        L5_5 = string
        L5_5 = L5_5.find
        L6_6 = L4_4
        L7_7 = "^.:\\programdata\\chocolatey\\bin\\[^%.\\]+%.exe$"
        L5_5 = L5_5(L6_6, L7_7)
        if L5_5 ~= nil then
          L5_5 = mp
          L5_5 = L5_5.CLEAN
          return L5_5
        end
        L5_5 = string
        L5_5 = L5_5.find
        L6_6 = L4_4
        L7_7 = string
        L7_7 = L7_7.lower
        L7_7 = L7_7(MpCommon.ExpandEnvironmentVariables("%systemroot%"))
        L7_7 = L7_7 .. "\\system32\\mrt.exe"
        L5_5 = L5_5(L6_6, L7_7, 1, true)
        if L5_5 ~= nil then
          L5_5 = mp
          L5_5 = L5_5.CLEAN
          return L5_5
        end
        L5_5 = string
        L5_5 = L5_5.find
        L6_6 = L4_4
        L7_7 = "^.:\\windows\\"
        L5_5 = L5_5(L6_6, L7_7)
        if L5_5 ~= nil then
          L5_5 = mp
          L5_5 = L5_5.get_contextdata
          L6_6 = mp
          L6_6 = L6_6.CONTEXT_DATA_PROCESSNAME
          L5_5 = L5_5(L6_6)
          if L5_5 ~= nil and L5_5 ~= "" then
            L6_6 = string
            L6_6 = L6_6.lower
            L7_7 = L5_5
            L6_6 = L6_6(L7_7)
            if L6_6 == "powershell.exe" then
              L6_6 = mp
              L6_6 = L6_6.get_contextdata
              L7_7 = mp
              L7_7 = L7_7.CONTEXT_DATA_PROCESS_PPID
              L6_6 = L6_6(L7_7)
              if L6_6 ~= nil then
                L7_7 = mp
                L7_7 = L7_7.GetProcessCommandLine
                L7_7 = L7_7(L6_6)
                if L7_7 ~= nil and #L7_7 > 50 and string.find(string.lower(L7_7), "-executionpolicy allsigned .+windows defender advanced threat protection\\datacollection") ~= nil then
                  return mp.CLEAN
                end
              end
            end
          end
        end
      end
      L5_5 = mp
      L5_5 = L5_5.INFECTED
      return L5_5
    end
  end
end
L2_2 = mp
L2_2 = L2_2.CLEAN
return L2_2
