if mp.get_mpattribute("pea_isexe") and (pe.get_versioninfo().InternalName == "VideoProjectsLauncher" or pe.get_versioninfo().CompanyName == "Microsoft Corporation" or pe.get_versioninfo().OriginalFilename == "VideoProjectsLauncher.exe") then
  return mp.INFECTED
end
return mp.CLEAN
