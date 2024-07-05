local L0_0, L1_1, L2_2, L3_3, L4_4, L5_5, L6_6, L7_7
L0_0 = false
L1_1 = sysio
L1_1 = L1_1.RegOpenKey
L2_2 = "HKLM\\SYSTEM"
L1_1 = L1_1(L2_2)
if L1_1 then
  L2_2 = sysio
  L2_2 = L2_2.RegEnumKeys
  L2_2 = L2_2(L3_3)
  if L2_2 then
    for L6_6, L7_7 in L3_3(L4_4) do
      if string.match(L7_7, "ControlSet%d%d%d") then
        L0_0 = Infrastructure_RepairServiceAtPath("VSS", L7_7) or L0_0
        L0_0 = Infrastructure_RepairServiceAtPath("WinDefend", L7_7) or L0_0
        L0_0 = Infrastructure_RepairServiceAtPath("MsMpSvc", L7_7) or L0_0
        L0_0 = Infrastructure_RepairServiceAtPath("eventlog", L7_7) or L0_0
        L0_0 = Infrastructure_RepairServiceAtPath("WdNisSvc", L7_7) or L0_0
      end
    end
  end
end
if L0_0 then
  L2_2 = Remediation
  L2_2 = L2_2.SetRebootRequired
  L2_2()
end
