if not peattributes.isdll then
  return mp.CLEAN
end
if not peattributes.hasexports then
  return mp.CLEAN
end
if pe.get_exports() ~= nil and pe.get_exports() == 1 then
  return mp.INFECTED
end
return mp.CLEAN
