local L1_0
function L1_0()
  local L0_1, L1_2, L2_3, L3_4, L4_5, L5_6, L6_7, L7_8, L8_9, L9_10, L10_11, L11_12, L12_13, L13_14, L14_15, L15_16, L16_17, L17_18, L18_19
  L0_1 = {}
  L0_1["mpcmdrun.exe"] = true
  L0_1["msascui.exe"] = true
  L0_1["configsecuritypolicy.exe"] = true
  L0_1["mpuxsrv.exe"] = true
  L0_1["msascuil.exe"] = true
  L0_1["msmpeng.exe"] = true
  L0_1["mssense.exe"] = true
  L0_1["sensecncproxy.exe"] = true
  L0_1["sensesampleuploader.exe"] = true
  L0_1["senseir.exe"] = true
  L1_2 = {}
  L1_2.sense = true
  L1_2.windefend = true
  L2_3 = "HKLM\\SYSTEM\\ControlSet001\\Services\\SharedAccess\\Parameters\\FirewallPolicy\\FirewallRules"
  L3_4 = "HKLM\\SYSTEM\\ControlSet002\\Services\\SharedAccess\\Parameters\\FirewallPolicy\\FirewallRules"
  L4_5 = {L5_6, L6_7}
  for L8_9, L9_10 in L5_6(L6_7) do
    L10_11 = sysio
    L10_11 = L10_11.RegOpenKey
    L11_12 = L9_10
    L10_11 = L10_11(L11_12)
    if L10_11 then
      L11_12 = sysio
      L11_12 = L11_12.RegEnumValues
      L11_12 = L11_12(L12_13)
      for L15_16, L16_17 in L12_13(L13_14) do
        if L16_17 then
          L17_18 = sysio
          L17_18 = L17_18.GetRegValueAsString
          L18_19 = L10_11
          L17_18 = L17_18(L18_19, L16_17)
          if L17_18 then
            L18_19 = string
            L18_19 = L18_19.lower
            L18_19 = L18_19(L17_18)
            L17_18 = L18_19
            L18_19 = string
            L18_19 = L18_19.find
            L18_19 = L18_19(L17_18, "action=block|active=true", 1, true)
            if L18_19 then
              L18_19 = string
              L18_19 = L18_19.match
              L18_19 = L18_19(L17_18, "|app=.*\\([^\\]+%.exe)")
              if L18_19 then
                if L0_1[L18_19] then
                  MpDetection.ReportResource("regkeyvalue", L9_10 .. "\\\\" .. L16_17, 2591, false)
                end
              else
                L18_19 = string.match(L17_18, "|svc=([^|]+)")
                if L18_19 and L1_2[L18_19] then
                  MpDetection.ReportResource("regkeyvalue", L9_10 .. "\\\\" .. L16_17, 2591, false)
                end
              end
            end
          end
        end
      end
    end
  end
end
Infrastructure_ScanWDFirewallBlockRules = L1_0
