local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9, L10_10, L11_11, L12_12, L13_13
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
      L7_7 = L5_5
      L6_6 = L6_6(L7_7)
      if L6_6 then
        L7_7 = sysio
        L7_7 = L7_7.RegEnumValues
        L7_7 = L7_7(L8_8)
        for L11_11, L12_12 in L8_8(L9_9) do
          if L12_12 then
            L13_13 = string
            L13_13 = L13_13.match
            L13_13 = L13_13(L12_12, "^%l%l%l%l%l%l%l%l$")
            if L13_13 then
              L13_13 = sysio
              L13_13 = L13_13.GetRegValueAsString
              L13_13 = L13_13(L6_6, L12_12)
              if L13_13 and (string.match(string.lower(L13_13), "\\appdata\\local\\%a%a%a%a%a%a%a%a%.exe\"$") or string.match(string.lower(L13_13), "\\local settings\\application data\\%a%a%a%a%a%a%a%a%.exe\"$")) then
                L13_13 = string.gsub(L13_13, "\"", "")
                sysio.DeleteRegValue(L6_6, L12_12)
                Remediation.BtrDeleteFile(L13_13)
              end
            end
          end
        end
      end
    end
  end
end
