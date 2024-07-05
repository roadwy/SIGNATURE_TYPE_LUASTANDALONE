if mp.get_mpattribute("pea_isexe") and pe.get_versioninfo() and pe.get_versioninfo().CompanyName == "Microsoft Corporation" and pe.get_versioninfo().FileDescription == "Azure Batch Service Manager" and pe.get_versioninfo().LegalCopyright == "Microsoft Corporation" then
  return mp.INFECTED
end
return mp.CLEAN
