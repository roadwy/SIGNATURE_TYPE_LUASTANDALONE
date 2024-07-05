local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19, L20_20, L21_21, L22_22, L23_23, L24_24, L25_25
L0_0 = string
L0_0 = L0_0.find
L0_0 = L0_0(L1_1, L2_2)
if L0_0 == nil then
  return
end
L0_0 = nil
for L4_4, L5_5 in L1_1(L2_2) do
  if L6_6 ~= "file" then
  elseif L6_6 == "process" then
    if L6_6 ~= nil then
      if L6_6 ~= "" then
        L0_0 = L6_6
        L9_9 = 4
        if L6_6 == "\\\\?\\" then
          L0_0 = L6_6
        end
        if L0_0 ~= nil then
          if L6_6 > 1 then
            L25_25 = L7_7()
            for L9_9, L10_10 in L6_6(L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19, L20_20, L21_21, L22_22, L23_23, L24_24, L25_25, L7_7()) do
              L11_11 = L10_10.ServiceName
              L12_12 = string
              L12_12 = L12_12.lower
              L13_13 = sysio
              L13_13 = L13_13.GetCommandLineFromService
              L14_14 = L11_11
              L25_25 = L13_13(L14_14)
              L12_12 = L12_12(L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19, L20_20, L21_21, L22_22, L23_23, L24_24, L25_25, L13_13(L14_14))
              if L12_12 ~= nil then
                L13_13 = string
                L13_13 = L13_13.find
                L14_14 = L12_12
                L15_15 = "^"
                L16_16 = L0_0
                L15_15 = L15_15 .. L16_16
                L13_13 = L13_13(L14_14, L15_15)
                if L13_13 then
                  L13_13 = "HKLM\\System\\CurrentControlSet\\Services\\"
                  L14_14 = L11_11
                  L13_13 = L13_13 .. L14_14
                  L14_14 = sysio
                  L14_14 = L14_14.RegOpenKey
                  L15_15 = L13_13
                  L14_14 = L14_14(L15_15)
                  L15_15 = "ImagePath "
                  L16_16 = sysio
                  L16_16 = L16_16.GetRegValueAsString
                  L17_17 = L14_14
                  L18_18 = L15_15
                  L16_16 = L16_16(L17_17, L18_18)
                  if L16_16 ~= nil then
                    L17_17 = "FailureActionsBackup"
                    L18_18 = sysio
                    L18_18 = L18_18.GetRegValueAsBinary
                    L19_19 = L14_14
                    L18_18 = L18_18(L19_19, L20_20)
                    if L18_18 ~= nil then
                      L19_19 = sysio
                      L19_19 = L19_19.SetRegValueAsBinary
                      L19_19(L20_20, L21_21, L22_22)
                      L19_19 = sysio
                      L19_19 = L19_19.DeleteRegValue
                      L19_19(L20_20, L21_21)
                    end
                    L19_19 = sysio
                    L19_19 = L19_19.GetProcessFromFileName
                    L19_19 = L19_19(L20_20)
                    for L23_23, L24_24 in L20_20(L21_21) do
                      L25_25 = string
                      L25_25 = L25_25.format
                      L25_25 = L25_25("pid:%d,ProcessStart:%u", L24_24.pid, L24_24.starttime)
                      sysio.TerminateProcess(L25_25)
                    end
                    L23_23 = L16_16
                    L20_20(L21_21, L22_22, L23_23)
                    L20_20(L21_21, L22_22)
                    L23_23 = L18_18
                    L20_20(L21_21, L22_22, L23_23)
                    L20_20(L21_21, L22_22)
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
