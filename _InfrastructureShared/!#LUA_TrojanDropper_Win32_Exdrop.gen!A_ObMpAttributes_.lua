if mp.get_contextdata(mp.CONTEXT_DATA_FILENAME) == "notepad.exe" and (pe.get_versioninfo() == nil or pe.get_versioninfo().CompanyName ~= "Microsoft Corporation") then
  return mp.INFECTED
end
return mp.CLEAN
