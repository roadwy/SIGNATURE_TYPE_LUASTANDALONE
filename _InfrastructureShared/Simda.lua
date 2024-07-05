if Remediation.Threat.Active then
  for _FORV_3_, _FORV_4_ in pairs(Remediation.Threat.Resources) do
    if _FORV_4_.Schema == "file" and not string.match(Remediation.Threat.Name, "^Virus:WinNT/Simda") then
      Remediation.BtrDeleteFile(_FORV_4_.Path)
    end
  end
end
