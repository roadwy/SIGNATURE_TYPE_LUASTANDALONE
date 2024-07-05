if pe.get_versioninfo() == nil then
  return mp.CLEAN
end
if pe.get_versioninfo().InternalName == "mimikatz" or string.find(pe.get_versioninfo().CompanyName, "gentilkiwi", 1, true) ~= nil or pe.get_versioninfo().ProductName == "mimikatz" or string.find(pe.get_versioninfo().SpecialBuild, "kiwi flavor", 1, true) ~= nil then
  return mp.INFECTED
end
return mp.CLEAN
