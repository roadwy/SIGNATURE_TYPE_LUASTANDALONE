local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19
L0_0 = mp
L0_0 = L0_0.get_contextdata
L1_1 = mp
L1_1 = L1_1.CONTEXT_DATA_AMSI_OPERATION_PPID
L0_0 = L0_0(L1_1)
if L0_0 == "" or L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = mp
L1_1 = L1_1.GetProcessCommandLine
L2_2 = L0_0
L1_1 = L1_1(L2_2)
L2_2 = mp
L2_2 = L2_2.GetExecutablesFromCommandLine
L3_3 = L1_1
L2_2 = L2_2(L3_3)
if L2_2 == nil then
  L3_3 = {}
  L2_2 = L3_3
end
L3_3 = mp
L3_3 = L3_3.GetParentProcInfo
L4_4 = L0_0
L3_3 = L3_3(L4_4)
if L3_3 ~= nil then
  L4_4 = mp
  L4_4 = L4_4.GetProcessCommandLine
  L5_5 = L3_3.ppid
  L4_4 = L4_4(L5_5)
  L5_5 = mp
  L5_5 = L5_5.GetExecutablesFromCommandLine
  L6_6 = L4_4
  L5_5 = L5_5(L6_6)
  if L5_5 == nil then
    L6_6 = {}
    L5_5 = L6_6
  end
  L6_6 = table_dedup
  L19_19 = L7_7(L8_8, L9_9)
  L6_6 = L6_6(L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19, L7_7(L8_8, L9_9))
  L2_2 = L6_6
end
L4_4 = {}
L4_4[".bat"] = true
L4_4[".cmd"] = true
L4_4[".ps1"] = true
L5_5 = 4
L6_6 = {
  L7_7,
  L8_8,
  L9_9,
  L10_10,
  L11_11,
  L12_12,
  L13_13,
  L14_14,
  L15_15,
  L16_16
}
L10_10 = ":\\windows\\imecache\\healthscripts\\.+%.ps1$"
L11_11 = "\\vdi_scripts\\defenderatp\\defenderatp.ps1$"
L12_12 = ":\\agent\\enableagent.ps1$"
L13_13 = ":\\programdata\\amazon\\ssm\\.+\\runpowershellscript\\_script.ps1$"
L14_14 = ":\\svcfab\\_app\\.+\\svc\\setupnightwatch.bat$"
for L10_10, L11_11 in L7_7(L8_8) do
  L12_12 = MpCommon
  L12_12 = L12_12.ExpandEnvironmentVariables
  L13_13 = L11_11
  L12_12 = L12_12(L13_13)
  L11_11 = L12_12
  L12_12 = string
  L12_12 = L12_12.len
  L13_13 = L11_11
  L12_12 = L12_12(L13_13)
  if L5_5 < L12_12 then
    L13_13 = L11_11
    L12_12 = L11_11.lower
    L12_12 = L12_12(L13_13)
    L13_13 = string
    L13_13 = L13_13.sub
    L14_14 = L12_12
    L13_13 = L13_13(L14_14, L15_15)
    L14_14 = L4_4[L13_13]
    if L14_14 then
      L14_14 = false
      for L18_18, L19_19 in L15_15(L16_16) do
        if string.find(L12_12, L19_19, 1, false) then
          L14_14 = true
          break
        end
      end
      if not L14_14 then
        if L15_15 then
          L18_18 = ",FilePath:"
          L19_19 = L11_11
          L18_18 = L11_11
          L19_19 = 3600
          L15_15(L16_16, L17_17, L18_18, L19_19, 100, 1)
          L18_18 = {}
          L18_18.ReportingSig = "LUA:SuspTamperingScript"
          L15_15(L16_16, L17_17, L18_18)
        end
      end
    end
  end
end
return L7_7
