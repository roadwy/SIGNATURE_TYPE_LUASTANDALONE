local L0_0
L0_0 = Remediation
L0_0 = L0_0.Threat
if L0_0 and string.find(L0_0.Name, "Behavior:Win32/WDBlockFirewallRule.P", 1, true) or string.find(L0_0.Name, "Behavior:Win32/WDBlockFirewallRule.S", 1, true) then
  Remediation.SetRebootRequired()
end
