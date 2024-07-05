local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = Remediation
L0_0 = L0_0.Threat
L0_0 = L0_0.Name
L1_1 = string
L1_1 = L1_1.find
L2_2 = L0_0
L1_1 = L1_1(L2_2, L3_3, L4_4, L5_5)
if L1_1 then
  L1_1 = sysio
  L1_1 = L1_1.RegOpenKey
  L2_2 = "HKLM\\SYSTEM\\Select"
  L1_1 = L1_1(L2_2)
  if L1_1 then
    L2_2 = GetRollingQueueAsHashTable
    L2_2 = L2_2(L3_3)
    if not L2_2 then
      return L3_3
    end
    for L6_6, L7_7 in L3_3(L4_4) do
      if sysio.GetRegValueAsDword(L1_1, L6_6) ~= L7_7 then
        sysio.SetRegValueAsDword(L1_1, L6_6, L7_7)
      end
    end
  end
end
