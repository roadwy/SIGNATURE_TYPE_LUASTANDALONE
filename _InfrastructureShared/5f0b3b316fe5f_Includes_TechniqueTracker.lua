local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17
L4_4 = this_sigattrlog
L4_4 = L4_4[1]
L4_4 = L4_4.matched
if L4_4 then
  L4_4 = this_sigattrlog
  L4_4 = L4_4[1]
  L4_4 = L4_4.utf8p1
  if L4_4 ~= nil then
    L4_4 = string
    L4_4 = L4_4.lower
    L5_5 = this_sigattrlog
    L5_5 = L5_5[1]
    L5_5 = L5_5.utf8p1
    L4_4 = L4_4(L5_5)
    L1_1 = L4_4
    L4_4 = string
    L4_4 = L4_4.match
    L5_5 = L1_1
    L6_6 = "\\([^\\]+)$"
    L4_4 = L4_4(L5_5, L6_6)
    L0_0 = L4_4
    L4_4 = string
    L4_4 = L4_4.lower
    L5_5 = this_sigattrlog
    L5_5 = L5_5[1]
    L5_5 = L5_5.utf8p2
    L4_4 = L4_4(L5_5)
    L3_3 = L4_4
    L4_4 = this_sigattrlog
    L4_4 = L4_4[1]
    L2_2 = L4_4.ppid
  end
end
if L1_1 == nil or L0_0 == nil or L2_2 == nil then
  L4_4 = mp
  L4_4 = L4_4.CLEAN
  return L4_4
end
L4_4 = nil
L5_5 = {}
L6_6 = "T1547.001"
L7_7, L8_8 = nil, nil
L9_9 = true
L10_10 = this_sigattrlog
L10_10 = L10_10[2]
L10_10 = L10_10.matched
if L10_10 then
  L10_10 = this_sigattrlog
  L10_10 = L10_10[2]
  L10_10 = L10_10.utf8p2
  if L10_10 ~= nil then
    L10_10 = this_sigattrlog
    L10_10 = L10_10[2]
    L4_4 = L10_10.utf8p2
    L7_7 = "reg_run"
  end
else
  L10_10 = this_sigattrlog
  L10_10 = L10_10[3]
  L10_10 = L10_10.matched
  if L10_10 then
    L10_10 = this_sigattrlog
    L10_10 = L10_10[3]
    L10_10 = L10_10.utf8p2
    if L10_10 ~= nil then
      L10_10 = this_sigattrlog
      L10_10 = L10_10[3]
      L4_4 = L10_10.utf8p2
      L7_7 = "reg_runonce"
    end
  else
    L10_10 = this_sigattrlog
    L10_10 = L10_10[4]
    L10_10 = L10_10.matched
    if L10_10 then
      L10_10 = this_sigattrlog
      L10_10 = L10_10[4]
      L10_10 = L10_10.utf8p2
      if L10_10 ~= nil then
        L10_10 = this_sigattrlog
        L10_10 = L10_10[4]
        L4_4 = L10_10.utf8p2
        L7_7 = "reg_runonceex"
      end
    else
      L10_10 = this_sigattrlog
      L10_10 = L10_10[5]
      L10_10 = L10_10.matched
      if L10_10 then
        L10_10 = this_sigattrlog
        L10_10 = L10_10[5]
        L10_10 = L10_10.utf8p2
        if L10_10 ~= nil then
          L10_10 = this_sigattrlog
          L10_10 = L10_10[5]
          L4_4 = L10_10.utf8p2
          L7_7 = "reg_runservices"
        end
      else
        L10_10 = this_sigattrlog
        L10_10 = L10_10[6]
        L10_10 = L10_10.matched
        if L10_10 then
          L10_10 = this_sigattrlog
          L10_10 = L10_10[6]
          L10_10 = L10_10.utf8p2
          if L10_10 ~= nil then
            L10_10 = this_sigattrlog
            L10_10 = L10_10[6]
            L4_4 = L10_10.utf8p2
            L7_7 = "reg_runservicesonce"
          end
        else
          L10_10 = this_sigattrlog
          L10_10 = L10_10[7]
          L10_10 = L10_10.matched
          if L10_10 then
            L10_10 = this_sigattrlog
            L10_10 = L10_10[7]
            L10_10 = L10_10.utf8p2
            if L10_10 ~= nil then
              L10_10 = this_sigattrlog
              L10_10 = L10_10[7]
              L4_4 = L10_10.utf8p2
              L7_7 = "reg_explorer_run"
            end
          else
            L10_10 = this_sigattrlog
            L10_10 = L10_10[8]
            L10_10 = L10_10.matched
            if L10_10 then
              L10_10 = this_sigattrlog
              L10_10 = L10_10[8]
              L10_10 = L10_10.utf8p2
              if L10_10 ~= nil then
                L10_10 = this_sigattrlog
                L10_10 = L10_10[8]
                L4_4 = L10_10.utf8p2
                L7_7 = "reg_winlogon_shell"
                L6_6 = "T1547.004"
                L10_10 = table
                L10_10 = L10_10.insert
                L11_11 = L5_5
                L12_12 = "BM_MT1547.001:persistence"
                L10_10(L11_11, L12_12)
              end
            else
              L10_10 = this_sigattrlog
              L10_10 = L10_10[9]
              L10_10 = L10_10.matched
              if L10_10 then
                L10_10 = this_sigattrlog
                L10_10 = L10_10[9]
                L10_10 = L10_10.utf8p2
                if L10_10 ~= nil then
                  L10_10 = this_sigattrlog
                  L10_10 = L10_10[9]
                  L4_4 = L10_10.utf8p2
                  L7_7 = "reg_winlogon_userinit"
                  L6_6 = "T1547.004"
                  L10_10 = table
                  L10_10 = L10_10.insert
                  L11_11 = L5_5
                  L12_12 = "BM_MT1547.001:persistence"
                  L10_10(L11_11, L12_12)
                end
              else
                L10_10 = this_sigattrlog
                L10_10 = L10_10[10]
                L10_10 = L10_10.matched
                if L10_10 then
                  L10_10 = this_sigattrlog
                  L10_10 = L10_10[10]
                  L10_10 = L10_10.utf8p2
                  if L10_10 ~= nil then
                    L10_10 = this_sigattrlog
                    L10_10 = L10_10[10]
                    L4_4 = L10_10.utf8p2
                    L7_7 = "reg_windows_load"
                  end
                else
                  L10_10 = this_sigattrlog
                  L10_10 = L10_10[11]
                  L10_10 = L10_10.matched
                  if L10_10 then
                    L10_10 = this_sigattrlog
                    L10_10 = L10_10[11]
                    L10_10 = L10_10.utf8p2
                    if L10_10 ~= nil then
                      L10_10 = this_sigattrlog
                      L10_10 = L10_10[11]
                      L4_4 = L10_10.utf8p2
                      L7_7 = "reg_winlogon_notify"
                      L6_6 = "T1547.004"
                    end
                  else
                    L10_10 = this_sigattrlog
                    L10_10 = L10_10[12]
                    L10_10 = L10_10.matched
                    if L10_10 then
                      L10_10 = this_sigattrlog
                      L10_10 = L10_10[12]
                      L10_10 = L10_10.p2
                      if L10_10 ~= nil then
                        L10_10 = normalize_unicode
                        L11_11 = this_sigattrlog
                        L11_11 = L11_11[2]
                        L11_11 = L11_11.p2
                        L10_10 = L10_10(L11_11)
                        L4_4 = L10_10
                        L7_7 = "reg_tasks_actions"
                        L6_6 = "T1053.002"
                        L9_9 = false
                        L10_10 = {}
                        L10_10["svchost.exe"] = true
                        L10_10["schtasks.exe"] = true
                        L8_8 = L10_10
                      end
                    else
                      L10_10 = mp
                      L10_10 = L10_10.CLEAN
                      return L10_10
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
if L4_4 ~= nil then
  L10_10 = #L4_4
