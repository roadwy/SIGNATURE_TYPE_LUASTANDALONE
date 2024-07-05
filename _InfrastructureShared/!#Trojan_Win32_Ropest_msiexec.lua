if mp.get_contextdata(mp.CONTEXT_DATA_SCANREASON) == mp.SCANREASON_ONOPEN and mp.get_contextdata(mp.CONTEXT_DATA_FILENAME) == "msiexec.exe" and pe.get_versioninfo().CompanyName ~= "Microsoft Corporation" then
  return mp.INFECTED
end
return mp.CLEAN
