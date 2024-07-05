if mp.getfilesize() > 25360 or peattributes.ismsil ~= true then
  return mp.CLEAN
end
if pe.get_versioninfo().FileDescription == nil then
  return mp.CLEAN
end
if pe.get_versioninfo().FileDescription == "vshost64-clr3" or pe.get_versioninfo().FileDescription == "vshost64-clr2" or pe.get_versioninfo().FileDescription == "vshost32-clr3" or pe.get_versioninfo().FileDescription == "vshost32-clr2" or pe.get_versioninfo().FileDescription == ".NET Framework" or pe.get_versioninfo().FileDescription == "XML Protector" or pe.get_versioninfo().FileDescription == "Microsoft" then
  return mp.INFECTED
end
return mp.LOWFI
