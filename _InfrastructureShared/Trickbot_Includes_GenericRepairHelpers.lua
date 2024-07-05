local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17
L0_0 = {}
L1_1 = {L2_2}
L2_2 = "DisablePrivacyMode"
L0_0["hklm\\software\\microsoft\\windows defender\\ux configuration"] = L1_1
L1_1 = {L2_2}
L2_2 = "DisableBlockAtFirstSeen"
L0_0["hklm\\software\\microsoft\\windows defender\\spynet"] = L1_1
L1_1 = {
  L2_2,
  L3_3,
  L4_4,
  L5_5,
  L6_6,
  L7_7,
  L8_8
}
L2_2 = "DisableBehaviorMonitoring"
L3_3 = "DisableIOAVProtection"
L4_4 = "DisableIntrusionPreventionSystem"
L8_8 = "DisableScriptScanning"
L0_0["hklm\\software\\microsoft\\windows defender\\real-time protection"] = L1_1
L1_1 = {
  L2_2,
  L3_3,
  L4_4,
  L5_5
}
L2_2 = "1"
L3_3 = "2"
L4_4 = "4"
L0_0["hklm\\software\\microsoft\\windows defender\\threats\\threatseveritydefaultaction"] = L1_1
L1_1 = {L2_2, L3_3}
L2_2 = "DisableAntiSpyware"
L3_3 = "DisableAntiVirus"
L0_0["hklm\\software\\policies\\microsoft\\windows defender"] = L1_1
L1_1 = {
  L2_2,
  L3_3,
  L4_4,
  L5_5,
  L6_6,
  L7_7
}
L2_2 = "DisableBehaviorMonitoring"
L3_3 = "DisableIOAVProtection"
L4_4 = "DisableIntrusionPreventionSystem"
L0_0["hklm\\software\\policies\\microsoft\\windows defender\\real-time protection"] = L1_1
L1_1 = {L2_2}
L2_2 = "DisableBlockAtFirstSeen"
L0_0["hklm\\software\\policies\\microsoft\\windows defender\\spynet"] = L1_1
L1_1 = {
  L2_2,
  L3_3,
  L4_4,
  L5_5
}
L2_2 = "1"
L3_3 = "2"
L4_4 = "4"
L0_0["hklm\\software\\policies\\microsoft\\windows defender\\threats\\threatseveritydefaultaction"] = L1_1
L1_1 = {
  L2_2,
  L3_3,
  L4_4,
  L5_5,
  L6_6
}
L2_2 = "AllowBehaviorMonitoring"
L3_3 = "AllowIOAVProtection"
L4_4 = "AllowOnAccessProtection"
L0_0["hklm\\software\\policies\\microsoft\\windows defender\\policy manager"] = L1_1
L1_1 = {
  L2_2,
  L3_3,
  L4_4,
  L5_5
}
L2_2 = "1"
L3_3 = "2"
L4_4 = "4"
L0_0["hklm\\software\\policies\\microsoft\\windows defender\\policy manager\\threatseveritydefaultaction"] = L1_1
L1_1 = {}
L2_2 = {L3_3}
L3_3 = "DisableRealtimeMonitoring"
L1_1["hklm\\software\\policies\\microsoft\\windows defender\\real-time protection"] = L2_2
L2_2 = {L3_3}
L3_3 = "AllowRealtimeMonitoring"
L1_1["hklm\\software\\policies\\microsoft\\windows defender\\policy manager"] = L2_2
L2_2 = {}
L2_2.DisableRealtimeMonitoring = 0
L2_2.AllowRealtimeMonitoring = 1
L3_3 = Infrastructure_IsE5
L3_3 = L3_3()
L4_4 = Infrastructure_IsE3
L4_4 = L4_4()
for L8_8, L9_9 in L5_5(L6_6) do
  L10_10 = sysio
  L10_10 = L10_10.RegOpenKey
  L10_10 = L10_10(L11_11)
  if L10_10 then
    L11_11(L12_12, L13_13)
  end
end
for L8_8, L9_9 in L5_5(L6_6) do
  L10_10 = sysio
  L10_10 = L10_10.RegOpenKey
  L10_10 = L10_10(L11_11)
  if L10_10 then
    if L4_4 or L3_3 then
      for L14_14, L15_15 in L11_11(L12_12) do
        L16_16 = sysio
        L16_16 = L16_16.GetRegValueAsDword
        L17_17 = L10_10
        L16_16 = L16_16(L17_17, L15_15)
        L17_17 = L2_2[L15_15]
        if L16_16 and L17_17 and L16_16 ~= L17_17 then
          sysio.SetRegValueAsDword(L10_10, L15_15, L17_17)
        end
      end
    else
      L11_11(L12_12, L13_13)
    end
  end
end
