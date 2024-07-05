local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19, L20_20, L21_21
L1_1 = this_sigattrlog
L1_1 = L1_1[1]
L1_1 = L1_1.matched
if L1_1 then
  L1_1 = this_sigattrlog
  L1_1 = L1_1[1]
  L1_1 = L1_1.utf8p2
  if L1_1 ~= nil then
    L1_1 = this_sigattrlog
    L1_1 = L1_1[1]
    L0_0 = L1_1.utf8p2
  end
end
if L0_0 == nil then
  L1_1 = mp
  L1_1 = L1_1.CLEAN
  return L1_1
end
L1_1 = "c:\\programdata\\%l+%d%d%d%.ps1"
L2_2 = string
L2_2 = L2_2.match
L4_4 = L0_0
L3_3 = L0_0.lower
L3_3 = L3_3(L4_4)
L4_4 = L1_1
L2_2 = L2_2(L3_3, L4_4)
if L2_2 == nil then
  L3_3 = mp
  L3_3 = L3_3.CLEAN
  return L3_3
end
if L2_2 ~= nil then
  L3_3 = sysio
  L3_3 = L3_3.IsFileExists
  L4_4 = L2_2
  L3_3 = L3_3(L4_4)
  if L3_3 then
    L3_3 = mp
    L3_3 = L3_3.ReportLowfi
    L4_4 = L2_2
    L5_5 = 2840082329
    L3_3 = L3_3(L4_4, L5_5)
    L4_4 = bm
    L4_4 = L4_4.add_related_string
    L5_5 = "QuickRapids_LowfiDone"
    L6_6 = tostring
    L7_7 = L3_3
    L6_6 = L6_6(L7_7)
    L7_7 = bm
    L7_7 = L7_7.RelatedStringBMReport
    L4_4(L5_5, L6_6, L7_7)
    L4_4 = bm
    L4_4 = L4_4.add_related_file
    L5_5 = L2_2
    L4_4(L5_5)
    L4_4 = bm
    L4_4 = L4_4.add_related_string
    L5_5 = "QuickRapids_related_file"
    L6_6 = L2_2
    L7_7 = bm
    L7_7 = L7_7.RelatedStringBMReport
    L4_4(L5_5, L6_6, L7_7)
    L4_4 = sysio
    L4_4 = L4_4.GetFileSize
    L5_5 = L2_2
    L4_4 = L4_4(L5_5)
    if L4_4 == nil then
      L5_5 = bm
      L5_5 = L5_5.add_related_string
      L6_6 = "QuickRapids_script_pathsize"
      L7_7 = L2_2
      L8_8 = "_nil"
      L7_7 = L7_7 .. L8_8
      L8_8 = bm
      L8_8 = L8_8.RelatedStringBMReport
      L5_5(L6_6, L7_7, L8_8)
    else
      L5_5 = bm
      L5_5 = L5_5.add_related_string
      L6_6 = "QuickRapids_script_pathsize"
      L7_7 = L2_2
      L8_8 = "_"
      L9_9 = tostring
      L9_9 = L9_9(L10_10)
      L7_7 = L7_7 .. L8_8 .. L9_9
      L8_8 = bm
      L8_8 = L8_8.RelatedStringBMReport
      L5_5(L6_6, L7_7, L8_8)
    end
    if L4_4 > 2048 then
      L5_5 = mp
      L5_5 = L5_5.INFECTED
      return L5_5
    end
    L5_5 = tostring
    L6_6 = sysio
    L6_6 = L6_6.ReadFile
    L7_7 = L2_2
    L8_8 = 0
    L9_9 = L4_4
    L21_21 = L6_6(L7_7, L8_8, L9_9)
    L5_5 = L5_5(L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19, L20_20, L21_21, L6_6(L7_7, L8_8, L9_9))
    if L5_5 == nil then
      L6_6 = mp
      L6_6 = L6_6.INFECTED
      return L6_6
    end
    L6_6 = bm
    L6_6 = L6_6.add_related_string
    L7_7 = "QuickRapids_ps_size"
    L8_8 = tostring
    L9_9 = #L5_5
    L8_8 = L8_8(L9_9)
    L9_9 = bm
    L9_9 = L9_9.RelatedStringBMReport
    L6_6(L7_7, L8_8, L9_9)
    L6_6 = string
    L6_6 = L6_6.match
    L8_8 = L5_5
    L7_7 = L5_5.lower
    L7_7 = L7_7(L8_8)
    L8_8 = "-name%s+(%w+)"
    L6_6 = L6_6(L7_7, L8_8)
    L7_7 = string
    L7_7 = L7_7.gsub
    L8_8 = string
    L8_8 = L8_8.match
    L9_9 = L5_5.lower
    L9_9 = L9_9(L10_10)
    L8_8 = L8_8(L9_9, L10_10)
    L9_9 = ":"
    L7_7 = L7_7(L8_8, L9_9, L10_10)
    if L6_6 == nil or L7_7 == nil then
      L8_8 = mp
      L8_8 = L8_8.CLEAN
      return L8_8
    end
    L8_8 = bm
    L8_8 = L8_8.add_related_string
    L9_9 = "QuickRapids_hkeypath_propname"
    L8_8(L9_9, L10_10, L11_11)
    L8_8 = nil
    L9_9 = sysio
    L9_9 = L9_9.RegExpandUserKey
    L9_9 = L9_9(L10_10)
    if L9_9 then
      for L13_13, L14_14 in L10_10(L11_11) do
        L15_15 = sysio
        L15_15 = L15_15.RegOpenKey
        L16_16 = L14_14
        L15_15 = L15_15(L16_16)
        if L15_15 then
          L16_16 = sysio
          L16_16 = L16_16.RegEnumValues
          L16_16 = L16_16(L17_17)
          for L20_20, L21_21 in L17_17(L18_18) do
            if string.lower(L21_21) == L6_6 then
              L8_8 = string.lower(sysio.GetRegValueAsString(L15_15, L21_21))
            end
          end
        end
      end
    end
    if L8_8 ~= nil then
      L13_13 = "_"
      L14_14 = L6_6
      L15_15 = "_"
      L16_16 = tostring
      L16_16 = L16_16(L17_17)
      L13_13 = bm
      L13_13 = L13_13.RelatedStringBMReport
      L10_10(L11_11, L12_12, L13_13)
      L13_13 = L8_8
      L13_13 = bm
      L13_13 = L13_13.RelatedStringBMReport
      L10_10(L11_11, L12_12, L13_13)
    else
      L13_13 = "_"
      L14_14 = L6_6
      L15_15 = "_nil"
      L13_13 = bm
      L13_13 = L13_13.RelatedStringBMReport
      L10_10(L11_11, L12_12, L13_13)
    end
  end
end
L3_3 = mp
L3_3 = L3_3.INFECTED
return L3_3
