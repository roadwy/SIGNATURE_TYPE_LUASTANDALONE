if peattributes.isdll and mp.getfilesize() < 338000 then
  pe.set_peattribute("hstr_exhaustive", true)
  pe.reemulate()
  return mp.INFECTED
end
return mp.CLEAN
