if mp.getfilesize() ~= nil and mp.getfilesize() >= 20480000 then
  if not pe.get_versioninfo() then
    return mp.CLEAN
  end
  if not pe.get_versioninfo().CompanyName then
    return mp.CLEAN
  end
  if pe.get_versioninfo().CompanyName == "Microsoft Corporation" then
    return mp.INFECTED
  end
end
return mp.CLEAN
