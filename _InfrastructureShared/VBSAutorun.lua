local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15, L16_16, L17_17, L18_18, L19_19, L20_20, L21_21, L22_22, L23_23
L0_0 = sysio
L0_0 = L0_0.RegExpandUserKey
L0_0 = L0_0(L1_1)
for L4_4, L5_5 in L1_1(L2_2) do
  L6_6 = L5_5
  L7_7 = "\\Run"
  L6_6 = L6_6 .. L7_7
  L7_7 = sysio
  L7_7 = L7_7.RegOpenKey
  L8_8 = L6_6
  L7_7 = L7_7(L8_8)
  if L7_7 then
    L8_8 = sysio
    L8_8 = L8_8.RegEnumValues
    L8_8 = L8_8(L9_9)
    for L12_12, L13_13 in L9_9(L10_10) do
      L14_14 = sysio
      L14_14 = L14_14.GetRegValueAsString
      L15_15 = L7_7
      L16_16 = L13_13
      L14_14 = L14_14(L15_15, L16_16)
      if L14_14 ~= nil then
        L15_15 = string
        L15_15 = L15_15.match
        L16_16 = string
        L16_16 = L16_16.lower
        L17_17 = L14_14
        L16_16 = L16_16(L17_17)
        L17_17 = "^wscript%.exe.+temp.+%.vb[es]\"$"
        L15_15 = L15_15(L16_16, L17_17)
        if not L15_15 then
          L15_15 = string
          L15_15 = L15_15.match
          L16_16 = string
          L16_16 = L16_16.lower
          L17_17 = L14_14
          L16_16 = L16_16(L17_17)
          L17_17 = "^wscript%.exe.+data.+%.vb[es]\"$"
          L15_15 = L15_15(L16_16, L17_17)
        elseif L15_15 then
          L15_15 = string
          L15_15 = L15_15.find
          L16_16 = L14_14
          L17_17 = "\"([cC]%:\\.*\\(.+%.[vV][bB][eEsS]))\""
          L18_18 = L15_15(L16_16, L17_17)
          L19_19 = sysio
          L19_19 = L19_19.IsFileExists
          L20_20 = L17_17
          L19_19 = L19_19(L20_20)
          if L19_19 then
            L19_19 = Remediation
            L19_19 = L19_19.BtrDeleteFile
            L20_20 = L17_17
            L19_19(L20_20)
          end
          L19_19 = 0
          L20_20 = L5_5
          L21_21 = "\\Explorer\\Shell Folders"
          L20_20 = L20_20 .. L21_21
          L21_21 = sysio
          L21_21 = L21_21.RegOpenKey
          L22_22 = L20_20
          L21_21 = L21_21(L22_22)
          if L21_21 then
            L22_22 = sysio
            L22_22 = L22_22.GetRegValueAsString
            L23_23 = L21_21
            L22_22 = L22_22(L23_23, "Startup")
            L23_23 = sysio
            L23_23 = L23_23.IsFolderExists
            L23_23 = L23_23(L22_22)
            if L23_23 then
              L23_23 = L22_22
              L23_23 = L23_23 .. "\\" .. L18_18
              if sysio.IsFileExists(L23_23) then
                L19_19 = 1
                Remediation.BtrDeleteFile(L23_23)
              end
            end
          end
          if L19_19 == 1 then
            L22_22 = sysio
            L22_22 = L22_22.DeleteRegValue
            L23_23 = L7_7
            L22_22(L23_23, L13_13)
            L22_22 = "HKLM\\Software\\Microsoft\\Windows\\CurrentVersion\\Run\\\\"
            L23_23 = L13_13
            L22_22 = L22_22 .. L23_23
            L23_23 = Remediation
            L23_23 = L23_23.BtrDeleteRegValue
            L23_23(L22_22)
          end
        end
      end
    end
  end
end
