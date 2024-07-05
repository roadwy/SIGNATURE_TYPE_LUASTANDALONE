if mp.get_mpattribute("pea_ismsil") and mp.get_mpattribute("pea_no_security") then
  if pe.get_versioninfo() == nil or pe.get_versioninfo().InternalName == nil or pe.get_versioninfo().ProductVersion == nil then
    return mp.LOWFI
  end
  if string.find(pe.get_versioninfo().InternalName, "nano.exe", 1, true) and string.find(pe.get_versioninfo().ProductVersion, "0.0.0.0", 1, true) then
    return mp.INFECTED
  end
end
return mp.LOWFI
