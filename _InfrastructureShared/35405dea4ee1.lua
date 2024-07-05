if pe.get_versioninfo().OriginalFilename == "riched32.dll" and pe.get_versioninfo().CompanyName == "Microsoft Corporation" then
  return mp.INFECTED
end
return mp.CLEAN
