local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13, L14_14, L15_15
L0_0 = Remediation
L0_0 = L0_0.Threat
L0_0 = L0_0.Active
if L0_0 then
  L0_0 = sysio
  L0_0 = L0_0.RegOpenKey
  L1_1 = "HKLM\\SYSTEM\\CurrentControlSet\\Control\\Lsa"
  L0_0 = L0_0(L1_1)
  if L0_0 then
    L1_1 = sysio
    L1_1 = L1_1.SetRegValueAsDword
    L2_2 = L0_0
    L3_3 = "Limitblankpassworduse"
    L4_4 = 1
    L1_1(L2_2, L3_3, L4_4)
  end
  L1_1, L2_2, L3_3 = nil, nil, nil
  L4_4 = sysio
  L4_4 = L4_4.RegExpandUserKey
  L4_4 = L4_4(L5_5)
  for L8_8, L9_9 in L5_5(L6_6) do
    L2_2 = L10_10
    if L2_2 then
      L1_1 = L10_10
      for L13_13, L14_14 in L10_10(L11_11) do
        if L14_14 then
          L15_15 = sysio
          L15_15 = L15_15.GetRegValueAsString
          L15_15 = L15_15(L2_2, L14_14)
          L3_3 = L15_15
          if L3_3 then
            L15_15 = nil
            L15_15 = string.match(string.lower(L3_3), "appdata\\local\\%a%a%a%a%a%a%a%a%a%a%a%a%a%a%a%.exe$")
            if L15_15 ~= nil then
              sysio.DeleteRegValue(L2_2, L14_14)
              if sysio.IsFileExists(L15_15) then
                MpCommon.ReportLowfi(L15_15, 1512152387)
                sysio.DeleteFile(L15_15)
              end
            end
          end
        end
      end
    end
  end
  L8_8 = "googleupdate"
  L8_8 = L5_5
  L8_8 = L7_7
  L9_9 = "\\(%a%a%a%a%a%a%a%a%a%a%a%a%a%a%a%.exe)$"
  if L6_6 ~= nil then
    L8_8 = "%windir%"
    L8_8 = L7_7
    L8_8 = L7_7
    L9_9 = "\\\\%?\\"
    L8_8 = "\\"
    L9_9 = L6_6
    L9_9 = L5_5
    L8_8 = L5_5.lower
    L8_8 = L8_8(L9_9)
    if L7_7 == L8_8 then
      L8_8 = "googleupdate"
      L7_7(L8_8)
      L8_8 = L5_5
      if L7_7 then
        L8_8 = L5_5
        L9_9 = 889980315
        L7_7(L8_8, L9_9)
        L8_8 = L5_5
        L7_7(L8_8)
      end
    end
  end
end
