local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19, L20_20, L21_21
split_path = L0_0
if L0_0 == nil then
  return
end
for L3_3, L4_4 in L0_0(L1_1) do
  L5_5 = L4_4.Schema
  if L5_5 == "file" then
    L5_5 = L4_4.Path
    if L5_5 ~= nil then
      L5_5 = L4_4.Path
      if L5_5 ~= "" then
        L5_5 = string
        L5_5 = L5_5.lower
        L6_6 = L4_4.Path
        L5_5 = L5_5(L6_6)
        if L5_5 ~= nil then
          L6_6 = #L5_5
          if L6_6 > 4 then
            L6_6 = string
            L6_6 = L6_6.sub
            L7_7 = L5_5
            L8_8 = -4
            L6_6 = L6_6(L7_7, L8_8)
            if L6_6 == ".dll" then
              L6_6 = string
              L6_6 = L6_6.sub
              L7_7 = L5_5
              L8_8 = 1
              L9_9 = 4
              L6_6 = L6_6(L7_7, L8_8, L9_9)
              if L6_6 == "\\\\?\\" then
                L6_6 = string
                L6_6 = L6_6.sub
                L7_7 = L5_5
                L8_8 = 5
                L6_6 = L6_6(L7_7, L8_8)
                L5_5 = L6_6
              end
              L6_6 = split_path
              L7_7 = L5_5
              L8_8 = L6_6(L7_7)
              L9_9 = {L10_10, L11_11}
              for L13_13, L14_14 in L10_10(L11_11) do
                L15_15 = sysio
                L15_15 = L15_15.GetProcessFromFileName
                L15_15 = L15_15(L16_16)
                for L19_19, L20_20 in L16_16(L17_17) do
                  L21_21 = string
                  L21_21 = L21_21.format
                  L21_21 = L21_21("pid:%d,ProcessStart:%u", L20_20.pid, L20_20.starttime)
                  if sysio.GetLastResult().Success == true and sysio.IsFileOpenedByProcess(L21_21, L5_5) == true then
                    sysio.StopService("OrionModuleEngine")
                    sysio.TerminateProcess(L21_21)
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
