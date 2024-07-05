local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16
L0_0 = string
L0_0 = L0_0.lower
L1_1 = bm
L1_1 = L1_1.get_imagepath
L16_16 = L1_1()
L0_0 = L0_0(L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L1_1())
L1_1 = GetRollingQueueKeyValue
L2_2 = "SPVersion"
L3_3 = L0_0
L1_1 = L1_1(L2_2, L3_3)
if L1_1 == nil then
  L2_2 = "SPVersion"
  L3_3, L4_4 = nil, nil
  L5_5 = 86400
  L6_6 = {
    L7_7,
    L8_8,
    L9_9
  }
  for L10_10, L11_11 in L7_7(L8_8) do
    L14_14 = L11_11
    L15_15 = "\\WSS"
    if L12_12 then
      L14_14 = "HKLM\\SOFTWARE\\Microsoft\\Shared Tools\\Web Server Extensions\\"
      L15_15 = L11_11
      L14_14 = L14_14 .. L15_15
      L4_4 = L13_13
      L3_3 = L11_11
    end
  end
  if L4_4 then
    if L7_7 then
      L10_10 = "%.([^%.]+)$"
      if L8_8 then
        L10_10 = "HKLM\\SOFTWARE\\Microsoft\\Shared Tools\\Web Server Extensions\\"
        L10_10 = L10_10 .. L11_11 .. L12_12
        L10_10 = sysio
        L10_10 = L10_10.RegEnumValues
        L10_10 = L10_10(L11_11)
        for L14_14, L15_15 in L11_11(L12_12) do
          L16_16 = string
          L16_16 = L16_16.lower
          L16_16 = L16_16(sysio.GetRegValueAsString(L9_9, L15_15))
          if L16_16 and string.find(L16_16, L8_8, 1, true) then
            AppendToRollingQueue(L2_2, L0_0, L16_16, L5_5)
            bm.add_related_string("SPFullVersion", L16_16, bm.RelatedStringBMReport)
          end
        end
      end
      L10_10 = L2_2
      L9_9(L10_10, L11_11, L12_12, L13_13)
      L10_10 = "SPVersion"
      L9_9(L10_10, L11_11, L12_12)
    end
  end
else
  L2_2 = bm
  L2_2 = L2_2.add_related_string
  L3_3 = "SPVersion"
  L4_4 = L1_1
  L5_5 = bm
  L5_5 = L5_5.RelatedStringBMReport
  L2_2(L3_3, L4_4, L5_5)
end
L2_2 = mp
L2_2 = L2_2.INFECTED
return L2_2
