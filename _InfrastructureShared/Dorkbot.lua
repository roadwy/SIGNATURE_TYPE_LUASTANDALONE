local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
function L0_0(A0_7)
  return string.match(A0_7, "(.-)([^\\]-([^\\%.]+))$")
end
split_path = L0_0
function L0_0(A0_8)
  local L1_9, L2_10, L3_11
  if A0_8 == nil then
    L1_9 = false
    return L1_9
  end
  L1_9 = string
  L1_9 = L1_9.lower
  L2_10 = A0_8
  L1_9 = L1_9(L2_10)
  L2_10 = string
  L2_10 = L2_10.find
  L3_11 = L1_9
  L2_10 = L2_10(L3_11, "\\temp\\adobe\\reader_sl%.exe$")
  if L2_10 == nil then
    L2_10 = string
    L2_10 = L2_10.find
    L3_11 = L1_9
    L2_10 = L2_10(L3_11, "\\temp\\c731200$")
  elseif L2_10 ~= nil then
    L2_10 = true
    return L2_10
  end
  L2_10 = string
  L2_10 = L2_10.find
  L3_11 = L1_9
  L2_10 = L2_10(L3_11, "\\application data\\screensaverpro%.scr$")
  if L2_10 == nil then
    L2_10 = string
    L2_10 = L2_10.find
    L3_11 = L1_9
    L2_10 = L2_10(L3_11, "\\appdata\\roaming\\screensaverpro%.scr$")
    if L2_10 == nil then
      L2_10 = string
      L2_10 = L2_10.find
      L3_11 = L1_9
      L2_10 = L2_10(L3_11, "\\application data\\c731200$")
      if L2_10 == nil then
        L2_10 = string
        L2_10 = L2_10.find
        L3_11 = L1_9
        L2_10 = L2_10(L3_11, "\\appdata\\roaming\\c731200$")
        if L2_10 == nil then
          L2_10 = string
          L2_10 = L2_10.find
          L3_11 = L1_9
          L2_10 = L2_10(L3_11, "\\application data\\temp%.bin$")
          if L2_10 == nil then
            L2_10 = string
            L2_10 = L2_10.find
            L3_11 = L1_9
            L2_10 = L2_10(L3_11, "\\appdata\\roaming\\temp%.bin$")
            if L2_10 == nil then
              L2_10 = string
              L2_10 = L2_10.find
              L3_11 = L1_9
              L2_10 = L2_10(L3_11, "\\appdata\\roaming\\update\\update%.exe$")
              if L2_10 == nil then
                L2_10 = string
                L2_10 = L2_10.find
                L3_11 = L1_9
                L2_10 = L2_10(L3_11, "\\application data\\update\\update%.exe$")
                if L2_10 == nil then
                  L2_10 = string
                  L2_10 = L2_10.find
                  L3_11 = L1_9
                  L2_10 = L2_10(L3_11, "\\appdata\\roaming\\update\\explorer%.exe$")
                  if L2_10 == nil then
                    L2_10 = string
                    L2_10 = L2_10.find
                    L3_11 = L1_9
                    L2_10 = L2_10(L3_11, "\\application data\\update\\explorer%.exe$")
                    if L2_10 == nil then
                      L2_10 = string
                      L2_10 = L2_10.find
                      L3_11 = L1_9
                      L2_10 = L2_10(L3_11, "\\appdata\\roaming\\windowsupdate\\updater%.exe$")
                      if L2_10 == nil then
                        L2_10 = string
                        L2_10 = L2_10.find
                        L3_11 = L1_9
                        L2_10 = L2_10(L3_11, "\\application data\\windowsupdate\\updater%.exe$")
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
  elseif L2_10 ~= nil then
    L2_10 = true
    return L2_10
  end
  L2_10 = split_path
  L3_11 = A0_8
  L3_11 = L2_10(L3_11)
  if L2_10(L3_11) ~= "exe" and L2_10(L3_11) ~= "scr" then
    return false
  end
  if (string.find(string.lower(L2_10), "\\application data\\identities\\$") ~= nil or string.find(string.lower(L2_10), "\\appdata\\roaming\\identities\\$") ~= nil or string.find(string.lower(L2_10), "\\appdata\\roaming\\microsoft\\windows\\themes\\$") ~= nil) and string.find(L3_11, "%u%l%l%l%l%l%.exe$") ~= nil then
    return true
  end
  return false
end
IsDorkbotPath = L0_0
function L0_0(A0_12)
  local L1_13, L2_14, L3_15, L4_16, L5_17, L6_18, L7_19
  if A0_12 then
    L1_13 = sysio
    L1_13 = L1_13.RegEnumValues
    L1_13 = L1_13(L2_14)
    for L5_17, L6_18 in L2_14(L3_15) do
      if L6_18 then
        L7_19 = sysio
        L7_19 = L7_19.GetRegValueAsString
        L7_19 = L7_19(A0_12, L6_18)
        if L7_19 and IsDorkbotPath(L7_19) == true then
          sysio.DeleteRegValue(A0_12, L6_18)
          if sysio.IsFileExists(L7_19) then
            Remediation.BtrDeleteFile(L7_19)
          end
        end
      end
    end
  end
end
DeleteAutoRunEntries = L0_0
L0_0 = Remediation
L0_0 = L0_0.Threat
L0_0 = L0_0.Active
if L0_0 then
  L0_0 = string
  L0_0 = L0_0.match
  L0_0 = L0_0(L1_1, L2_2)
  if L0_0 then
    L0_0 = sysio
    L0_0 = L0_0.RegExpandUserKey
    L0_0 = L0_0(L1_1)
    for L4_4, L5_5 in L1_1(L2_2) do
      L6_6 = sysio
      L6_6 = L6_6.RegOpenKey
      L6_6 = L6_6(L5_5)
      DeleteAutoRunEntries(L6_6)
    end
  end
end
