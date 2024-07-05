local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
function L0_0(A0_7)
  local L1_8, L2_9, L3_10, L4_11, L5_12, L6_13, L7_14, L8_15, L9_16, L10_17, L11_18, L12_19, L13_20, L14_21
  if A0_7 then
    L1_8 = sysio
    L1_8 = L1_8.RegEnumValues
    L1_8 = L1_8(L2_9)
    for L5_12, L6_13 in L2_9(L3_10) do
      if L6_13 then
        L7_14 = sysio
        L7_14 = L7_14.GetRegValueAsString
        L8_15 = A0_7
        L9_16 = L6_13
        L7_14 = L7_14(L8_15, L9_16)
        if L7_14 then
          L8_15 = string
          L8_15 = L8_15.match
          L9_16 = L7_14
          L10_17 = "(.+\\)([^\\]+%.exe)\"$"
          L9_16 = L8_15(L9_16, L10_17)
          if L8_15 ~= nil and L9_16 ~= nil then
            L10_17 = string
            L10_17 = L10_17.lower
            L10_17 = L10_17(L11_18)
            L8_15 = L10_17
            L10_17 = L8_15.find
            L14_21 = true
            L10_17 = L10_17(L11_18, L12_19, L13_20, L14_21)
            if L10_17 == nil then
              L10_17 = L8_15.find
              L14_21 = true
              L10_17 = L10_17(L11_18, L12_19, L13_20, L14_21)
              if L10_17 == nil then
                return
              end
            end
            L10_17 = string
            L10_17 = L10_17.len
            L10_17 = L10_17(L11_18)
            if L10_17 == 13 then
              for L14_21 = 1, L10_17 - 4 do
                if string.byte(L9_16, L14_21) < 97 or string.byte(L9_16, L14_21) > 122 then
                  return
                end
              end
            end
            L12_19(L13_20)
            L12_19(L13_20)
            L14_21 = L6_13
            L12_19(L13_20, L14_21)
            if L12_19 then
              L12_19(L13_20)
            end
            L12_19(L13_20)
            L14_21 = "Debugger"
            L12_19(L13_20)
            L14_21 = "Debugger"
            L12_19(L13_20)
            L14_21 = "Debugger"
            L12_19(L13_20)
            L14_21 = "Debugger"
            L12_19(L13_20)
          end
        end
      end
    end
  end
end
DeleteAutoRun = L0_0
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
      DeleteAutoRun(L6_6)
    end
  end
end
