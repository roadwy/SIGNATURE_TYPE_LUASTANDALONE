local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7, L8_8, L9_9
L0_0 = Remediation
L0_0 = L0_0.Threat
L1_1 = L0_0.Active
if L1_1 then
  L1_1 = string
  L1_1 = L1_1.match
  L1_1 = L1_1(L2_2, L3_3)
  if L1_1 then
    L1_1 = sysio
    L1_1 = L1_1.RegExpandUserKey
    L1_1 = L1_1(L2_2)
    for L5_5, L6_6 in L2_2(L3_3) do
      L7_7 = "msconfig"
      L8_8 = sysio
      L8_8 = L8_8.RegOpenKey
      L9_9 = L6_6
      L8_8 = L8_8(L9_9)
      if L8_8 ~= nil then
        L9_9 = sysio
        L9_9 = L9_9.GetRegValueAsString
        L9_9 = L9_9(L8_8, L7_7)
        if L9_9 ~= nil and string.match(L9_9, "\\%l%l%l%l%l%l%l%l.exe") then
          sysio.DeleteRegValue(L8_8, L7_7)
          if string.byte(L9_9) == 34 then
            L9_9 = string.sub(L9_9, 2, -2)
          end
          sysio.DeleteFile(L9_9)
        end
      end
    end
  end
end
