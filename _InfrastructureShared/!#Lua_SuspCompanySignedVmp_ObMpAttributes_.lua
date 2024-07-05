if pe.get_versioninfo() ~= nil then
  if pe.get_versioninfo().FileOriginalName == "CONHOST.EXE" then
    return mp.CLEAN
  end
  if pe.get_versioninfo().FileOriginalName == "IEXPLORE.EXE" then
    return mp.CLEAN
  end
  if mp.getfilesize() > 3400000 and mp.getfilesize() < 6400000 then
    mp.set_mpattribute("Lua:RcsAgentSize")
  end
  if pe.get_versioninfo().CompanyName == "Adobe Inc." then
    mp.set_mpattribute("Lua:SuspCompanySignedVmp.Adobe")
    return mp.INFECTED
  end
  if pe.get_versioninfo().CompanyName == "Oracle Corporation" then
    mp.set_mpattribute("Lua:SuspCompanySignedVmp.Oracle")
    return mp.INFECTED
  end
  if pe.get_versioninfo().CompanyName == "Microsoft Corporation" then
    mp.set_mpattribute("Lua:SuspCompanySignedVmp.MsftCorp")
    return mp.INFECTED
  end
  if pe.get_versioninfo().CompanyName == "Zoom Video Communications, Inc." then
    mp.set_mpattribute("Lua:SuspCompanySignedVmp.Zoom")
    return mp.INFECTED
  end
  if pe.get_versioninfo().CompanyName:find("Microsoft", 1, true) and pe.get_versioninfo().CompanyName:find("Operating System", 1, true) then
    mp.set_mpattribute("Lua:SuspCompanySignedVmp.MfstOs")
    return mp.INFECTED
  end
end
return mp.CLEAN
