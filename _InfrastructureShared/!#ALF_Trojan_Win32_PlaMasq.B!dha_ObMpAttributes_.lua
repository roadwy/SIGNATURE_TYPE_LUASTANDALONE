if mp.getfilesize() < 10000 then
  return mp.CLEAN
end
if pe.get_versioninfo() ~= nil then
  if pe.get_versioninfo().CompanyName ~= "Adobe Systems Incorporated" then
    return mp.CLEAN
  end
  if pe.get_versioninfo().FileOriginalName == "protect.exe" then
    return mp.CLEAN
  end
  if pe.get_versioninfo().FileOriginalName == "WebInstaller.exe" then
    return mp.CLEAN
  end
  if pe.get_versioninfo().ProductName == "Adobe" then
    return mp.INFECTED
  end
end
return mp.CLEAN
