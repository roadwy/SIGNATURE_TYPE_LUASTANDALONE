local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = Remediation
L0_0 = L0_0.Threat
L1_1 = {L2_2, L3_3}
if L2_2 then
  L5_5 = 1
  L6_6 = true
  if L2_2 then
    for L5_5, L6_6 in L2_2(L3_3) do
      L7_7 = sysio
      L7_7 = L7_7.RegOpenKey
      L7_7 = L7_7(L6_6)
      if L7_7 ~= nil and sysio.GetRegValueAsString(L7_7, "isShortcut") == nil then
        sysio.SetRegValueAsString(L7_7, "isShortcut", "")
      end
    end
  end
end
