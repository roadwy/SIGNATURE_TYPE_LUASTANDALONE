if Remediation.Threat.Active then
  if string.match(Remediation.Threat.Name, "Behavior:Win32/AccessibilityEscalation.I") or string.match(Remediation.Threat.Name, "Behavior:Win32/AccessibilityEscalation.N") then
    Infrastructure_CleanImageFileDebugger("sethc.exe")
  elseif string.match(Remediation.Threat.Name, "Behavior:Win32/AccessibilityEscalation.J") or string.match(Remediation.Threat.Name, "Behavior:Win32/AccessibilityEscalation.O") then
    Infrastructure_CleanImageFileDebugger("utilman.exe")
  elseif string.match(Remediation.Threat.Name, "Behavior:Win32/AccessibilityEscalation.K") or string.match(Remediation.Threat.Name, "Behavior:Win32/AccessibilityEscalation.P") then
    Infrastructure_CleanImageFileDebugger("osk.exe")
  elseif string.match(Remediation.Threat.Name, "Behavior:Win32/AccessibilityEscalation.L") or string.match(Remediation.Threat.Name, "Behavior:Win32/AccessibilityEscalation.Q") then
    Infrastructure_CleanImageFileDebugger("magnify.exe")
  elseif string.match(Remediation.Threat.Name, "Behavior:Win32/AccessibilityEscalation.M") or string.match(Remediation.Threat.Name, "Behavior:Win32/AccessibilityEscalation.R") then
    Infrastructure_CleanImageFileDebugger("narrator.exe")
  elseif string.match(Remediation.Threat.Name, "Behavior:Win32/AccessibilityEscalation.S") then
    Infrastructure_CleanImageFileDebugger("atbroker.exe")
  elseif string.match(Remediation.Threat.Name, "Behavior:Win32/AccessibilityEscalation.AC") then
    Infrastructure_CleanImageFileDebugger("displayswitch.exe")
  end
end
