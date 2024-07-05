local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19, L20_20, L21_21, L22_22, L23_23
function L0_0(A0_24, A1_25)
  local L2_26, L3_27, L4_28, L5_29, L6_30, L7_31, L8_32, L9_33
  L2_26 = sysio
  L2_26 = L2_26.RegOpenKey
  L3_27 = A0_24
  L2_26 = L2_26(L3_27)
  L3_27 = nil
  if L2_26 then
    L4_28 = sysio
    L4_28 = L4_28.RegEnumValues
    L4_28 = L4_28(L5_29)
    for L8_32, L9_33 in L5_29(L6_30) do
      if L9_33 then
        L3_27 = sysio.GetRegValueAsString(L2_26, L9_33)
        if L3_27 then
          L3_27 = string.lower(L3_27)
          if string.find(L3_27, A1_25, 1, true) then
            sysio.DeleteRegValue(L2_26, L9_33)
            return true
          end
        end
      end
    end
  end
  L4_28 = false
  return L4_28
end
CompareRegValueAndRemove = L0_0
L0_0 = Remediation
L0_0 = L0_0.Threat
L0_0 = L0_0.Active
if L0_0 then
  L0_0, L1_1 = nil, nil
  L2_2 = sysio
  L2_2 = L2_2.RegOpenKey
  L2_2 = L2_2(L3_3)
  L0_0 = L2_2
  if L0_0 then
    L2_2 = sysio
    L2_2 = L2_2.GetRegValueAsString
    L2_2 = L2_2(L3_3, L4_4)
    L1_1 = L2_2
    if L1_1 ~= nil then
      L2_2 = sysio
      L2_2 = L2_2.DeleteRegValue
      L2_2(L3_3, L4_4)
    end
  end
  L2_2 = sysio
  L2_2 = L2_2.RegOpenKey
  L2_2 = L2_2(L3_3)
  L0_0 = L2_2
  if L0_0 then
    L2_2 = sysio
    L2_2 = L2_2.GetRegValueAsString
    L2_2 = L2_2(L3_3, L4_4)
    L1_1 = L2_2
    if L1_1 ~= nil then
      L2_2 = sysio
      L2_2 = L2_2.DeleteRegValue
      L2_2(L3_3, L4_4)
    end
  end
  L2_2 = sysio
  L2_2 = L2_2.RegExpandUserKey
  L2_2 = L2_2(L3_3)
  for L6_6, L7_7 in L3_3(L4_4) do
    L8_8 = sysio
    L8_8 = L8_8.RegOpenKey
    L8_8 = L8_8(L9_9)
    L0_0 = L8_8
    if L0_0 then
      L8_8 = sysio
      L8_8 = L8_8.GetRegValueAsString
      L8_8 = L8_8(L9_9, L10_10)
      L1_1 = L8_8
      if L1_1 ~= nil then
        L8_8 = sysio
        L8_8 = L8_8.DeleteRegValue
        L8_8(L9_9, L10_10)
      end
    end
  end
  for L7_7, L8_8 in L4_4(L5_5) do
    L0_0 = L9_9
    if L0_0 then
      L1_1 = L9_9
      if L1_1 ~= nil then
        L9_9(L10_10, L11_11)
      end
    end
  end
  L7_7, L8_8 = nil, nil
  for L12_12, L13_13 in L9_9(L10_10) do
    if L6_6 then
      L8_8 = L14_14
      for L17_17, L18_18 in L14_14(L15_15) do
        if L18_18 then
          L7_7 = L19_19
          if L7_7 then
            L7_7 = L19_19
            if L7_7 ~= nil then
              L22_22 = 1
              L23_23 = true
              if L19_19 then
                L22_22 = 1
                L23_23 = true
                if not L19_19 then
                  L22_22 = 1
                  L23_23 = true
                end
                if L19_19 then
                  if not L19_19 then
                    for L22_22, L23_23 in L19_19(L20_20) do
                      if CompareRegValueAndRemove(L23_23, L7_7) then
                        break
                      end
                    end
                  end
                  if L19_19 then
                    L19_19(L20_20, L21_21)
                  end
                end
                break
              end
            end
          end
        end
      end
    end
  end
end
