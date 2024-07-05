local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6
L0_0 = Remediation
L0_0 = L0_0.Threat
L0_0 = L0_0.Name
if L0_0 == "BrowserModifier:Win32/Neobar" then
  L0_0 = sysio
  L0_0 = L0_0.RegExpandUserKey
  L0_0 = L0_0(L1_1)
  if L0_0 then
    for L4_4, L5_5 in L1_1(L2_2) do
      L6_6 = sysio
      L6_6 = L6_6.RegOpenKey
      L6_6 = L6_6(L5_5)
      if L6_6 ~= nil then
        sysio.DeleteRegValue(L6_6, "UsePolicySearchProvidersOnly")
      end
    end
  end
  L1_1(L2_2)
end
