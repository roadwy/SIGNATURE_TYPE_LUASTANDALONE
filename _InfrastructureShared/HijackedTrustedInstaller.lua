local L0_0
L0_0 = Remediation
L0_0 = L0_0.Threat
L0_0 = L0_0.Active
if not L0_0 then
  return
end
L0_0 = sysio
L0_0 = L0_0.RegOpenKey
L0_0 = L0_0("hklm\\system\\currentcontrolset\\services\\trustedinstaller")
if L0_0 then
  sysio.SetRegValueAsStringExpand(L0_0, "ImagePath", "%SystemRoot%\\servicing\\TrustedInstaller.exe")
end
