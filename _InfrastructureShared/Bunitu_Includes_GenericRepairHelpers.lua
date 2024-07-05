local L0_0
L0_0 = {
  "rundll32%.exe"
}
function DeleteRegistryEntriesOnValueMatch(A0_1, A1_2)
  local L2_3, L3_4, L4_5, L5_6, L6_7, L7_8
  if A0_1 == nil then
    return
  end
  L2_3 = sysio
  L2_3 = L2_3.RegEnumValues
  L2_3 = L2_3(L3_4)
  if L2_3 == nil then
    return
  end
  for L6_7, L7_8 in L3_4(L4_5) do
    if L7_8 ~= nil then
      L7_8 = string.lower(L7_8)
      for _FORV_11_, _FORV_12_ in pairs(A1_2) do
        if L7_8 == _FORV_12_ then
          sysio.DeleteRegValue(A0_1, L7_8)
        end
      end
    end
  end
end
function ResetWDPreferences()
  local L0_9, L1_10, L2_11
  L0_9 = "HKLM\\SOFTWARE\\Microsoft\\Windows Defender"
  L1_10 = sysio
  L1_10 = L1_10.RegOpenKey
  L2_11 = L0_9
  L1_10 = L1_10(L2_11)
  L2_11 = DeleteRegistryEntriesOnValueMatch
  L2_11(L1_10, _UPVALUE0_)
  L2_11 = L0_9
  L2_11 = L2_11 .. "\\REAL-TIME PROTECTION"
  L1_10 = sysio.RegOpenKey(L2_11)
  DeleteRegistryEntriesOnValueMatch(L1_10, _UPVALUE1_)
  L2_11 = L0_9 .. "\\SPYNET"
  L1_10 = sysio.RegOpenKey(L2_11)
  if L1_10 ~= nil and sysio.GetRegValueAsDword(L1_10, "SpyNetReporting") ~= nil and sysio.GetRegValueAsDword(L1_10, "SpyNetReporting") == 0 then
    DeleteRegistryEntriesOnValueMatch(L1_10, _UPVALUE2_)
  end
end
function FixTamperedWDFirewall()
  local L0_12, L1_13, L2_14, L3_15, L4_16, L5_17, L6_18, L7_19, L8_20
  L0_12 = "HKLM\\SYSTEM\\CurrentControlSet\\Services\\SharedAccess\\Parameters\\FirewallPolicy\\FirewallRules"
  L1_13 = sysio
  L1_13 = L1_13.RegOpenKey
  L2_14 = L0_12
  L1_13 = L1_13(L2_14)
  if L1_13 == nil then
    return
  end
  L2_14 = sysio
  L2_14 = L2_14.RegEnumValues
  L2_14 = L2_14(L3_15)
  if L2_14 == nil then
    return
  end
  for L6_18, L7_19 in L3_15(L4_16) do
    if L7_19 ~= nil then
      L8_20 = sysio
      L8_20 = L8_20.GetRegValueAsString
      L8_20 = L8_20(L1_13, L7_19)
      if L8_20 ~= nil and string.match(string.lower(L8_20), "action=allow|active=true|dir=out|app=[^|]*rundll32%.exe") then
        sysio.DeleteRegValue(L1_13, L7_19)
      end
    end
  end
end
function FixTamperedExclusionRegEntries(A0_21)
  local L1_22, L2_23
  L1_22 = sysio
  L1_22 = L1_22.RegOpenKey
  L2_23 = A0_21
  L2_23 = L2_23 .. "Processes"
  L1_22 = L1_22(L2_23)
  L2_23 = sysio
  L2_23 = L2_23.RegOpenKey
  L2_23 = L2_23(A0_21 .. "Extensions")
  DeleteRegistryEntriesOnValueMatch(L1_22, _UPVALUE0_)
  DeleteRegistryEntriesOnValueMatch(L2_23, _UPVALUE1_)
end
if Remediation.Threat.Active then
  if Infrastructure_CheckDefenderpresence() then
    FixTamperedExclusionRegEntries("HKLM\\SOFTWARE\\Microsoft\\Windows Defender\\Exclusions\\")
    ResetWDPreferences()
  end
  FixTamperedWDFirewall()
end
