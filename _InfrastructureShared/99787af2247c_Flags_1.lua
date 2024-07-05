if pe.get_versioninfo() == nil or pe.get_versioninfo().InternalName == nil or pe.get_versioninfo().CompanyName == nil then
  return mp.LOWFI
end
if string.find(pe.get_versioninfo().InternalName, "CMClient.exe", 1, true) and string.find(pe.get_versioninfo().InternalName, "netbar's maintenance", 1, true) == nil then
  return mp.INFECTED
end
return mp.LOWFI
