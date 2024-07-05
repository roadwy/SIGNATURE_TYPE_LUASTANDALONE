if not peattributes.isdll then
  return mp.CLEAN
end
if not peattributes.amd64_image then
  return mp.CLEAN
end
if not peattributes.hasexports then
  return mp.CLEAN
end
if mp.HSTR_WEIGHT >= 9 then
  return mp.INFECTED
end
if mp.HSTR_WEIGHT < 9 then
  pe.set_peattribute("hstr_exhaustive", true)
  pe.reemulate()
end
return mp.CLEAN
