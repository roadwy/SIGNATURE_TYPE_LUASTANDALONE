local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19, L20_20
L0_0 = false
L1_1 = GetRollingQueue
L1_1 = L1_1(L2_2)
if L1_1 ~= nil then
  if L2_2 == "table" then
    for L5_5 in L2_2(L3_3) do
      L6_6 = tostring
      L7_7 = L1_1[L5_5]
      L7_7 = L7_7.key
      L6_6 = L6_6(L7_7)
      L8_8 = L6_6
      L7_7 = L6_6.match
      L7_7 = L7_7(L8_8, L9_9)
      if L7_7 then
        L8_8 = #L7_7
        if L8_8 > 4 then
          L8_8 = sysio
          L8_8 = L8_8.RegExpandUserKey
          L8_8 = L8_8(L9_9)
          for L12_12, L13_13 in L9_9(L10_10) do
            L14_14 = L13_13
            L15_15 = "\\"
            L16_16 = L7_7
            L14_14 = L14_14 .. L15_15 .. L16_16
            L15_15 = sysio
            L15_15 = L15_15.RegOpenKey
            L16_16 = L14_14
            L15_15 = L15_15(L16_16)
            if L15_15 then
              L16_16 = sysio
              L16_16 = L16_16.GetRegValueAsString
              L17_17 = L15_15
              L18_18 = ""
              L16_16 = L16_16(L17_17, L18_18)
              if L16_16 then
                L17_17 = L13_13
                L18_18 = "\\"
                L19_19 = L16_16
                L17_17 = L17_17 .. L18_18 .. L19_19
                L18_18 = L17_17
                L19_19 = "\\shell\\open\\command"
                L18_18 = L18_18 .. L19_19
                L19_19 = sysio
                L19_19 = L19_19.RegOpenKey
                L20_20 = L18_18
                L19_19 = L19_19(L20_20)
                L20_20 = sysio
                L20_20 = L20_20.GetRegValueAsString
                L20_20 = L20_20(L19_19, "")
                if L20_20 and string.lower(L20_20):match("powershell.+aescrypto.+base64") then
                  L0_0 = true
                end
                if L0_0 then
                  AppendToRollingQueue("PoshevinRelatedRegistries", L17_17, nil, 5000)
                  AppendToRollingQueue("PoshevinRelatedRegistries", L14_14, nil, 5000)
                end
              end
            end
          end
        end
      end
    end
  end
end
if L0_0 then
  L2_2(L3_3, L4_4)
  return L2_2
end
return L2_2
