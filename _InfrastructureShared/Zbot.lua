local L0_0
L0_0 = Remediation
L0_0 = L0_0.Threat
if L0_0.Active and string.match(L0_0.Name, "PWS:Win32/Zbot.*") then
  for _FORV_4_, _FORV_5_ in pairs(L0_0.Resources) do
    if _FORV_5_.Schema == "hiddenfile" then
      Remediation.BtrDeleteFile(_FORV_5_.Path)
    end
  end
end
