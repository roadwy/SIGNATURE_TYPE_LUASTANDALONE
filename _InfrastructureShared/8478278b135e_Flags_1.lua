if not peattributes.isexe then
  return mp.CLEAN
end
if mp.HSTR_WEIGHT >= 4 then
  return mp.INFECTED
end
if mp.HSTR_WEIGHT < 4 then
  pe.set_peattribute("hstr_exhaustive", true)
  pe.reemulate()
end
return mp.CLEAN
