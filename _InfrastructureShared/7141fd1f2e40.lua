if pehdr.NumberOfSections ~= 3 then
  return mp.CLEAN
end
if mp.getfilesize() > 6144 or peattributes.ismsil ~= true then
  return mp.CLEAN
end
if pe.get_versioninfo().FileVersion == nil or pe.get_versioninfo().ProductVersion == nil then
  return mp.CLEAN
end
if pe.get_versioninfo().FileVersion == "0.0.0.0" and pe.get_versioninfo().ProductVersion == "0.0.0.0" then
  return mp.LOWFI
end
return mp.CLEAN