elseif L10_10 <= 0 then
  L10_10 = mp
  L10_10 = L10_10.CLEAN
  return L10_10
end
L10_10 = get_filepaths_from_string
L11_11 = string
L11_11 = L11_11.lower
L12_12 = L4_4
L17_17 = L11_11(L12_12)
L10_10 = L10_10(L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L11_11(L12_12))
if L10_10 == nil then
  L11_11 = mp
  L11_11 = L11_11.CLEAN
  return L11_11
end
L11_11 = "BM_M"
L12_12 = L6_6
L11_11 = L11_11 .. L12_12
L12_12 = table
L12_12 = L12_12.insert
L12_12(L13_13, L14_14)
L12_12 = table
L12_12 = L12_12.insert
L12_12(L13_13, L14_14)
L12_12 = table
L12_12 = L12_12.insert
L16_16 = L0_0
L12_12(L13_13, L14_14)
L12_12 = table
L12_12 = L12_12.insert
L16_16 = L2_2
L12_12(L13_13, L14_14)
L12_12 = string
L12_12 = L12_12.lower
L12_12 = L12_12(L13_13)
if L12_12 == "reg.exe" then
  L12_12 = string
  L12_12 = L12_12.find
  L16_16 = true
  L12_12 = L12_12(L13_13, L14_14, L15_15, L16_16)
  if L12_12 then
    L12_12 = table
    L12_12 = L12_12.insert
    L12_12(L13_13, L14_14)
  end
end
if L7_7 ~= nil then
  L12_12 = #L7_7
  if L12_12 > 0 then
    L12_12 = table
    L12_12 = L12_12.insert
    L16_16 = L7_7
    L12_12(L13_13, L14_14)
  end
end
if L9_9 == true then
  L12_12 = string
  L12_12 = L12_12.find
  L16_16 = true
  L12_12 = L12_12(L13_13, L14_14, L15_15, L16_16)
  if L12_12 then
    L12_12 = TrackCommandLineAndTechnique
    L12_12(L13_13, L14_14)
    L12_12 = TrackCommandLineAndTechnique
    L12_12(L13_13, L14_14)
  end
end
L12_12 = false
for L16_16, L17_17 in L13_13(L14_14) do
  if string.sub(L17_17, 1, 1) == "%" then
    L17_17 = mp.ContextualExpandEnvironmentVariables(L17_17)
  end
  if isLolbinFile(L17_17) == false and not MpCommon.QueryPersistContext(L17_17, "RegistryValueDataToFilePersistContext.A") and sysio.IsFileExists(L17_17) then
    MpCommon.AppendPersistContext(L17_17, "RegistryValueDataToFilePersistContext.A", 0)
    L12_12 = appendFilePersistContextFromList(L17_17, L5_5)
  end
end
if L12_12 == false then
  return L13_13
end
if L8_8 ~= nil then
elseif L13_13 == nil then
  L16_16 = "persistence_source"
  L13_13(L14_14, L15_15, L16_16)
  L16_16 = L7_7
  L13_13(L14_14, L15_15, L16_16)
end
if not L13_13 then
  if L13_13 == false then
    L16_16 = 0
    L13_13(L14_14, L15_15, L16_16)
    L16_16 = L13_13
    L14_14(L15_15, L16_16)
  end
end
return L13_13
