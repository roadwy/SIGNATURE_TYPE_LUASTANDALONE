if mp.HSTR_WEIGHT >= 7 and mp.get_mpattribute("pea_ismsil") and mp.get_mpattribute("pea_no_security") and mp.get_mpattribute("pea_isexe") then
  if pe.get_versioninfo() == nil or pe.get_versioninfo().ProductName == nil or pe.get_versioninfo().InternalName == nil or pe.get_versioninfo().CompanyName == nil or pe.get_versioninfo().OriginalFilename == nil then
    return mp.INFECTED
  end
  if string.find(pe.get_versioninfo().InternalName, "PvLogic", 1, true) == nil then
    return mp.INFECTED
  end
end
return mp.CLEAN
