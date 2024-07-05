local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
function L0_0(A0_7)
  local L1_8, L2_9, L3_10, L4_11, L5_12, L6_13, L7_14, L8_15, L9_16, L10_17, L11_18, L12_19
  L1_8 = "HKLM\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Schedule\\TaskCache\\Tasks"
  L2_9 = sysio
  L2_9 = L2_9.RegOpenKey
  L3_10 = L1_8
  L2_9 = L2_9(L3_10)
  L3_10 = false
  if L2_9 then
    L4_11 = sysio
    L4_11 = L4_11.RegEnumKeys
    L4_11 = L4_11(L5_12)
    if L4_11 then
      for L8_15, L9_16 in L5_12(L6_13) do
        L10_17 = sysio
        L10_17 = L10_17.RegOpenKey
        L11_18 = L1_8
        L12_19 = "\\"
        L11_18 = L11_18 .. L12_19 .. L9_16
        L10_17 = L10_17(L11_18)
        if L10_17 then
          L11_18 = sysio
          L11_18 = L11_18.GetRegValueAsString
          L12_19 = L10_17
          L11_18 = L11_18(L12_19, "Path")
          if L11_18 ~= nil then
            L12_19 = sysio
            L12_19 = L12_19.GetRegValueAsBinary
            L12_19 = L12_19(L10_17, "Actions")
            if L12_19 ~= nil then
              L12_19 = string.lower(L12_19)
              if (string.gsub(L12_19, "%z", ""):find("wscript.exe", 1, true) or string.gsub(L12_19, "%z", ""):find("cscript.exe", 1, true)) and string.gsub(L12_19, "%z", ""):find(A0_7, 1, true) then
                Infrastructure_ReportScheduleTaskByTaskId(L9_16, 805306757)
                L3_10 = true
              end
            end
          end
        end
      end
    end
  end
  return L3_10
end
L1_1 = Remediation
L1_1 = L1_1.Threat
L1_1 = L1_1.Name
if L1_1 == "Behavior:Win32/Neoreblamy.SR" then
  L1_1 = nil
  for L5_5, L6_6 in L2_2(L3_3) do
    if (L6_6.Schema == "file" or L6_6.Schema == "process") and L6_6.Path ~= nil and L6_6.Path ~= "" then
      L1_1 = string.lower(L6_6.Path)
      if #L1_1 > 4 and string.sub(L1_1, -4) == ".wsf" then
        if string.sub(L1_1, 1, 4) == "\\\\?\\" then
          L1_1 = string.sub(L1_1, 5)
        end
        L0_0(L1_1)
      end
    end
  end
else
  L1_1 = Remediation
  L1_1 = L1_1.Threat
  L1_1 = L1_1.Name
  if L1_1 == "Trojan:Win32/Neoreblamy" then
    L1_1 = MpCommon
    L1_1 = L1_1.GetPersistContextNoPath
    L1_1 = L1_1(L2_2)
    if L1_1 then
      for L5_5, L6_6 in L2_2(L3_3) do
        L0_0(L6_6)
      end
    end
  end
end
