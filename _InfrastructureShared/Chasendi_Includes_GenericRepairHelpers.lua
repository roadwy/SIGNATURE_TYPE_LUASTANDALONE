local L0_0, L1_1
L0_0 = sysio
L0_0 = L0_0.RegOpenKey
L1_1 = "HKLM\\SYSTEM\\CurrentControlSet\\services\\Tcpip\\Parameters"
L0_0 = L0_0(L1_1)
if L0_0 then
  L1_1 = sysio
  L1_1 = L1_1.GetRegValueAsString
  L1_1 = L1_1(L0_0, "DhcpNameServer")
  if L1_1 and string.find(L1_1, "82.163.143.", 1, true) then
    Infrastructure_ClearALLDNS()
    Remediation.SetRebootRequired()
  end
end
