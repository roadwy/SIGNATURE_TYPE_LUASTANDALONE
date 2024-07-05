if mp.HSTR_WEIGHT == 3 then
  return mp.INFECTED
end
if peattributes.isdll and mp.getfilesize() < 850000 then
  pe.set_peattribute("hstr_exhaustive", true)
  pe.reemulate()
end
if mp.HSTR_WEIGHT == 2 then
  return mp.LOWFI
end
return mp.CLEAN
