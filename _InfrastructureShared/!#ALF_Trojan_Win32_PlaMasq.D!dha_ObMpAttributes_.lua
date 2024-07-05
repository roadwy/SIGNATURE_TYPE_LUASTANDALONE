if pe.get_versioninfo() ~= nil then
  if pe.get_versioninfo().CompanyName ~= "Sun Microsystems, Inc." then
    return mp.CLEAN
  end
  if pe.get_versioninfo().ProductName ~= "Java(TM) Platform SE 6" then
    return mp.CLEAN
  end
  if pe.get_versioninfo().InternalName ~= pe.get_versioninfo().FileDescription then
    return mp.CLEAN
  end
  if pe.get_versioninfo().OriginalFilename:find(".DLL", 1, true) then
    return mp.INFECTED
  end
  if pe.get_versioninfo().OriginalFilename:find(".EXE", 1, true) then
    return mp.INFECTED
  end
  if pe.get_versioninfo().OriginalFilename:find(".DAT", 1, true) then
    return mp.INFECTED
  end
  if pe.get_versioninfo().OriginalFilename:find(".TMP", 1, true) then
    return mp.INFECTED
  end
end
return mp.CLEAN
