local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12
L0_0 = "hmdprecisionpulse"
for L4_4, L5_5 in L1_1(L2_2) do
  L6_6 = L5_5.Path
  L7_7 = pcall
  L8_8 = MpCommon
  L8_8 = L8_8.RollingQueueQueryKeyNamespaced
  L9_9 = "hmdprecisionpulseregkeyvaluescan"
  L10_10 = L0_0
  L11_11 = L6_6
  L8_8 = L7_7(L8_8, L9_9, L10_10, L11_11)
  if L7_7 and L8_8 then
    L9_9 = split
    L11_11 = L6_6
    L10_10 = L6_6.gsub
    L12_12 = "\\\\"
    L10_10 = L10_10(L11_11, L12_12, "#DELIM#")
    L11_11 = "#DELIM#"
    L9_9 = L9_9(L10_10, L11_11)
    if L9_9 ~= nil then
      L10_10 = #L9_9
      if L10_10 == 2 then
        L10_10 = L9_9[1]
        L11_11 = L9_9[2]
        L12_12 = sysio
        L12_12 = L12_12.RegOpenKey
        L12_12 = L12_12(L10_10)
        if L12_12 ~= nil then
          sysio.DeleteRegValue(L12_12, L11_11)
        end
      end
    end
  end
end
