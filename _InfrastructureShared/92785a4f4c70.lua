if peattributes.isdll and mp.getfilesize() < 126976 then
  pe.set_peattribute("hstr_exhaustive", true)
  pe.reemulate()
end
if mp.HSTR_WEIGHT >= 2 then
  return mp.INFECTED
end
return mp.CLEAN
