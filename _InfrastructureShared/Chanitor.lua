local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = Remediation
L0_0 = L0_0.Threat
L0_0 = L0_0.Active
if L0_0 then
  L0_0 = string
  L0_0 = L0_0.match
  L1_1 = Remediation
  L1_1 = L1_1.Threat
  L1_1 = L1_1.Name
  L0_0 = L0_0(L1_1, L2_2)
  if L0_0 then
    L0_0 = sysio
    L0_0 = L0_0.RegOpenKey
    L1_1 = "HKLM\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Run"
    L0_0 = L0_0(L1_1)
    if L0_0 then
      L1_1 = sysio
      L1_1 = L1_1.RegEnumValues
      L1_1 = L1_1(L2_2)
      for L5_5, L6_6 in L2_2(L3_3) do
        if L6_6 then
          L7_7 = string
          L7_7 = L7_7.match
          L7_7 = L7_7(L6_6, "^winlogin$")
          if L7_7 then
            L7_7 = sysio
            L7_7 = L7_7.GetRegValueAsString
            L7_7 = L7_7(L0_0, L6_6)
            if L7_7 and string.match(string.lower(L7_7), "\\windows\\winlogin.exe$") then
              L7_7 = string.lower(L7_7)
              sysio.DeleteRegValue(L0_0, L6_6)
              Remediation.BtrDeleteFile(L7_7)
            end
          end
        end
      end
    end
  end
end
